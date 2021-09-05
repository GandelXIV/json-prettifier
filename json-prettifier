#!/usr/bin/python3
import sys

data = ""
result = ""
spacing = 0
args = sys.argv

args.pop(0)
for arg in args:
    data += arg

def nl():
    global result
    result += '\n' + spacing * '\t'

    
for char in data:
    if char == '{' or char == '[':
        nl()
        result += char
        spacing += 1
        nl()
    elif char == '}' or char == ']':
        spacing -= 1
        nl()
        result += char
        nl()
    elif char == ',':
        result += ','
        nl()
    elif char == ':':
        result += ': '
    else:
        result += char

print(result)
