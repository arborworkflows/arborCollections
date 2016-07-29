from __future__ import print_function
import json
from pprint import pprint
import os
import sys

if len(sys.argv) == 1:
    dir='.'
else:
    dir = sys.argv[1]

fileList = os.listdir(dir)
for file in fileList:
    fullFile = os.path.join(dir, file)  # Get the full path to the file.
    if fullFile.endswith(".json"):
        with open(fullFile) as data_file:
            data = json.load(data_file)

        print(file, end='')
        print('<-function(', end='')

        for i, fn_input in enumerate(data["inputs"]):
            print(fn_input["name"], end='')
            if i != len(data["inputs"])-1:
                print(',', end='')

        print(")")
        print("{")

        print(data["script"])

        print('return(list(', end='')

        for i, fn_output in enumerate(data["outputs"]):
            print(fn_output["name"] + '=' + fn_output["name"], end='')
            if i != len(data["outputs"])-1:
                print(',', end='')

        print('))')

        print("}")
