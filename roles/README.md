# User and Admin Role Assignments

This document outlines the user and admin roles assigned within the multi-tenant OpenShift environment.  The password for all users in this demo are set as "password"

## Users and Tenants

Three regular users exist within the system:

* **usera:** Belongs to the `tenanta` project.
* **userb:** Belongs to the `tenantb` project.
* **userc:** Belongs to the `tenantc` project.

Each user has regular access within their respective tenant.

## Admins and Tenants

Three admin users manage the tenants:

* **admina:**  Administrator for `tenanta`.
* **adminb:**  Administrator for `tenantb`.
* **adminc:**  Administrator for `tenantc`.

Each admin has full administrative privileges within their assigned tenant.

## Role Binding Commands

The following commands demonstrate how to bind the created users to their respective projects using the `oc` command-line tool:

```bash
oc adm policy add-role-to-user admin admina -n tenanta
oc adm policy add-role-to-user admin adminb -n tenantb
oc adm policy add-role-to-user admin adminc -n tenantc
oc adm policy add-role-to-user edit usera -n tenanta
oc adm policy add-role-to-user edit userb -n tenantb
oc adm policy add-role-to-user edit userc -n tenantc
