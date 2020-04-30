#!/usr/bin/python3

import re


count=0
# with open ('scl40_htc50.mv', 'rt') as myfile:  # Open lorem.txt for reading text
#     #contents = myfile.read()
#     for line in myfile:
#         line= line.rstrip()
#         if re.search('^module.+;', line):
#             count=count+1
#             print(line)

string_temp= ''
moduleList= []
moduleCount=0
#This seperates the each matching from "module" to "endmodule", and appends it to an array of lists
with open('scl40_htc50.mv', 'rt') as infile: 
    copy = False
    for line in infile:
        line= line.rstrip()
        if re.search('^module.+;', line):   #Search for first instance of "module"
            moduleCount+=1
            if(moduleCount==2):
                copy = True
                string_temp=string_temp+line+'\n'
                moduleCount=0
           # print(line)
            continue
        elif re.search('endmodule', line):
            copy = False
            string_temp=string_temp+line+'\n'
            moduleList.append(string_temp)  #Create a list of strings, separating each "module...endmodule" segment
            string_temp=''
            continue
        elif copy:
            string_temp= string_temp+line+'\n'

modelInformation = []   #Create a dictionary to store the model information

for module in moduleList:
    # Extract the module name and then its components
    # NOTE: consider combining following operations into single regex evaluation
    moduleName = re.match(r'module\s+([A-Za-z_][A-Za-z0-9_\$]*)\s+\(.*\)', module).group(1)
    #print(moduleName)
    moduleRegex = r'(?P<lib>[A-Za-z0-9]+)_(?P<func>[A-Za-z0-9]+)_(?P<ext>[A-Za-z0-9]+(?=_[0-9]+))_(?P<drive>[0-9]+(?:P[0-9]+)?)'
    moduleNameComponents = re.match(moduleRegex, moduleName)

    # Extract the inputs
    inputLoc= re.search('input.+;', module)
    inputs= inputLoc.group()[6:len(inputLoc.group())-1].split(',')  #Want to eliminate the "input", and ";" part of the string, then split outputs into a list
    
    # Extract the outputs
    outputLoc= re.search('output.+;', module)
    outputs= outputLoc.group()[7:len(outputLoc.group())-1].split(',') #Want to eliminate the "output", and ";" part of the string, then split outputs into a list
    
    print(module)
    
    # Store the module name, inputs, and outputs all in the same index
    modelInformation.append({\
            'lib': moduleNameComponents.group('lib'),\
            'model': moduleNameComponents.group('func'),\
            'ext': moduleNameComponents.group('ext'),\
            'drive': moduleNameComponents.group('drive'),\
            'input': inputs,\
            'output': outputs})


