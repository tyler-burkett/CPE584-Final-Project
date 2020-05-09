#!/usr/bin/python3

import abc
import re
import csv
import sys
import argparse
import inspect
import yaml
import os



# ---------- Begin class and method definitons ----------
# ----------    (Jump to line 558 for main)    ----------

class DASTNode (metaclass = abc.ABCMeta):
    @abc.abstractmethod
    def evaluate(self, macroContext = {}):
        pass


class DASTCodeSegment (DASTNode):
    def __init__(self, code = ""):
        self._code = code

    def __str__(self):
        return "DASTCodeSegment"
    
    def evaluate(self, macroContext):
        return self._code


class DASTBlock (DASTNode):
    def __init__(self, nodes = []):
        self._nodes = nodes

    def __str__(self):
        blkTree = "DASTBlock"
        for (i, node) in enumerate(self._nodes):
            blkTree += "\n%s" % str(node)
        return blkTree

    def evaluate(self, macroContext):
        codeSegments = []
        for node in self._nodes:
            codeSegments.append(node.evaluate(macroContext))
        return "".join(codeSegments)


class DASTIfdef (DASTNode):
    def __init__(self, branches = [("", DASTBlock())], elseBranch = None):
        self._branches = branches
        self._elseBranch = elseBranch

    def __str__(self):
        strTree = "DASTIfdef"
        for (i, branch) in enumerate(self._branches):
            strTree += "\nb%d: %s\n%s" % (i, branch[0], branch[1])
        if self._elseBranch is not None:
            strTree += "\nelse:\n%s" % self._elseBranch
        return strTree
    
    def evaluate(self, macroContext):
        # Check conditionaly branches in order
        for branch in self._branches:
            if branch[0] in macroContext:
                return branch[1].evaluate(macroContext)
        # Use else branch, if present
        if self._elseBranch is not None:
            return self._elseBranch.evaluate(macroContext)
        return ""


class DASTIfndef (DASTNode):
    def __init__(self, branches = [("", DASTBlock())], elseBranch = None):
        self._branches = branches
        self._elseBranch = elseBranch

    def __str__(self):
        strTree = "DASTIfndef"
        for (i, branch) in enumerate(self._branches):
            strTree += "\nb%d: %s\n%s" % (i, branch[0], branch[1])
        if self._elseBranch is not None:
            strTree += "\nelse:\n%s" % self._elseBranch
        return strTree
    
    def evaluate(self, macroContext):
        # Invert first branch
        if self._branches[0][0] not in macroContext:
            return self._branches[0][1].evaluate(macroContext)
        # Skip first branch
        for branch in self._branches[1:]:
            if branch[0] in macroContext:
                return branch[1].evaluate(macroContext)
        # Use else branch, if present
        if self._elseBranch is not None:
            return self._elseBranch.evaluate(macroContext)
        return self._elseBranch


class DASTDefine (DASTNode):
    def __init__(self, macroName, macroText):
        self._macroName = macroName
        self._macroText = macroText

    def __str__(self):
        return "DASTDefine %s %s" % (self._macroName, self._macroText)
    
    def evaluate(self, macroContext):
        macroContext[self._macroName] = self._macroText
        return ""


class DASTUndef (DASTNode):
    def __init__(self, macroName):
        self._macroName = macroName

    def __str__(self):
        return "DASTUndef \"%s\"" % self._macroName
    
    def evaluate(self, macroContext):
        # Remove macro, regardless of whether it previously existed or not
        macroContext.pop(self._macroName, None)
        return ""


class DASTInclude (DASTNode):
    def __init__(self, fileName):
        self._fileName = fileName

    def __str__(self):
        return "DASTInclude \"%s\"" % self._fileName
    
    def evaluate(self, macroContext):
        # Do nothing
        return ""


class DASTTimescale (DASTNode):
    def __init__(self, period, periodUnit, prec, precUnit):
        self._period = period
        self._preiodUnit = periodUnit
        self._prec = prec
        self._precUnit = precUnit

    def __str__(self):
        return "DASTTimescale (%s%s/%s%s)" % (self._period, self._preiodUnit, self._prec, self._precUnit)
    
    def evaluate(self, macroContext):
        # Do nothing
        return ""


class DASTResetall (DASTNode):
    def __init__(self):
        pass

    def __str__(self):
        return "DASTResetall"
    
    def evaluate(self, macroContext):
        # Undefine all macros
        macroContext.clear()
        return ""


