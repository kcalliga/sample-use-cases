## Use Case: Verify Tenant Monitoring Capabilities

**Description:** This test case verifies the monitoring capabilities available to a tenant within the OpenShift cluster.

**Success Criteria:**

* **Tenant-specific monitoring:** Tenant A can monitor the applications and VMs deployed within its own tenant.
* **Isolation of metrics:** Tenant A cannot access or view the metrics of resources belonging to Tenant B.
