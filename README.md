This list of use-cases will be used to prove the typical security stance of Openshift with some other requirements thrown in.  This will be ongoing work.

I will describe the folder layout a little bit

/auth - this contains an htpasswd oauth configuration to add users for different different with varying levels of privileges

/projects - this directory contains the projects/namespaces that will be used in multi-tenant use-cases

/roles - describes steps to add admin and regular user role to users

Steps to follow

1.  Create oauth configuration to add htpasswd multi-tenant provider to cluster.  These are the files in auth folder.
2.  Create the projects as defined in the YAMLS in /projects folder.
3.  Add roles to users (see /roles)
4.  
