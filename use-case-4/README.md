## Use Case: Verify Tenant Resource Quotas

**Description:** This test case verifies the enforcement of resource quotas for tenants within the OpenShift cluster. It ensures that tenants cannot exceed their allocated limits for compute, storage, and potentially other resources.

**Success Criteria:**

* **Quota enforcement:** Verify that a tenant can only create resources (consuming memory, CPU, and storage) until it reaches the defined limits of its assigned quota.
