#!/usr/bin/bash

function code-quality-check(){
   echo "" && echo "==> CODE QUALITY CHECKS - ansible-lint " && echo ""
   # Checks on syntax and ansible best practises
   # pip install ansible-lint
   ansible-lint *.yml

   # lint checks using yamllint
   # pip install yamllint
   echo "" && echo "==> CODE QUALITY CHECKS - yamllint " && echo ""
   yamllint site.yml
   yamllint roles/*/tasks/*.yml

}

function site(){
    # Run playbook
    echo "" && echo "==> RUN PLAYBOOK " && echo ""
    # ansible-playbook site.yml --ask-become-pas
    
}

code-quality-check
# site