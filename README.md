# OpenShift Security Use Cases

This repository demonstrates typical security stances in OpenShift, incorporating additional requirements for a comprehensive security overview. This is an ongoing project with continuous development.

## Folder Structure

* **`/auth`**: Contains an htpasswd OAuth configuration to add users with varying privilege levels for different tenants.
* **`/projects`**: Contains YAML definitions for projects/namespaces used in multi-tenant use cases.
* **`/roles`**:  Provides steps to assign admin and regular user roles to users within projects.
* **`/all-in-one`**: Includes a shell script (`createEnvironment.sh`) to automate the creation of all necessary resources for the demos. Use this for quick and easy setup.
* **`/projectbootstraptemplate`**: Contains templates for bootstrapping projects with security configurations.

## Steps to Follow

1. **Configure OAuth:**
   - Apply the htpasswd multi-tenant provider configuration to your OpenShift cluster using the files in the `/auth` folder. This enables user authentication and authorization.

2. **Create Projects:**
   - Create the projects defined in the YAML files located in the `/projects` folder. These projects will represent different tenants in the multi-tenant environment.

3. **Assign User Roles:**
   - Refer to the `/roles` folder for instructions on adding admin and regular user roles to users within the projects. This step establishes access control and defines user permissions.

4. **Apply Project Configuration:**
   - Apply the `project-config.yaml` file from the `/projectbootstraptemplate` directory. This configures basic project settings.
   - Apply the `bootstrap-with-network-isolation.yaml` file. This enforces network isolation between tenants by default, enhancing security.

5. **Deploy Sample Applications:**
   - Create sample application pods (e.g., `httpd` for a basic web server) and `net-toolbox` pods in each tenant namespace as needed. These applications will be used to demonstrate various security features and configurations.

## Ongoing Work

This repository is actively being developed with new use cases and security demonstrations added regularly. Stay tuned for updates and contributions are welcome!
