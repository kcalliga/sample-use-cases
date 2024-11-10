## OAuth Configuration

This directory contains the `htpasswd-multitenant` file and an `oauth.yaml` file. These are the raw YAML files for configuring OAuth.

While it's sometimes preferable to configure OAuth through the OpenShift GUI, these files are provided for reference and automation purposes.

**To configure OAuth through the GUI:**

1. Navigate to **Administration** --> **Cluster Settings** --> **Configuration** --> **OAuth**.
2. Click **Add Identity Provider**.
3. Follow the prompts to configure the identity provider using the information from the YAML files.

**Important:** After creating the users, log in once as each user (e.g., `usera`, `userb`, `userc`) to establish the user-identity mappings. This step ensures that OpenShift correctly associates the authenticated users with their corresponding identities.

