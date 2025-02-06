#! /bin/bash

# Apply network policy on top of project template for each new project that is created
oc apply -f bootstrap-with-network-isolation.yaml
# Apply global project template
oc apply -f project-config.yaml
## wait a little time
sleep 60
# Create usera, userb, and userc with password as password
oc apply -f htpasswd-multitenant
oc apply -f htpasswd-multitenant-secret.yaml
oc patch oauth cluster --type='json' -p='[
  {
    "op": "add",
    "path": "/spec/identityProviders/-",
    "value": {
      "name": "htpasswd-multitenant",
      "type": "HTPasswd",
      "htpasswd": {
        "fileData": {
          "name": "htpasswd-multitenant"
        }
      },
      "mappingMethod": "claim"
    }
  }
]'
# Create projects
oc new-project tenanta-project1
oc new-project tenanta-project2
oc new-project tenantb-project1
oc new-project tenantb-project2
oc new-project tenantc-project1
oc new-project tenantc-project2
# Create users and bind them to project/namesspaces
oc policy add-role-to-user edit usera -n tenanta-project1
oc policy add-role-to-user edit usera -n tenanta-project2
oc policy add-role-to-user edit userb -n tenantb-project1
oc policy add-role-to-user edit userb -n tenantb-project2
oc policy add-role-to-user edit userc -n tenantc-project1
oc policy add-role-to-user edit userc -n tenantc-project2
oc policy add-role-to-user admin admina -n tenanta-project1
oc policy add-role-to-user admin admina -n tenanta-project2
oc policy add-role-to-user admin adminb -n tenantb-project1
oc policy add-role-to-user admin adminb -n tenantb-project2
oc policy add-role-to-user admin adminc -n tenantc-project1
oc policy add-role-to-user admin adminc -n tenantc-project2
# Create pvcs in all projects/namespaces
#oc apply -f pvc.yaml -n tenanta-project1
#oc apply -f pvc.yaml -n tenanta-project2
#oc apply -f pvc.yaml -n tenantb-project1
#oc apply -f pvc.yaml -n tenantb-project2
#oc apply -f pvc.yaml -n tenantc-project1
#oc apply -f pvc.yaml -n tenantc-project2
# Create httpd application
oc apply -f http-pod.yaml -n tenanta-project1
oc apply -f http-pod.yaml -n tenanta-project2
oc apply -f http-pod.yaml -n tenantb-project1
oc apply -f http-pod.yaml -n tenantb-project2
oc apply -f http-pod.yaml -n tenantc-project1
oc apply -f http-pod.yaml -n tenantc-project2
# Create Service for these http pods
oc apply -f service.yaml -n tenanta-project1
oc apply -f service.yaml -n tenanta-project2
oc apply -f service.yaml -n tenantb-project1
oc apply -f service.yaml -n tenantb-project2
oc apply -f service.yaml -n tenantc-project1
oc apply -f service.yaml -n tenantc-project2
# Create network tool pod
oc apply -f network-tool-pod.yaml -n tenanta-project1
oc apply -f network-tool-pod.yaml -n tenanta-project2
oc apply -f network-tool-pod.yaml -n tenantb-project1
oc apply -f network-tool-pod.yaml -n tenantb-project2
oc apply -f network-tool-pod.yaml -n tenantc-project1
oc apply -f network-tool-pod.yaml -n tenantc-project2
