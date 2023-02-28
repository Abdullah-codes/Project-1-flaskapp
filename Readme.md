## This Project is about deploying Web application with database on to the (AWS)EC2 instance using Jenkins for CI/CD and Bash scripts for automation of the process.


Assume we have Jenkins setup running locally or on EC2(Cloud). 
We have to create a Pipeline and set the credentials in the jenkins credentials manager.

Once pipeline is triggered there is bash script which will run and do the following steps
1. It will ssh into the ec2.
2. Copy the application code(flask app)
3. Copy the next script which is going to run on the ec2 instance
4. Do text manipulation to provide Mysql credentials 
5. Then run the script which will do the installation of requirements on ec2 to run the web application.

Bash script : bash-script-automation.sh this script will perform the following tasks on the ec2
1. Instal all the requirements e.g. Python,mysql
2. Setup database (mariadb)
3. Run the application.





