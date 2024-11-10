# All-in-One Setup Script

This directory contains an all-in-one script to quickly set up your OpenShift test bench for exploring various security use cases.

**The script currently automates the following:**

* **Default Project Template:** Creates a default project template that enforces network policies between namespaces, ensuring no connectivity by default.
* **Htpasswd Identity Provider:** Adds an htpasswd identity provider to OpenShift's OAuth configuration. This creates the following users:
    * `usera`, `userb`, `userc` (regular users)
    * `admina`, `adminb`, `adminc` (admin users)
    * The password for all users is set to "password".
* **Secrets and Htpasswd File:**  Creates the necessary secrets and htpasswd file associated with the identity provider.
* **Multi-Tenant Structure:** Creates multiple tenants and projects within those tenants:
    * `tenanta/project1`
    * `tenanta/project2`
    * `tenantb/project1`
    * `tenantb/project2`
    * `tenantc/project1`
    * `tenantc/project2`
* **Role Bindings:**  Assigns appropriate roles to users within each tenant:
    * Users receive the `edit` role.
    * Admins receive the `admin` role.
* **Sample Application (httpd):** Deploys an httpd pod with a Persistent Volume Claim (PVC) to serve as a sample application. The pod listens on port 8080 and has a service attached.
* **Network Toolbox Pod:** Deploys a network toolbox pod in each tenant, providing tools like `ping`, `curl`, and `nslookup` for testing network connectivity and configurations.
* **User Quota:** Applies a user quota to limit users to creating only two projects/namespaces (work in progress).

This script simplifies the setup process, allowing you to quickly establish a multi-tenant environment with predefined security configurations and sample applications for testing and demonstration purposes.
