4.8 Use Case: (TST-0008) Distributed workloads in a multi-cluster
environment

Description:

This test verify the ability to distribute workloads in a multi-cluster environment within a tenant.

Success Criteria:

A tenant A is created in two kubernetes clusters

A workload is deployed in the tenant. The workload is placed in a kubernetes cluster dynamically.

This means that the developer is not selecting the cluster itself but the tenant that is expanded
across clusters.