class DASTMacro (DASTNode):
    def __init__(self, macroName):
        self._macroName = macroName

    def __str__(self):
        return "DASTMacro \"%s\"" % self._macroName
    
    def evaluate(self, macroContext):
        if self._macroName not in macroContext:
            # (TODO: Possibly raise exception if an undefined macro is 
            #        referenced. For now, default to substitution with "")
            return ""
        return macroContext[self._macroName]



class TokenStream:
    def __init__(self, tokens = [], i = 0):
        self._tokens = tokens
        self._i = i

    def getNext(self):
        if self._i < len(self._tokens):
            self._i += 1
            return self._tokens[self._i - 1]
        else:
            return None

    def peek(self):
        if self._i < len(self._tokens):
            return self._tokens[self._i]
        else:
            return None

    def remember(self):
        if self._i > 0:
            return self._tokens[self._i - 1]
        else:
            return None



IFDEF_DIRECTIVE_KEYWORD = "ifdef"
IFNDEF_DIRECTIVE_KEYWORD = "ifndef"
ELSIF_DIRECTIVE_KEYWORD = "elsif"
ELSE_DIRECTIVE_KEYWORD = "else"
ENDIF_DIRECTIVE_KEYWORD = "endif"
DEFINE_DIRECTIVE_KEYWORD = "define"
UNDEF_DIRECTIVE_KEYWORD = "undef"
INCLUDE_DIRECTIVE_KEYWORD = "include"
TIMESCALE_DIRECTIVE_KEYWORD = "timescale"
RESETALL_DIRECTIVE_KEYWORD = "resetall"
#DEFAULT_DISCIPLINE_DIRECTIVE_KEYWORD = "default_discipline"
#DEFAULT_TRANSITION_DIRECTIVE_KEYWORD = "default_transition"



def tokenizeByDirective(code = ""):
    tokens = []
    i = 0
    identifierRegex = re.compile(r"\s*(?P<identifier>[A-Za-z_][A-Za-z_0-9]*)\s*")
    fileNameRegex = re.compile(r"\s*\"(?P<fileName>[^\"]*)\"")
    timeScaleRegex = re.compile(r"\s*(?P<period>\d+)\s*(?P<periodUnit>[a-z]+)\s*/\s*(?P<prec>\d+)\s*(?P<precUnit>[a-z]+)")
    defineRegex = re.compile(r"\s*(?P<macroName>[A-Za-z_][A-Za-z_0-9]*)[ \s\t]+(?P<macroText>[^\s])")

    for directiveNameMatch in re.finditer(r"`(?P<directiveName>[A-Za-z_][A-Za-z_0-9]*)\s*", code):
        directiveNameStart = directiveNameMatch.start("directiveName")
        directiveNameEnd = directiveNameMatch.end("directiveName")

        # Tokenize any text between directives as being Verilog code
        if i < directiveNameStart:
            # -1 in order to not include tick-mark '`' in code segment
            tokens.append({"tokenType": "code", "code": code[i:directiveNameStart - 1]})
            #print("<appended code> in [%d, %d)" % (i, directiveNameStart))
            i = directiveNameStart

        #print("%s at [%d, %d)" % (directiveNameMatch.group("directiveName"), directiveNameStart, directiveNameEnd))

        # Tokenize appropriate directive based on directive name
        directiveName = directiveNameMatch.group("directiveName")
        token = {"tokenType": "directive", "directive": directiveName}
        #print("next 20 characters are: \"%s\"" % code[directiveNameEnd:directiveNameEnd+20])
        if directiveName in {IFDEF_DIRECTIVE_KEYWORD, IFNDEF_DIRECTIVE_KEYWORD, ELSIF_DIRECTIVE_KEYWORD, UNDEF_DIRECTIVE_KEYWORD}:
            # Tokens which expect a single argumenat as a regular identifier
            macroNameMatch = identifierRegex.search(code, directiveNameEnd)
            token.update({"macroName": macroNameMatch.group("identifier")})
            i = macroNameMatch.end()
        elif directiveName == DEFINE_DIRECTIVE_KEYWORD:
            # "define" directive
            defineMatch = defineRegex.search(code, directiveNameEnd)
            token.update({"macroName": defineMatch.group("macroName"), "macroText": defineMatch.group("macroText")})
            i = defineMatch.end()
        elif directiveName == INCLUDE_DIRECTIVE_KEYWORD:
            # "include" directive
            includeMatch = fileNameRegex.search(code, directiveNameEnd)
            token.update({"fileName": includeMatch.group("fileName")})
            i = includeMatch.end()
        elif directiveName == TIMESCALE_DIRECTIVE_KEYWORD:
            # "timescale" directive
            timeScaleMatch = timeScaleRegex.search(code, directiveNameEnd)
            token.update({"period": timeScaleMatch.group("period"), "periodUnit": timeScaleMatch.group("periodUnit"), "prec": timeScaleMatch.group("prec"), "precUnit": timeScaleMatch.group("precUnit")})
            i = timeScaleMatch.end()
        else:
            # Assume all others are macros or directives without arguments
            i = directiveNameEnd

        # Append the new directive token to the array of tokens
        tokens.append(token)

    # There may be Verilog code to capture after the last directive
    if i < len(code):
        tokens.append({"tokenType": "code", "code": code[i:]})
        #print("<appended code> in [%d, %d)" % (i, len(code)))

    return tokens



