# Task 3 - Post Deploy S3 Sync

### **Description**
Create a script that is executed as a post deployment hook that copies the content of a folder to a s3 bucket using _AWS CLI_.

### **Approach**
Sometimes after a new deploy we usually want to sync the new content into _S3_ for some different reasons, for example update the new static content as images, documents, or media files and then distribute them using a content delivery network as _Cloud Front_ or just to have a backup of the files.

In order to do this in an automated way we could create an script that will execute a command using AWS CLI, before to use AWS we must to configure it, to do this we could use 3 different ways:

- Credentials Stored in Environment Variables
- Credentials Stored in User Credentials files
- Credentials Stored in the same Script

in this case we will use the second option, because it allows us storage different Credentials for different purposes and identify with different profiles, in this directory you can find the folder `aws` which has to be located in the _Home directory_ of the users with a dot before the name, this only in the Linux Systems.

Then you can find the file `sync-s3.sh` with the command of _AWS-CLI_ specific to sync the content of a determinate path into a _S3 Bucket_, and it has a section of the command commented, this section is used to delete the files in the _S3 Bucket_ if it was deleted on the _Server folder_. Use the `sync` option for the transference allows us only sent the files that are not in the _Bucket_ or the Files that was modified. 


**Technologies**
- AWS CLI
- AWS S3
- Bash
