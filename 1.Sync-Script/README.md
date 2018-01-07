# Task 1 - Sync-Script

**Description**
Create a bash script that syncs the contents of folder `“/var/www/page/uploads”` in server 50.0.0.1 to server 50.0.0.2 in folder `“/page/uploads”`.

**Approach**
Create a script that will sync two directories between two or more servers could be focused in two different ways.

1. The first one is the _Origin Server_ will push the new content in the _Destination Servers_, this is the most common in my experience.
2. The second one is the opposite _Destination Servers_ will pull the new content from the _Origin Server_, when the relation is 1-1 between the servers does not matter which option is selected, but if there are more than 2 _Destination Servers_ could be very annoying, because you have to execute the script in each _Destination Server_.

For this reason, I chose the first option because I consider is most practical.

**Technologies**
- SSH
- rsync
- bash
