#!/bin/bash

echo "hi from bash script"

echo $SSH_KEY

echo "first ssh attempt"
ssh -o StrictHostKeyChecking=no -i $SSH_KEY ubuntu@15.206.82.83

echo "copying flask app"
scp -r -i $SSH_KEY ./flask-app ubuntu@15.206.82.83:/home/ubuntu
cp bash-script-automation.sh.template bash-script-automation.sh

sed -i 's/MYSQL_ROOT_PASSWORD/$MYSQL_ROOT_PASS/g' bash-script-automation.sh

sed -i 's/MYSQL_USER_PASSWORD/$MYSQL_USER_PASS/g' bash-script-automation.sh

ssh -o StrictHostKeyChecking=no -i $SSH_KEY ubuntu@15.206.82.83 'bash -s' < ./bash-script-automation.sh

#scp -i $SSH_KEY ./bash-script-automation.sh ubuntu@52.66.164.150:/home/ubuntu