def parse(tokenStream):

    # ----- Define Nested Helper Functions -----

    def parseBlock(tokenStream):
        astNodes = []
        # Loop until an elsif, else, or endif directive is encountered
        # (Use short-circuit evaluation to enusure non-existant "directive" key
        # is not inspected on a "code" token)
        branchDelimiterDirectives = {ELSIF_DIRECTIVE_KEYWORD, ELSE_DIRECTIVE_KEYWORD, ENDIF_DIRECTIVE_KEYWORD}
        while tokenStream.peek()["tokenType"] == "code" or tokenStream.peek()["directive"] not in branchDelimiterDirectives:
            astNodes.append(parse(tokenStream))
        return DASTBlock(astNodes)

    def parseConditional(tokenStream):
        conditionToken = tokenStream.getNext()

        # Parse the required first branch
        branches = [(conditionToken["macroName"], parseBlock(tokenStream))]

        # Parse any optional elsif branches
        while tokenStream.peek()["tokenType"] == "directive" and tokenStream.peek()["directive"] == ELSIF_DIRECTIVE_KEYWORD:
            branches.append((tokenStream.getNext()["macroName"], parseBlock(tokenStream)))

        # Parse the optional else branch, if present
        elseBranch = None
        if tokenStream.peek()["tokenType"] == "directive" and tokenStream.peek()["directive"] == ELSE_DIRECTIVE_KEYWORD:
            tokenStream.getNext()   # Consume "else" token
            elseBranch = parseBlock(tokenStream)

        # The next token must (should) be an endif directive, so just consume
        # it. 
        # (TODO: At this point, ensure that the next token is as expected)
        #print("Final token in branch is: %s" % tokenStream.peek())
        tokenStream.getNext()

        if conditionToken["directive"] == IFDEF_DIRECTIVE_KEYWORD:
            return DASTIfdef(branches, elseBranch)
        return DASTIfndef(branches, elseBranch)

    def parseDefine(tokenStream):
        defineToken = tokenStream.getNext()
        return DASTDefine(defineToken["macroName"], defineToken["macroText"])

    def parseTimescale(tokenStream):
        timescaleToken = tokenStream.getNext()
        return DASTTimescale(timescaleToken["period"], timescaleToken["periodUnit"], timescaleToken["prec"], timescaleToken["precUnit"])


    # ----- Begin `parse()` Operation -----

    peek = tokenStream.peek()

    if peek is None:
        # End of token stream reached
        return None

    if peek["tokenType"] == "code":
        # Parse code segment
        return DASTCodeSegment(tokenStream.getNext()["code"])

    elif peek["tokenType"] == "directive":
        # Parse a directive
        directiveName = peek["directive"]
        if directiveName in {IFDEF_DIRECTIVE_KEYWORD, IFNDEF_DIRECTIVE_KEYWORD}:
            # ifdef or ifndef
            return parseConditional(tokenStream)
        elif directiveName == DEFINE_DIRECTIVE_KEYWORD:
            # define
            return parseDefine(tokenStream)
        elif directiveName == UNDEF_DIRECTIVE_KEYWORD:
            # undef
            return DASTUndef(tokenStream.getNext()["macroName"])
        elif directiveName == INCLUDE_DIRECTIVE_KEYWORD:
            # include
            return DASTInclude(tokenStream.getNext()["fileName"])
        elif directiveName == TIMESCALE_DIRECTIVE_KEYWORD:
            # timescale
            return parseTimescale(tokenStream)
        elif directiveName == RESETALL_DIRECTIVE_KEYWORD:
            # resetall
            tokenStream.getNext()  # Consume token
            return DASTResetall()
        else:
            # Assume all other directives are macro references
            tokenStream.getNext()  # Consume token
            return DASTMacro(directiveName)

    # TODO: handle error of un-identified tokenType



