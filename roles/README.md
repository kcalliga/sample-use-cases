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

oc adm policy add-role-to-user basic-user usera -n tenanta

oc adm policy add-role-to-user basic-user userb -n tenantb

oc adm policy add-role-to-user basic-user userc -n tenantc
