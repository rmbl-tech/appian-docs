---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/rpa-setup-on-k8s.html
original_path: k8s-0.184.0/rpa-setup-on-k8s.html
version: "25.3"
title: "RPA Setup for Appian on Kubernetes"
page_id: "k8s-0.184.0/rpa-setup-on-k8s"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# RPA Setup for Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page guides self-managed customers through configuring RPA in Appian on Kubernetes.

## Create and configure the RPA Secret

Before you begin, you must deploy a Secret to your cluster namespace with credentials for connecting to the MariaDB data source used by Appian RPA. The `rpa-secret.yaml` file is a Kubernetes Secret configuration that stores these credentials (username and password).

To set up the rpa-secret.yaml:

-   `kubectl` must be installed and configured.
-   you must have access to the appropriate Kubernetes namespace.
-   the Secret **name** must match the values of `credentialSecretName` and `passwordSecretName` in your [Appian YAML file](install-appian-on-k8s.html#4-create-an-appian-yaml-file).
-   you must store the Secret in the **same namespace** as the Appian CR.
-   you can create the Secret using one of two methods: [Declarative (YAML + apply)](#method-1-declarative-yaml--apply) or [Imperative (kubectl create secret)](#method-2-imperative-kubectl-create-secret).Use **one** method only.

### Method 1: Declarative (YAML + apply)

1.  Create a file named `rpa-secret.yaml`:

    ```
    1
    2
    3
    4
    5
    6
    7
    8
    9
    apiVersion: v1
    kind: Secret
    type: Opaque
    metadata:
      name: rpa-data-source-credentials
      namespace: my-site-namespace
    stringData:
      username: appian
      password: <your-password>
    ```

    Alternatively, specify the base64-encoded credentials under the data field.

    ```
    1
    2
    3
    data:
      username: <base64-of-appian>
      password: <base64-of-your-password>
    ```

2.  Apply the Secret:

    ```
    1
    kubectl apply -f rpa-secret.yaml
    ```

### Method 2: Imperative (kubectl create secret)

Create the Secret directly (no manual base64 encoding required):

```
1
2
3
   kubectl create secret generic -n my-site-namespace rpa-data-source-credentials \
     --from-literal=username=appian \
     --from-literal=password=<your-password>
```

### Verify the Secret (both methods)

Verify that the Secret was created in the correct namespace:

`kubectl get secret rpa-data-source-credentials -n my-site-namespace`

**Tip:**  If Appian RPA cannot connect, confirm the Secret's **name** matches the Appian YAML and that the keys are exactly `username` and `password`.

## MariaDB database configuration and initialization

### Prerequisites

Before proceeding, make sure you have:

-   Access to a MariaDB server where you have permissions to create databases and users.
-   The password used above in rpa-data-source-credentials. You will be setting up the username and password that secret corresponds to in this guide.

### Step 1: Log in to Your MariaDB Server

First, connect to your MariaDB server using the MariaDB client. Replace your\_username with your actual database username:

```
1
mysql -u your_username -p
```

You will be prompted for your password. Enter it to proceed.

### Step 2: Create Databases

Execute the following SQL commands to create the necessary databases. These commands are safe to run multiple times; they will not overwrite existing databases.

```
1
2
3
CREATE DATABASE IF NOT EXISTS Rpa;
CREATE DATABASE IF NOT EXISTS Rtdo;
CREATE DATABASE IF NOT EXISTS Rpdo;
```

### Step 3: Create User and Grant Permissions

Replace password with the password you wish to use for your application's database connection. This step grants the necessary permissions for the newly created user on the databases created in the previous step.

**Note:**  The password used must be the same password used for rpa-data-source-credentials.

```
1
2
3
4
5
CREATE USER 'appian'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON Rpa.* TO 'appian'@'%';
GRANT ALL PRIVILEGES ON Rtdo.* TO 'appian'@'%';
GRANT ALL PRIVILEGES ON Rpdo.* TO 'appian'@'%';
FLUSH PRIVILEGES;
```

### Step 4: Verifying the Setup

To verify that the databases and user have been set up correctly, you can log in as the newly created user and list the databases:

```
1
mysql -u appian -p
```

Once logged in, execute:

```
1
SHOW DATABASES;
```

You should see Rpa, Rtdo, and Rpdo listed among the databases.

## Restricting outbound traffic for RPA

RPA requires unrestricted access to the internet by default, with RPA reaching out to Maven repositories on the internet when it checks for 3rd party dependencies (JARs) for each robotic task execution. (See the [RPA Repository Management](../rpa-9.17/manage-repositories.html) page for more information.)

Alternatively, you can configure RPA to work in `"offline"` mode in order to prevent RPA from connecting to the public internet. RPA will be fully functional in `"offline"` mode; however, this may increase the export size for any Java-dependent Robotic Tasks.

To restrict RPA from communicating with the public internet, set the value for `.spec.rpa.properties.rpa.artifact.resolution` to `"offline"`. If the custom property is omitted, the default is `"online"`.

```
1
2
3
4
5
6
7
8
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  rpa:
    properties:
      rpa.artifact.resolution: "offline"
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...