4.1 Use Case: (TST-0001) Verify the logical and physical isolation between
tenants.

Description:

This test verifies the logical and physical isolation between tenants.

Success Criteria:

● A tenant "A" cannot see any resource created and managed by tenant "B".

● Pods/VMs in Tenant A cannot reach pods in tenant B (Network Isolation)

● Pods/VMs in Tenant A cannot mount PVs from tenant B

● Operators/Helm Charts/Applications deployed by tenant B are not visible by tenant A

● Tenant A and have its own credentials to access the cluster

● Tenant A can create multiple projects with quo
