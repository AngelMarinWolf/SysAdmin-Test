# Task 6 - NGINX Redirecting Secure Protocol

### **Description**
Write a `Nginx Vhost` configuration file that responds to the domain hello.com that blocks all Secure traffic and redirects it to a error page but allow traffic through port 80.

### **Approach**
The file `nginx.conf` contains my basic pattern for a _Nginx Server Block_ in addition was added another block that will catch and redirect the request made through the secure Protocol **HTTPS**, and a _location block_ that response the 404 errors with a custom page.  

### **Technologies**
- NGINX