def parseTokens(tokens = []):
    tokenStream = TokenStream(tokens)
    astNodes = []

    node = parse(tokenStream)
    while node is not None:
        astNodes.append(node)
        node = parse(tokenStream)

    return DASTBlock(astNodes)



def stripComments(code = ""):
    # Remove multiline comments
    result = re.sub(r"/\*.*\*/", "", code, flags = re.DOTALL)
    # Remove single-line comments
    return re.sub(r"//.*[\n$]", "", result)



def compileVerilogWithMacros(code = "", macroContext = {}):
    strippedCode = stripComments(code)
    tokens = tokenizeByDirective(strippedCode)
    ast = parseTokens(tokens)
    return ast.evaluate(macroContext)



def extractInputPins(moduleCode):
    # Extract all input definitions
    # (i.e. a list of strings, where each string is a given `input` statement's
    # list of pin names)
    inputDefs = re.findall(r'(?<=input)(?:(?!input|output|;|\n|\)).)*', moduleCode)

    # Iterate through the input definitions, extract the individual pin names
    # from the string, as an array, and then append those pin names to a
    # list of all input pins in the module
    pins = []
    for inputDef in inputDefs:
        pins.extend(re.findall(r'[A-Za-z_][A-Za-z0-9_\$]*', inputDef))

    return pins



def extractOutputPins(moduleCode):
    # Extract all output definitions
    # (i.e. a list of strings, where each string is a given `output` 
    # statement's list of pin names)
    outputDefs = re.findall(r'(?<=output)(?:(?!input|output|;|\n|\)).)*', moduleCode)

    # Iterate through the output definitions, extract the individual pin names
    # from the string, as an array, and then append those pin names to a
    # list of all output pins in the module
    pins = []
    for outputDef in outputDefs:
        pins.extend(re.findall(r'[A-Za-z_][A-Za-z0-9_\$]*', outputDef))

    return pins



def findUsedMacros(code):
    return set(re.findall(r'`(?:ifdef|ifndef|elsif)\s+([A-Za-z_][A-Za-z0-9_\$]+)', code))



def loadArgumentFile(filePath):
    args = {}
    VALID_ARGS = {'modules', 'map', 'regex', 'run_dir', 'macros'}
    try:
        with open(filePath, 'r') as csvFile:
            csvReader = csv.reader(csvFile, delimiter=',')
            # Read in as many arguments as possible, which need not be in any
            # particular order
            for rowNum, row in enumerate(csvReader):
                columnCount - len(row)

                # Skip empty rows
                if columnCount == 0:
                    continue
                
                argType = row[0]
                if argType not in VALID_ARGS:
                    print("Warning: Skipping row %d in argument file with unknown type \'%s\'.\n" % (rowNum, argType))
                    continue

                if columnCount == 1:
                    print("Warning: Skipping row %d in argument file with no value(s) provided.\n" % rowNum)
                    continue

                if argType in args:
                    print("Warning: Row %d in argument file overwrites previous definition for \'%s\'.\n" % (rowNum, argType))

                # The 'macros' argument is a list of values
                if argType == 'macros':
                    macroList = []
                    for column in row[1:columnCount]:
                        macroList.append(column)
                    args['macros'] = macroList

                # All other arguments expect a single value
                if columnCount > 2:
                    print("Warning: Ignoring extra values provided for type \'%s\' in row %d in argument file.\n" % (argType, rowNum))
                    args[argType] = row[0]

            return args

    except IOError:
        sys.stderr.write("Error: failed to open \'%s\' for reading\n" % filePath)
        exit(1)



def readFileToString(filePath):
    try:
        with open(filePath, 'r') as file:
            return file.read()
    except IOError:
        sys.stderr.write("Error: failed to open \'%s\' for reading.\n" % filePath)
        exit(1)



