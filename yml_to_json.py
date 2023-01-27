import sys
import yaml
import json

text_input = sys.stdin.read()
yaml_input = yaml.safe_load(text_input)
json_output = json.dumps(yaml_input, indent=2)
print(json_output)
