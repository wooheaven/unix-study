import json
import subprocess

if __name__ == '__main__':
    # 1st : brew update
    cmd = '/home/linuxbrew/.linuxbrew/bin/brew update'
    update_str = subprocess.check_output(args=cmd, universal_newlines=True, shell=True)
    print('# 1st : brew update')
    print(update_str)
    print()

    # 2nd : brew outdated > brew_outdated.txt
    cmd = '/home/linuxbrew/.linuxbrew/bin/brew outdated'
    outdated_str = subprocess.check_output(args=cmd, universal_newlines=True, shell=True)
    outdated_list = outdated_str.split('\n')
    outdated_list = list(filter(None, outdated_list))
    print('# 2nd : brew outdated')
    print(json.dumps(outdated_list, indent=4))
    print()

    # 3rd : brew deps formula
    cmd = '/home/linuxbrew/.linuxbrew/bin/brew deps '
    outdated_deps = list()
    for formula_dict in outdated_list:
        deps_str = subprocess.check_output(args=cmd + str(formula_dict), universal_newlines=True, shell=True)
        if deps_str == '':
            outdated_deps.append({'formula': formula_dict, 'dependOn': 'nothing'})
            continue
        deps_list = deps_str.split('\n')
        deps_list = list(filter(None, deps_list))
        formula_on = False
        for dep in deps_list:
            if str(dep) in outdated_str:
                outdated_deps.append({'formula': formula_dict, 'dependOn': dep})
                formula_on = True
        if not formula_on:
            outdated_deps.append({'formula': formula_dict, 'dependOn': 'other'})
    print('# 3rd : brew deps formula')
    print(json.dumps(outdated_deps, indent=4))
    print()

    # 4th : brew upgrade formula
    cmd = '/home/linuxbrew/.linuxbrew/bin/brew upgrade '
    print('# 4th : brew upgrade formula')
    for formula_dict in [x for x in outdated_deps if x['dependOn'] == 'nothing']:
        print(formula_dict['formula'] + ' is depend on nothing')
        upgrade_str = subprocess.check_output(args=cmd + formula_dict['formula'], universal_newlines=True, shell=True)
        print(upgrade_str)
    for formula_dict in [x for x in outdated_deps if x['dependOn'] == 'other']:
        print(formula_dict['formula'] + ' is depend on other')
        upgrade_str = subprocess.check_output(args=cmd + formula_dict['formula'], universal_newlines=True, shell=True)
        print(upgrade_str)
    for formula_dict in [x for x in outdated_deps if x['dependOn'] != 'nothing' and x['dependOn'] != 'other']:
        print(formula_dict['formula'] + ' is depend on ' + formula_dict['dependOn'])
        upgrade_str = subprocess.check_output(args=cmd + formula_dict['formula'], universal_newlines=True, shell=True)
        print(upgrade_str)
    print()

