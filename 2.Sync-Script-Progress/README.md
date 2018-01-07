# Task 2 - Sync-Script Show Progress

**Description**
Using the same script as in question 1, modify it to show a count of the files to be synced into the console, and a progress indicator of the files as they are being copied.

**Approach**
Using the same script we could re-utilize the features of `rsync` to show the progress of the sync, just adding the flags `-P` to show progress and `-v` to show a summary, now we could track the progress in the script.

**Technologies**
- SSH
- rsync
- bash
