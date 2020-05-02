#!/usr/bin/python3

import abc
import re



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
        if self._i < len(tokens):
            self._i += 1
            return tokens[self._i - 1]
        else:
            return None

    def peek(self):
        if self._i < len(tokens):
            return tokens[self._i]
        else:
            return None

    def remember(self):
        if self._i > 0:
            return tokens[self._i - 1]
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
    #defineRegex = re.compile(r"\s*(?P<macroName>[A-Za-z_][A-Za-z_0-9]*)[ \s\t]*(?P<macroText>[^\n]+(?<!\s))$")
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

        print("%s at [%d, %d)" % (directiveNameMatch.group("directiveName"), directiveNameStart, directiveNameEnd))

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
        print("Final token in branch is: %s" % tokenStream.peek())
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



def parseAll(tokens = []):
    tokenStream = TokenStream(tokens)
    astNodes = []

    node = parse(tokenStream)
    while node is not None:
        astNodes.append(node)
        node = parse(tokenStream)

    return astNodes



def stripComments(code = ""):
    # Remove multiline comments
    result = re.sub(r"/\*.*\*/", "", code, flags = re.DOTALL)
    # Remove single-line comments
    return re.sub(r"//.*[\n$]", "", result)



# ---------- Testing ----------

#text = stripComments(open('test_scl40_htc50.mv').read())
text = stripComments(open('scs8hd/scs8hd_dfbbn_1.v').read())
tokens = tokenizeByDirective(text)
nodes = parseAll(tokens)
ast = DASTBlock(nodes)
print(ast)

# Find all macros used in conditional directives
ifdefvars = set(re.findall(r'`(?:ifdef|ifndef|elsif)\s+([A-Za-z_][A-Za-z0-9_\$]+)', text))
print(ifdefvars)


#print(ast.evaluate({"BIAS_PINS": True}))

def test(ast, macroContext):
    with open("testOutput.v", "w") as outputFile:
        outputFile.write(ast.evaluate(macroContext))


