---
source_url: https://docs.appian.com/suite/help/25.3/Deployment_Rest_API.html
original_path: Deployment_Rest_API.html
version: "25.3"
title: "Deployment REST API"
page_id: "Deployment_Rest_API"
section: "Versions of the deployment REST API"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deployment REST API

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Versions of the deployment REST API

There are two versions of the deployment REST API. If your environment is on version 23.2 or earlier, use version 1. If your environment is on version 23.3, use version 2 to enable programmatic export of applications and packages.

## Version 2

### Overview

Appian's deployment REST API suite provides a secure way to expose Appian deployment services and data via external systems.

These deployment APIs allow you to:

-   Trigger external deployments programmatically.
-   Integrate your Appian releases into an automated pipeline.
-   Coordinate with your other software releases and business processes.
-   Set up your pipeline once and run it the exact same way for all future deployments, saving time and avoiding manual errors.

With Appian's native APIs, you can completely automate your CI/CD pipeline, including your Appian exports, inspections, and imports. They also allow you to configure a [post-deployment process](post-deployment-process.html) to run after external deployments. There are six endpoints available for deployments:

-   [Export apps and packages](Export_Package_API.html).
-   [Inspect apps and packages](Inspect_Package_API.html).
-   [Get inspection results](Get_Inspection_Results_API.html).
-   [Import apps and packages](Deploy_Package_API.html).
-   [Get deployment results](Get_Deployment_Results_API.html).
-   [Get deployment log](Get_Deployment_Log_API.html).

In addition to these capabilities, you can also use the [Application Package Details](Application_Package_Details_API.html) to retrieve package identifier information to trigger your deployments.

This page gives an overview of Appian's deployment REST API suite. You can enable these deployment APIs for use on your environment in the Admin Console infrastructure page.

