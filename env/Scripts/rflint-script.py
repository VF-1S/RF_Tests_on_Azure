#!c:\projects\robot_framework_demo\webdemo\env\scripts\python.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'robotframework-lint==1.1','console_scripts','rflint'
__requires__ = 'robotframework-lint==1.1'
import re
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(
        load_entry_point('robotframework-lint==1.1', 'console_scripts', 'rflint')()
    )
