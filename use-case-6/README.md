4.6 Use Case: (TST-0006) Extend a project to Multiple Clusters

Description:

This test verify the capacity to create a project in multiple kubernetes clusters at once to facilitate
the management of multiple clusters

Success Criteria:

● Having 2 clusters, a tenant created in cluster A is replicated/created in cluster B with
all the users and projects.

● Adding a user in a tenant present in two clusters, the user will have the same
privileges in both clusters.
