# Task 5 - EC2 Instance Creation - AWS-CLI

### **Description**
Using AWS ClI, write a command that creates an instance from a snapshot and after it has been created it creates a folder called `/test/` and and initializes a _GitHub_ repository in said folder.

### **Approach**
At the same way that the previous script for _S3_ using _AWS-CLI_ we have to configure first the credentials, with a user that must to have the necessary permissions to create instances in EC2. The configuration is the same that was explained in the previous _S3_ task using _credentials in the User home directory_.

The creation of an _EC2 Instance_ using the _AWS-CLI_ has a lot of configurations available to use. The options used to launch a _EC2 Instance_ depends of the use for this instance, at the same way that we use the graphical interface in the _AWS Console_.

In the script `create-instance.sh` you could see a basic command to create a basic instance, specifying this parameters:

- Type of Instance
- Image ID for the System Platform
- SSH Key (have to be created before).
- Monitoring status (on/off)
- Security Groups
- Subnet ID
- Path of a JSON file with the map to modify the storage.
- Path of a bash file with the user-data

At the end, in order to create the folder and init a _GIT_ repository, we could send bash instructions in the same command that will be executed when the _EC2 Instance_ start. This instructions are sent using the _user-data_ option, we could send a file of a plain text with instructions, in this case this file is `user-data.sh` located in this directory.

### **Technologies**
- AWS CLI
- Amazon EC2
- Bash
- JSON
