# Task 7 - NGINX Blocking Path

### **Description**
Write a Nginx Server block that rejects any traffics to goes to `“/denied”` like http://mydomain.com/denied/file.html but allows
access to the following file http://mydomain.com/denied/free.html

### **Approach**
For this task is really simple to block, exclude or allow paths, using the **location blocks** in _Nginx_, we could specify a path using **Regular Expressions**, in this way we could create a pattern that only includes the paths that match and create specific behaviors for each location.

By the way, we could create many similar _location blocks_ due to the main behavior to match path, is the best match no with the first match as is common in the Network behaviors.

### **Technologies**
- NGINX
