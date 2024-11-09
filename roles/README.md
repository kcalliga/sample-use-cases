There are three users.

usera userb userc

Each of these is a regular user in their tenant. For example, usera is a regular user in tenanta

There are three admins

admina adminb adminc

Each of these users is an admin only in their tenant. For example, admina is an admin for tenanta

Here are the commands to run on the command-line to bind these created users to their respective projects

oc adm policy add-role-to-user admin admina -n tenanta

oc adm policy add-role-to-user admin adminb -n tenantb

oc adm policy add-role-to-user admin adminc -n tenantc

oc adm policy add-role-to-user edit usera -n tenanta

oc adm policy add-role-to-user edit userb -n tenantb

oc adm policy add-role-to-user edit userc -n tenantc

Here is a list of roles available

Default Cluster Role	Description
admin

A project manager. If used in a local binding, an admin user will have rights to view any resource in the project and modify any resource in the project except for quota.

basic-user

A user that can get basic information about projects and users.

cluster-admin

A super-user that can perform any action in any project. When bound to a user with a local binding, they have full control over quota and every action on every resource in the project.

cluster-status

A user that can get basic cluster status information.

edit

A user that can modify most objects in a project, but does not have the power to view or modify roles or bindings.

self-provisioner

A user that can create their own projects.

view

A user who cannot make any modifications, but can see most objects in a project. They cannot view or modify roles or bindings.

cluster-reader

A user who can read, but not view, objects in the cluster.
