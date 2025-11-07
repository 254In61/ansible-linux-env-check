#!/usr/bin/bash

install-role(){
   ansible-galaxy install -r roles/requirements.yml 
}


code-quality-check(){
#    python3 -m venv venv
#    source venv/bin/activate
#    pip install ansible-lint
#    pip install yamllint
 
   echo "" && echo "==> CODE QUALITY CHECKS - ansible-lint " && echo ""
   ansible-lint *.yml

   echo "" && echo "==> CODE QUALITY CHECKS - yamllint " && echo ""
   yamllint site.yml

}


site(){
    # Run playbook
    echo "" && echo "==> RUN PLAYBOOK " && echo ""
    ansible-playbook site.yml --become --become-password-file ~/developer/ansible/scripts/hosts-pw.py
}

install-role
code-quality-check
site