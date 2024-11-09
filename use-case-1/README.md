4.1 Use Case: (TST-0001) Verify the logical and physical isolation between
tenants.

Description:

This test verifies the logical and physical isolation between tenants.

Success Criteria:

● A tenant "A" cannot see any resource created and managed by tenant "B".

1.  oc login https://api.clusterfqdn:6443 -u usera
WARNING: Using insecure TLS client config. Setting this option is not supported!

Console URL: https://api.clusterfqdn:6443/console
Authentication required for https://api.clusterfqdn:6443 (openshift)
Username: usera
Password:
Login successful.

You have access to the following projects and can switch between them with 'oc project <projectname>':

    openshift-virtualization-os-images
    tenanta

2.  See what we can list from tenantb

[keith@vpn-hopper ~]$ oc get all -n tenantb
Error from server (Forbidden): pods is forbidden: User "usera" cannot list resource "pods" in API group "" in the namespace "tenantb"
Error from server (Forbidden): replicationcontrollers is forbidden: User "usera" cannot list resource "replicationcontrollers" in API group "" in the namespace "tenantb"
Error from server (Forbidden): services is forbidden: User "usera" cannot list resource "services" in API group "" in the namespace "tenantb"
Error from server (Forbidden): daemonsets.apps is forbidden: User "usera" cannot list resource "daemonsets" in API group "apps" in the namespace "tenantb"
Error from server (Forbidden): deployments.apps is forbidden: User "usera" cannot list resource "deployments" in API group "apps" in the namespace "tenantb"
Error from server (Forbidden): replicasets.apps is forbidden: User "usera" cannot list resource "replicasets" in API group "apps" in the namespace "tenantb"
Error from server (Forbidden): statefulsets.apps is forbidden: User "usera" cannot list resource "statefulsets" in API group "apps" in the namespace "tenantb"
Error from server (Forbidden): horizontalpodautoscalers.autoscaling is forbidden: User "usera" cannot list resource "horizontalpodautoscalers" in API group "autoscaling" in the namespace "tenantb"
Error from server (Forbidden): cronjobs.batch is forbidden: User "usera" cannot list resource "cronjobs" in API group "batch" in the namespace "tenantb"
Error from server (Forbidden): deploymentconfigs.apps.openshift.io is forbidden: User "usera" cannot list resource "deploymentconfigs" in API group "apps.openshift.io" in the namespace "tenantb"
Error from server (Forbidden): buildconfigs.build.openshift.io is forbidden: User "usera" cannot list resource "buildconfigs" in API group "build.openshift.io" in the namespace "tenantb"
Error from server (Forbidden): builds.build.openshift.io is forbidden: User "usera" cannot list resource "builds" in API group "build.openshift.io" in the namespace "tenantb"
Error from server (Forbidden): imagestreams.image.openshift.io is forbidden: User "usera" cannot list resource "imagestreams" in API group "image.openshift.io" in the namespace "tenantb"
Error from server (Forbidden): routes.route.openshift.io is forbidden: User "usera" cannot list resource "routes" in API group "route.openshift.io" in the namespace "tenantb"
Error from server (Forbidden): applications.app.k8s.io is forbidden: User "usera" cannot list resource "applications" in API group "app.k8s.io" in the namespace "tenantb"
Error from server (Forbidden): dataimportcrons.cdi.kubevirt.io is forbidden: User "usera" cannot list resource "dataimportcrons" in API group "cdi.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): datasources.cdi.kubevirt.io is forbidden: User "usera" cannot list resource "datasources" in API group "cdi.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): datavolumes.cdi.kubevirt.io is forbidden: User "usera" cannot list resource "datavolumes" in API group "cdi.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachineclones.clone.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachineclones" in API group "clone.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachineexports.export.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachineexports" in API group "export.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): hyperconvergeds.hco.kubevirt.io is forbidden: User "usera" cannot list resource "hyperconvergeds" in API group "hco.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachineinstancetypes.instancetype.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachineinstancetypes" in API group "instancetype.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachinepreferences.instancetype.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachinepreferences" in API group "instancetype.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachineinstancemigrations.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachineinstancemigrations" in API group "kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachineinstancepresets.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachineinstancepresets" in API group "kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachineinstancereplicasets.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachineinstancereplicasets" in API group "kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachineinstances.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachineinstances" in API group "kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachines.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachines" in API group "kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): migrationpolicies.migrations.kubevirt.io is forbidden: User "usera" cannot list resource "migrationpolicies" in API group "migrations.kubevirt.io" at the cluster scope
Error from server (Forbidden): virtualmachinepools.pool.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachinepools" in API group "pool.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): rayclusters.ray.io is forbidden: User "usera" cannot list resource "rayclusters" in API group "ray.io" in the namespace "tenantb"
Error from server (Forbidden): rayservices.ray.io is forbidden: User "usera" cannot list resource "rayservices" in API group "ray.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachinerestores.snapshot.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachinerestores" in API group "snapshot.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachinesnapshotcontents.snapshot.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachinesnapshotcontents" in API group "snapshot.kubevirt.io" in the namespace "tenantb"
Error from server (Forbidden): virtualmachinesnapshots.snapshot.kubevirt.io is forbidden: User "usera" cannot list resource "virtualmachinesnapshots" in API group "snapshot.kubevirt.io" in the namespace "tenantb"

● Pods/VMs in Tenant A cannot reach pods in tenant B (Network Isolation)

Deploy the sampleapplication pod in each namespace

3.  
A.Show that usera on tenanta can curl the endpoint locally on port 8080

B.  Get the pod IP (oc get po -o wide)

C.  oc rsh/network-tools-<randomuid>
      curl http://<ipofsampleapplication>:8080

D.  Create network-tools pod on tenant B and try to ping/curl (poirt 8080) the IP associated with sampleapplication pod in tenanta


● Pods/VMs in Tenant A cannot mount PVs from tenant B

● Operators/Helm Charts/Applications deployed by tenant B are not visible by tenant A

● Tenant A and have its own credentials to access the cluster

● Tenant A can create multiple projects with quo