def loadModelFuncMap(filePath):
    modelFuncMap = {}
    try:
        with open(filePath, 'r') as csvFile:
            csvReader = csv.reader(csvFile, delimiter=',')
            for rowNum, row in enumerate(csvReader):
                if len(row) < 2:
                    sys.stderr.write("Error: invalid row %d in csv model-func mapping file.\n" % rowNum)
                    sys.exit(1)

                # The first column is the funcion. All of the following columns
                # define a base name that map to that function. The number of
                # base name columns in a row can be >= 1.
                # That is, skip the first column and map all base name columns
                # to the function in the 1st column.
                func = row[0].strip()
                for i in range(1, len(row)):
                    modelFuncMap[row[i].strip()] = func

            return modelFuncMap

    except IOError:
        sys.stderr.write("Error: failed to open \'%s\' for reading\n" % filePath)
        exit(1)



def compileNamingConvention(regexStr):
    try:
        namingConvention = re.compile(regexStr)
        # Ensure that 'lib', 'func', and 'drive' groups were defined
        groups = namingConvention.groupindex
        if 'lib' not in groups:
            sys.stderr.write("Error: A \'lib\' capturing group must be defined in the naming convention regular expression.\n")
            exit(1)
        elif 'model' not in groups:
            sys.stderr.write("Error: A \'model\' capturing group must be defined in the naming convention regular expression.\n")
            exit(1)
        elif 'base' not in groups:
            sys.stderr.write("Error: A \'base\' capturing group must be defined in the naming convention regular expression.\n")
            exit(1)
        elif 'drive' not in groups:
            sys.stderr.write("Error: A \'drive\' capturing group must be defined in the naming convention regular expression.\n")
            exit(1)

        return namingConvention

    except re.error:
        sys.stderr.write("Error: %s is not a valid regular expression.\n" % regexStr)
        exit(1)



def getCLArgs():
    description = 'Generate a library specification YAML file from Verilog modules that use a specified regex naming convention.'
    epilog = ''
    argParser = argparse.ArgumentParser(description=description, epilog=epilog, formatter_class=argparse.RawTextHelpFormatter)

    argFileHelp = inspect.cleandoc('''
    The command line arguments can be subsituted for the values specified 
    within this CSV arguments file. The file shoudl be organized such that the
    first column in each row specifies a valid argument type, and the second
    column specifies the value for that argument type. If a particular 
    argument type accepts a list of values, then all columns following the 
    first are treated as a list of values. Otherwise, any extra columns in a
    row will be ignored. If an argument is defined twice within this file, 
    then the later definition will overwrite the former. 

    The valid arguments types that can be specified in the first column are:
        'modules'   - The Verilog file containing the module definitions to
                      parse. Accepts a single value. Corresponds to the -v 
                      option.
        'map'       - The CSV model-func mapping file. Accepts a single value.
                      Corresponds to the -f option.
        'regex'     - The regular expression defining he naming convention used
                      by the modules defined in the Verilog modules file. 
                      Accepts a single value. Corresonds to the -r option. 
        'run_dir'   - The run directory. Accepts a single value. Corresponds to
                      the -d option.
        'macros'    - The list of defined macros to use when parsing the 
                      Verilog modules file. Accepts a list of values. 
                      Corresponds to the -m option.

    If an argument is specified in a provided argument file and by the
    corresponding command line option, then the command line option takes
    precedence.
    ''')
    argParser.add_argument('-args', help=argFileHelp)

    runDirHelp = 'Specify the run directory. Defaults to the current directory.'
    argParser.add_argument('-d', metavar='RUN_DIR', dest='runDir', nargs='?', default='.', const='.', help=runDirHelp)

    macrosHelp = inspect.cleandoc('''
    Specify the list of defined macros to use when parsing the Verilog modules.
    If this flag is not present, or if present without any macros listed, then 
    the verilog code is parsed with no macros initially set. Any `define 
    directives encountered will cause the script to continue on with the 
    specified macro as now being defined, and any `undef directives will cause
    the script to continue on with the given macro as no longer being defined, 
    regardless of the macros specified by this option. Thus, the "definition"
    of a macro changes accordingly as the Verilog code is parsed. 
    ''')
    argParser.add_argument('-m', metavar='MACRO', nargs='*', dest='macros', default=[], help=macrosHelp)

    vModsHelp = 'The Verilog file containing the module definitions to parse.'
    argParser.add_argument('modules_file', help=vModsHelp)

    modFuncMapHelp = 'The CSV model-func mapping file.'
    argParser.add_argument('model_func_map', help=modFuncMapHelp)

    modRegexHelp = inspect.cleandoc('''
    The regular expression defining the naming convention used by the modules
    defined in the 'modules_file' Verilog file. The regex syntax defined by the
    the "re" Python module should be followed. This regular expression must 
    include three capturing groups named: "lib", "base", and "drive". These
    capturing groups are used to extract the library name, base name, and
    drive strength, respectively, from each module's name. The regex will
    likely need to be wrapped in double quotes (") in order to avoid the
    special characters that are recognized by the user's shell. 
    For example, in order to run this script on a set of modules that are named
    by the combination of their library name (any sequence of uppercase 
    characters, an underscore, the base name of the cell (any sequence of 
    lowercase characters), an underscore, and the drive strength of that 
    particular cell (any sequence of digits), the following regex could be used
    (?P<lib>[A-Z]+)_(?P<base>[a-z]+)_(?P<drive>[\\d]+)
    Consider another example in which the following regex is used to parse
    modules named such that the first five alphanumeric characters identify the
    base name, the next three alphanumeric characters identify the library, and
    the remaining digit characters identify the drive strength, which may
    include a single upper- or lowercase letter 'p' followed by any number of 
    more digits in order to represent a number with a fractional component
    (?P<base>[A-Aa-z\\d]{5})(?P<lib>[A-Za-z\\d]{3})(?P<drive>[\\d]+(?:[pP][\\d]+)?)
    ''')
    argParser.add_argument('module_regex', help=modRegexHelp)

    outputCompiledHelp = inspect.cleandoc('''
    Write the Verilog code that was compiled based on the macros defined by the
    -m option to the file named 'compiled.<modules_file>.
    ''')
    argParser.add_argument('-c', dest='outputCompiledFlag', action='store_true', help=outputCompiledHelp)

    return vars(argParser.parse_args())