**Note:**  The API follows REST standards. See [this resource](https://www.tutorialspoint.com/restful/restful_introduction.htm) for more information about RESTful APIs.

### Endpoints

All deployment API endpoints are called with a URL beginning with `https://<domain>/suite/deployment-management/v2`, where `<domain>` is replaced with your Appian site domain and `<v#>` specifies the version of the endpoint you are using.

Every API endpoint must be called using the HTTP request method (`POST` or `GET`) specified in the documentation. A `POST` request is used to send data to (in the case of import) or retrieve data from (in the case of export) Appian. A `GET` request is used to request data from Appian, such as retrieving the status of an existing deployment or retrieve the corresponding deployment log.

**Tip:**  `GET` requests are always available regardless of Admin Console settings for controlling incoming and outgoing deployments.

### Authentication

All endpoint requests are authenticated with an API key, which is linked to a service account. This is the same mechanism that Appian uses to secure Web API objects. The service account and API key can be created in the [Admin Console](Appian_Administration_Console.html#api-keys), and then configured to secure external deployments.

Once configured, there are [multiple ways](Web_API_Authentication.html#api-key-authentication) to use the API key to authenticate your request. For example, you can add it to the HTTP header with the key name **appian-api-key**:

`curl https://<domain>/suite/deployment-management/v2/deployments -H "appian-api-key: <API key>"`

For any `GET` requests, users can use the provided URL in their browser to retrieve results. As long as that user has the correct access to the application to see deployment details they will be able to see the results.

### Configuring incoming and outgoing deployments

The same sets of endpoints are used for incoming and outgoing deployments. For POST requests where you need to differentiate between imports and exports, you can specify the **Action-Type** in the header alongside your **appian-api-key**.

`curl https://<domain>/suite/deployment-management/v2/deployments -H "appian-api-key: <API key>" -H "Action-Type: <import/export>"`

### Workflow

Appian recommends inspecting all packages before deployment. Additionally, the export endpoint should be used with an change management system to ensure only work that is ready for deployment is being exported.

The high-level workflow and endpoints for each step are:

1.  Retrieve the corresponding package UUID for your deployment using the [Application Package Details](Application_Package_Details_API.html). Make sure you've selected the right package to avoid deploying incomplete features.
2.  Export your package. After work is complete on an increment, specify the package or application(s) ready for export. Use the header of the deployments endpoint to specify the **Action-Type** as `export` and extract the desired deployment package. When deploying a package, any database scripts, plug-ins, or import customization file specified in the package will be available as resources of the deployment once it completes.
3.  Check the status of your deployment using the [`/deployments/<uuid>`](Get_Deployment_Results_API.html) endpoint. Once it completes, you will be able to download the corresponding resources created from your deployment.
4.  For more detailed results, retrieve the deployment log using the [`/deployments/<uuid>/log`](Get_Deployment_Log_API.html) endpoint.
5.  Once you have your deployment contents, you can begin the process of deploying to your target environment. Inspect your package, Admin Console settings (though you can programmatically deploy admin console settings, you still must export them manually), import customization file, or any combination of those using the [`/inspections`](Inspect_Package_API.html) endpoint. The endpoint response provides the UUID of the inspection, which you can use in the next step.
6.  Retrieve the status and results of your inspection using the [`/inspections/<uuid>`](Get_Inspection_Results_API.html) endpoint. The inspection may take longer depending on the size of your package. Appian recommends hitting this endpoint on a regular interval until the inspection is complete and results are available, which is indicated by the status response.
7.  Deploy your Admin Console settings, package, customization file, plug-ins, and/or database scripts using the [`/deployments`](Deploy_Package_API.html) endpoint. This is the same endpoint used in step 1. You can set the **Action-Type** to `import`, otherwise the value is set to `import` by default. The endpoint’s response provides the UUID of the deployment, which you can use in the next step.
8.  Retrieve the status and results of your deployment by using the [`/deployments/<uuid>`](Get_Deployment_Results_API.html) endpoint. As in step 2, the deployment time will vary with the size of your package. Appian recommends hitting this endpoint on a regular interval until the deployment is completed and results are available, which is indicated by the status response.
9.  Again, for more detailed results, retrieve the deployment log using the [`/deployments/<uuid>/log`](Get_Deployment_Log_API.html) endpoint.

## Version 1

### Overview

Appian's deployment REST API suite provides a safe way to expose Appian deployment services and data to external systems.

This allows you to:

-   Trigger external deployments programmatically.
-   Integrate your Appian releases into an automated pipeline.
-   Coordinate with your other software releases and business processes.
-   Set up your pipeline once and run it the exact same way for all future deployments, saving time and avoiding manual errors.

There are five endpoints that allow you to inspect and deploy Admin Console settings, applications, packages, import customization files, plug-ins, and database scripts. They also allow you to configure a [post-deployment process](post-deployment-process.html) to run after external deployments.

The endpoints are:

-   [Inspect packages](Inspect_Package_API.html)
-   [Get inspection results](Get_Inspection_Results_API.html)
-   [Execute a deployment](Deploy_Package_API.html)
-   [Get deployment results](Get_Deployment_Results_API.html)
-   [Get deployment log](Get_Deployment_Log_API.html)

This page gives an overview of Appian's deployment REST API suite. You can enable these deployment APIs for use on your environment in the [Admin Console infrastructure page](Appian_Administration_Console.html#infrastructure).

**Note:**  The API follows REST standards. See [this resource](https://www.tutorialspoint.com/restful/restful_introduction.htm) for more information about RESTful APIs.

### Endpoints

All deployment API endpoints are called with a URL beginning with `https://<domain>/suite/deployment-management/v1`, where `<domain>` is replaced with your Appian site domain.

Every API endpoint must be called using the HTTP request method (`POST` or `GET`) specified in the documentation. A `POST` request is used to send data to Appian in order to create or update information, such as creating a new deployment. A `GET` request is used to request data from Appian, such as retrieving the status of an existing deployment.

### Authentication

All endpoint requests are authenticated with an API key, which is linked to a service account. This is the same mechanism that Appian uses to secure Web API objects. The service account and API key can be created in the [Admin Console](Appian_Administration_Console.html#api-keys), and then configured to secure external deployments.

Once configured, there are [multiple ways](Web_API_Authentication.html#api-key-authentication) to use the API key to authenticate your request. For example, you can add it to the HTTP header with the key name **appian-api-key**:

`curl https://<domain>/suite/deployment-management/v1/deployments -H "appian-api-key: <API key>"`

### Workflow

Appian recommends that any package should first be inspected and then deployed.

The high-level workflow and endpoints for each step are:

1.  Inspect your package, Admin Console settings, import customization file, or any combination of those using the [`/inspections`](Inspect_Package_API.html) endpoint. The endpoint response provides the UUID of the inspection, which you can use in the next step.
2.  Retrieve the status and results of your inspection using the [`/inspections/<uuid>`](Get_Inspection_Results_API.html) endpoint. The inspection may take longer depending on the size of your package. We recommend hitting this endpoint on a regular interval until the inspection is complete and results are available, which is indicated by the status response.
3.  Deploy your Admin Console settings, package, customization file, plug-ins, and/or database scripts using the [`/deployments`](Deploy_Package_API.html) endpoint. The endpoint’s response provides the UUID of the deployment, which you can use in the next step.
4.  Retrieve the status and results of your deployment, by using the [`/deployments/<uuid>`](Get_Deployment_Results_API.html) endpoint. Similar to step 2, the deployment time will vary with the size of your package. We recommend hitting this endpoint on a regular interval until the deployment is completed and results are available, which is indicated by the status response.
5.  If necessary, retrieve the deployment log for more detailed results by using the [`/deployments/<uuid>/log`](Get_Deployment_Log_API.html) endpoint.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...