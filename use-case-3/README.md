## Use Case: Verify Multi-Tenant User Management

**Description:** This test case verifies the capabilities of managing multiple tenants and users within an OpenShift cluster. It involves creating two tenants with different users and projects, ensuring proper access control and isolation between them.

**Success Criteria:**

* **Tenant creation:** Successfully create Tenant A and Tenant B.
* **User creation:** Create distinct users within each tenant.
* **Project and user assignment (Tenant A):** 
    * Create 3 projects within Tenant A.
    * Assign `adminA` and `devA` users to different projects within Tenant A.
* **Project and user assignment (Tenant B):**
    * Create 3 projects within Tenant B.
    * Assign `adminB` and `devB` users to different projects within Tenant B.
* **Access control:** Verify that users can only access resources within the projects and tenant to which they belong.

  This will work by default.  I believe this was already demonstrated but I can prove this if needed by adding view or edit permissions to respective projects/namespaces of each user.