# ---------- Begin Main Script Operation ----------

if __name__ == "__main__":
    # Parse the command-line arguments.
    argsFromCL = getCLArgs()

    # Read in the model-func mapping file
    modelFuncMap = loadModelFuncMap(args['model_func_map'])

    # Read in the Verilog code as is.
    fileStr = readFileToString(args['modules_file'])

    # Report which macros are available vs. which macros will be used.
    allMacros = findUsedMacros(fileStr)
    specifiedMacros = set(args['macros'])
    print("Macros found in code:\t%s\nUsing specified macros:\t%s" % (', '.join(allMacros), ', '.join(specifiedMacros)))

    # Generate the resulting Verilog code given the specified macros.
    # The macros are expected to be in the form of a dictionary.
    macroContext = dict.fromkeys(specifiedMacros, True)
    compiledCode = compileVerilogWithMacros(fileStr, macroContext)

    # Ensure that the run directory either exists and is accesible or attempt
    # to create it
    runDir = args['runDir']
    if not os.path.exists(runDir):
        try:
            os.mkdir(runDir)
        except IOError:
            sys.stderr.write("Error: Failed to open run directory for output.\n")
            sys.exit(1)

    # Write the compiled code to an output file if the associated flag was set
    # at the command-line. 
    if args['outputCompiledFlag']:
        try:
            modulesFileBaseName = os.path.basename(args['modules_file'])
            compiledCodePath = os.path.join(runDir, "compiled.%s" % modulesFileBaseName)
            compiledCodePath = os.path.normpath(compiledCodePath)
            with open(compiledCodePath, 'w') as compiledFile:
                compiledFile.write(compiledCode)
                print('Wrote compiled code to: %s' % compiledCodePath)
        except IOError:
            sys.stderr.write("Error: failed to open \'%s\' for writing\n" % compiledCodePath)
            exit(1)

    # Compile and check the specifiec module naming convention regex
    namingConventionRegex = compileNamingConvention(args['module_regex'])

    # Iterate through every module definition, extract the components of
    # interest (i.e. lib name, model name, drive strength, and input & output
    # pin names), and then update the cell dictionary with this info. 
    # Use regex to get everything between each `module` to `endmodule` pair.
    unknownNamings = set()
    unrecognizedBases = set()
    duplicateDrives = set()
    pinCountClashes = set()
    duplicateDefinitions = set()
    libraries = {}
    for moduleCodeMatch in re.finditer(r'module(?:(?!endmodule).)*endmodule', compiledCode, flags=re.DOTALL):
        # Extract the module name and then its components as defined by the 
        # naming convention
        moduleName = re.search(r'module\s+([A-Za-z_][A-Za-z0-9_\$]*)', moduleCodeMatch[0])[1]
        moduleComponentsMatch = namingConventionRegex.fullmatch(moduleName)

        # Perform some checking on the name of the module
        if moduleComponentsMatch is None:
            print('Warning: Skipping module \'%s\', which does not comply to the naming convention.' % moduleName)
            unknownNamings.add(moduleName)
            continue

        lib = moduleComponentsMatch['lib']
        model = moduleComponentsMatch['model']
        base = moduleComponentsMatch['base']
        drive = moduleComponentsMatch['drive']
        if lib is None:
            print('Warning: Skipping module \'%s\', which has no \'lib\' component in the name.' % moduleName)
            unknownNamings.add(moduleName)
            continue
        if model is None:
            print('Warning: Skipping module \'%s\', which has no \'model\' component in the name.' % moduleName)
            unknownNamings.add(moduleName)
            continue
        if base is None:
            print('Warning: Skipping module \'%s\', which has no \'base\' component in the name.' % moduleName)
            unknownNamings.add(moduleName)
            continue
        if drive is None:
            print('Warning: Skipping module \'%s\', which has no \'drive\' component in the name.' % moduleName)
            unknownNamings.add(moduleName)
            continue

        # Lookup this module's func from the model-func map
        if base not in modelFuncMap:
            print("Warning: Module \'%s\' has an unrecognized base \'%s\'. The \'function\' field for this cell will be left null in the YAML file." % (moduleName, base))
            unrecognizedBases.add(base)
            func = None
        else:
            func = modelFuncMap[base]

        # Extract pins
        inputPins = extractInputPins(moduleCodeMatch[0])
        outputPins = extractOutputPins(moduleCodeMatch[0])

        # Update the entry for this module's cell
        if lib not in libraries:
            # This library has not been encountered yet, so make a new entry
            cell = {'function': func, 'name': model, 'drive': [drive], 'out': outputPins, 'in': inputPins}
            cells = {model: cell}
            libraries[lib] = {'lib': lib, 'cells': cells}

        else:
            cells = libraries[lib]['cells']
            if model not in cells:
                # This library does not have an entry for this module's model,
                # so make a new entry
                cell = {'function': func, 'name': model, 'drive': [drive], 'out': outputPins, 'in': inputPins}
                cells[model] = cell

            else: 
                # This model already has an entry, so update it.
                cell = cells[model]

                if drive in cell['drive']:
                    # Uh, oh, this drive strength has already been defined for
                    # this cell
                    print("Warning: Skipping duplicate definition for module \'%s\'." % moduleName)
                    duplicateDrives.add(moduleName)
                    continue

                if inputPins != cell['in'] or outputPins != cell['out']:
                    # Uh, oh, this drive has conflicting pin definitions with
                    # previously defined drives for this model/cell
                    print("Warning: Skipping module \'%s\', which defines pins that conflict with the pins defined by other drives for this same model." % moduleName)
                    pinCountClashes.add(model)
                    continue

                # All tests passed, so add the new drive strength to the entry
                # for this model/cell
                cell['drive'].append(drive)

    # For each library, dump the results into a yaml file
    for libName, libDict in libraries.items():
        # Re-represent the library dict as expected 
        ymlLibDict = {'lib': libName, 'cells': list(libDict['cells'].values())}

        # Attempt to write the output yaml file
        try:
            libYamlFilePath = os.path.join(runDir, libName + '.yml')
            libYamlFilePath = os.path.normpath(libYamlFilePath)
            with open(libYamlFilePath, 'w') as ymlFile:
                yaml.safe_dump(ymlLibDict, ymlFile)
                print('Wrote to: %s' % libYamlFilePath)
        except IOError:
            sys.stderr.write("Error: failed to open \'%s\' for writing\n" % libYamlFilePath)
            exit(1)

    print('Complete.')

    exit(0)


