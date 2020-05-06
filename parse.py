#!/usr/bin/python3

import re
import yaml

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
#This seperates the each matching from "module" to "endmodule", and appends it to an array of lists
with open('scl40_htc50.mv', 'rt') as infile: 
    copy = False
    for line in infile:
        line= line.rstrip() 
        if re.search('^module.+;', line):   #Search for match "module"
            copy = True
            string_temp=string_temp+line+'\n'
            continue
        elif re.search('^endmodule', line): #Search for corresponding match "endmodule"
            copy = False
            string_temp=string_temp+line+'\n'
            moduleList.append(string_temp)  #Create a list of strings, separating each "module...endmodule" segment
            string_temp=''
            continue
        elif copy:
            string_temp= string_temp+line+'\n'



modelInformation = []   #Create a dictionary to store the model information
driveList=[]
for module in moduleList:
    # Extract the module name and then its components
    # NOTE: consider combining following operations into single regex evaluation
    moduleName = re.match(r'module\s+([A-Za-z_][A-Za-z0-9_\$]*)\s+\(.*\)', module).group(1)
    moduleRegex = r'(?P<lib>[A-Za-z0-9]+)_(?P<func>[A-Za-z0-9]+)_(?P<ext>[A-Za-z0-9]+(?=_[0-9]+))_(?P<drive>[0-9]+(?:P[0-9]+)?)'
    moduleNameComponents = re.match(moduleRegex, moduleName)

    #Check the module name of the module next in line (this is for duplicate checking)
    if(count<= len(moduleList)-2):
        moduleName2 = re.match(r'module\s+([A-Za-z_][A-Za-z0-9_\$]*)\s+\(.*\)', moduleList[count+1]).group(1)
        moduleNameComponentsNext = re.match(moduleRegex, moduleName2)

    # Extract the inputs
    inputLoc= re.search('input.+;', module)
    inputS= inputLoc.group().replace(" ", "") #Eliminate white spaces
    inputs= inputS[5:len(inputS)-1].split(',')  #Want to eliminate the "input", and ";" part of the string, then split outputs into a list

    # Extract the outputs
    outputLoc= re.search('output.+;', module)
    outputS= outputLoc.group().replace(" ", "") #Eliminate white spaces 
    outputs= outputS[6:len(outputS)-1].split(',') #Want to eliminate the "output", and ";" part of the string, then split outputs into a list

    driveTemp=moduleNameComponents.group('drive')
    #This basically checks the next in line module in the list to see if a match occurs. If so, save the drive strength to a list.
    if((moduleNameComponents.group('func') == moduleNameComponentsNext.group('func')) and (moduleNameComponents.group('ext') == moduleNameComponentsNext.group('ext')) and (count<= len(moduleList)-2)):
        driveList.append(driveTemp)
    #Once the last drive strength is reached, create a new entry in the dictionary.
    else:
        driveList.append(driveTemp)
        # Store the module name, inputs, and outputs, library, extension, and drive strengths all in the same dictionary
        modelInformation.append({\
            'lib': moduleNameComponents.group('lib'),\
            'model': moduleNameComponents.group('func'),\
            'ext': moduleNameComponents.group('ext'),\
            'drive': driveList,\
            'input': inputs,\
            'output': outputs})
        driveList=[]

with open('testYaml.yaml', 'w') as filen:
    documents= yaml.dump(modelInformation,filen)

