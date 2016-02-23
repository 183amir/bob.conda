import sys
import yaml


def main():
  path = sys.argv[1]
  package = sys.argv[2]

  with open(path, 'r') as f:
      doc = yaml.load(f)

  if 'test' not in doc:
    doc['test'] = {}

  value = 'nosetests -sv {}'.format(package)
  if 'commands' in doc['test']:
    if value not in doc['test']['commands']:
      doc['test']['commands'].append(value)
  else:
    doc['test']['commands'] = [value]

  if 'requires' in doc['test']:
    if 'nose' not in doc['test']['requires']:
      doc['test']['requires'].append('nose')
  else:
    doc['test']['requires'] = ['nose']

  with open(path, 'w') as f:
    yaml.dump(doc, f, default_flow_style=False)


if __name__ == '__main__':
  main()
