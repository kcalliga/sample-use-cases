## Use Case: Verify Tenant Monitoring Capabilities

**Description:** This test case verifies the monitoring capabilities available to a tenant within the OpenShift cluster.

**Success Criteria:**

* **Tenant-specific monitoring:** Tenant A can monitor the applications and VMs deployed within its own tenant.
* **Isolation of metrics:** Tenant A cannot access or view the metrics of resources belonging to Tenant B.

Monitoring is disabled by default between projects/namespaces. A user needs to be a member of a project/namespace to be able to view any of the metrics in the web console or to even access these objects on command line.

To demonstrate this, all you have to do is try to change to another project. You are not allowed to do this. In use-case 1 I demonstrated how nothing else could be viewed as a regular user unless explicity given a role-binding.
