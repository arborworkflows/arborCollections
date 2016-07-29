import json
from pprint import pprint
import fileinput

with open('../traitModelFitting/fitContinuous.json') as data_file:
    data = json.load(data_file)

print("fitContinuous_fromjson<-function("),

for fn_input in data["inputs"]:
    print(fn_input["name"] + ", "),

print("... )")
print("{")

print(data["script"])

print("}")
