# Task 9 - CI/CD Basic Sample

### **Description**
Using BitBucket pipelines or any CI / CD tool, create a simple project composed of two files (index.html and test.xxx) and do the following:

1. Configure it to be deployed every time a commit is made to the master branch (use any server, AWS, docker, etc)
2. After it has been deployed, execute the test file
3. The test file should randomly return a boolean, if it’s true the deployment should go as expected if it’s false it should rollback the changes and inform the user

### **Approach**
This directory contains two configurations for tools used for CI/CD, CircleCI, and Pipelines, this is a very basic configuration to deploy and is made to be used in a common Linux server, the integration with others tools is very big.

Usually the work-flow for CI/CD is first built the application with this tools and execute the test in the temporary application, only if it passes all the test the application could be deployed on the servers or platforms, and also after deployments is very useful do a post-deployment test, if these tests fail we have to do a rollback intermediately in order to avoid interferences with the users.

CircleCI, BitBucket, and Jenkins have a very similar way make an auto-deployment process using files wrote in YML markup language.
For this exercise the potential of these tools cannot be observed due is most easily make the deployment using a bash script even for the rollback.

One of the most important features of these tools is the integration with many services for communicating the status of the process, if something fails, the platform automatically will inform through many channels like email, slack, basecamp, jira, etc.


### **Technologies**
- YML
- Bash
- CircleCI
- BitBucket Pipelines
