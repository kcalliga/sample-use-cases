## 4.1 Use Case: (TST-0001) Verify Isolation Between Tenants

**Description:** This test verifies the logical and physical isolation between tenants in the OpenShift cluster.

**Success Criteria:**

* **Tenant A cannot access Tenant B resources:** A tenant "A" cannot view any resources created and managed by tenant "B".
* **Network isolation:** Pods/VMs in Tenant A cannot reach pods/VMs in Tenant B.
* **Storage isolation:** Pods/VMs in Tenant A cannot mount Persistent Volumes (PVs) from Tenant B.
* **Operator and application isolation:** Operators, Helm Charts, and applications deployed by Tenant B are not visible to Tenant A.
* **Separate credentials:** Each tenant has its own credentials to access the cluster.
* **Project quota:** Each tenant can create multiple projects within their assigned quota.

**Verification Steps:**

1. **Login as `usera` in `tenanta`:**
   ```bash
   oc login https://api.clusterfqdn:6443 -u usera

## Verifying Isolation Between Tenants

oc project openshift-virtualization-os-images 

# Do something in the openshift-virtualization-os-images project

oc project tenanta

# Do something in the tenanta project
