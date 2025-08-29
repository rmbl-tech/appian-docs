---
source_url: https://docs.appian.com/suite/help/25.3/portals-manage-portals.html
original_path: portals-manage-portals.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage a Portal

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Making continuous improvements and updates to your portal is important to ensure the best possible experience for your users. To make your portal available to your users, you'll need to publish, test, and deploy your portal.

## Publishing portals

A portal consists of a [portal object](portal-object.html) and at least one interface object. The interfaces contain the content for the portal object, displayed as separate pages. The portal object contains the settings used to create the portal.

When you publish a portal, Appian bundles up the portal object, the interfaces, and all of the objects used by the interfaces, and publishes them all as a cohesive serverless web app at a unique URL.

Publishing a portal makes it available to your users at the specified web address. This means that anyone with the URL can access your portal. For more information, see [Who can access a portal during testing?](#who-can-access-a-portal-during-testing).

If your portal publishes, but it can't be displayed because of errors, a **Service Unavailable** message will display. This may happen while you're developing your portal, similar to how site pages display expression validation errors when you're developing a site. To see the cause of the error and how to fix it, go to the portal object.

![published-portal-error](images/published-portal-error.png)

You'll only directly publish a portal in the environment where you're developing the portal. When you're ready to publish the portal in another environment, deploy it. The publication status of the deployed portal will apply in the new environment. So if you deploy a published portal to another environment, it will automatically publish the portal in that environment. See [Deploying portals](#deploying-portals) for more information.

You can view all of the portals in your environment along with their publication status in the **[PORTAL MONITORING](monitoring_view.html#portal-monitoring)** tab.

### Publish a portal for development

When you are ready to start testing your portal during development, publish it. Keep in mind that if you deploy a published portal to another environment, it will automatically publish the portal in that environment.

To publish a portal:

1.  Open your portal object.
2.  Under **Configurations**, toggle on **Published**.
3.  Click **SAVE**. The portal won't begin publishing until you save.

After your portal is published, it will [automatically republish](#automatically-republish-a-portal) as you make changes to the portal and its interfaces. If the portal publishes, but it can't display because of errors, a **Service Unavailable** message will display. To see the cause of the error and how to fix it, go to the portal object.

### Publish a portal through deployment

When you are ready to publish your portal for production use, you can prepare to have it automatically publish in your production environment through a deployment.

When you deploy a published portal to another environment, Appian will attempt to publish the portal in the target environment.

In order for the portal to publish successfully, before deploying your portal for the first time, you will need to set up the following in your target environment:

-   Create a service account in the target environment.
-   Give the service account the same [permissions](portals-service-accounts.html#prodlink-portals-service-account-permissions) in both environments.
-   If you are using plug-ins in the portal, make sure the plug-ins are in your target environment before deploying the portal.

After the portal publishes successfully in the target environment for the first time, whenever you deploy the portal or its precedents from your source environment, it will update and republish the portal in your target environment. See [Deploying portals](#deploying-portals) for more information.

Follow the steps below to set up your portal to publish successfully in another environment.

#### Step 1: Deploy groups and plug-ins

1.  In your source environment, open the the portal object and make sure that the portal is successfully published with your latest changes.
2.  Deploy all groups that you are using to grant access to your portal to the target environment.
3.  If there are any plug-ins you are using in the portal that aren't in your target environment, include the plug-ins in the deployment.
    -   **Note**: If you aren't using [compare and deploy](Deploy_to_Target_Environments.html#compare-and-deploy-across-connected-environments), an administrator will need to add the plug-ins to the environment manually.

#### Step 2: Set up the service account

1.  In your target environment, [create a service account](portals-service-accounts.html#creating-service-accounts) with the same username as the portal service account.
    -   **Note**: Only administrators can add service accounts to an environment.
2.  Add the service account to the groups you deployed from the source environment.
3.  If you are using a web API for a [custom integration](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal), add an API key with the same **Description** as the one in the source environment.

#### Step 3: Deploy and publish the portal

1.  Deploy the portal and all its precedents to the target environment. If necessary, include an [import customization file](#import-customization-files-for-portals).
2.  Check the [deployment details](deployments-view.html#view-deployment-details) to make sure there are no publishing errors.

### Automatically republish a portal

While you're developing portals, we'll keep published portals up to date by automatically republishing them to reflect your latest changes. Additionally, if you deploy any of the following changes to another environment, the portal in the other environment will be republished.

We will automatically republish the portal when:

-   You save changes to the portal object or a [precedent](Trace_Relationships_for_Impact_Analysis.html) of the portal object.
-   You update or delete a [component plug-in](component-plugins.html) or [connected system plug-in](connected-system-plug-in-landing.html) that is being used in the portal.
-   The portal links to another portal using [a!urlForPortal()](fnc_scripting_urlforportal.html), and you change either of the following in the linked portal:
    -   The web address identifier for the portal or a portal page.
    -   The [Encrypt URL Parameter](url-parameters.html#determine-whether-to-encrypt-url-parameters) checkbox for a portal page.

We also republish all published portals after an environment is restarted, such as when it is upgraded or hotfixed. This ensures portals in all environments reflect security updates and performance enhancements as soon as the environment is updated.

If the portal publishes, but it can't display because of errors, a **Service Unavailable** message will display. To see the cause of the error and how to fix it, go to the portal object.

### Manually republish a portal

Although it is usually unnecessary, you can also manually republish a portal.

You may want to manually republish a portal if:

-   There are updated [admin console](Appian_Administration_Console.html) settings that need to be reflected in your portal.
-   You have made changes to [group properties or group membership](Group_Management.html) for any group that your portal uses.
-   You need to cancel the publish that is in progress and immediately publish the latest changes to your portal precedents.

To manually republish a published portal:

1.  Open the portal object.
2.  In the blue status banner, click **Republish**.

### Unpublish a portal

Unpublishing a portal makes the portal unavailable to users. When you deploy a portal that has been unpublished to another environment, it will automatically unpublish in that environment.

To unpublish a portal:

1.  Under **Configurations** in the portal object, toggle off **Published**.
2.  Click **SAVE**. The portal won't be unpublished until you save.

## Testing portals

As with all Appian applications, you should always fully test all objects that your portal relies on to make sure everything is functioning correctly. Be sure to test everything in your portal interface, including all input and selection fields, and connections, queries, and processes.

This section outlines some guidelines that are unique to testing portals. If you run into any issues while testing, see [Troubleshooting a Portal](portals-troubleshooting.html).

### Test everything in a published portal

After you've tested all objects and connections for your portal in Appian Designer, it's important to fully test your portal after it is published. Be sure to fill out all of the fields, whether they are required or not, and go through all of the steps in your portal.

Testing in a published portal will help mitigate the following concerns:

-   The [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html) and [a!verifyRecaptcha()](fnc_connector_recaptcha_verifyrecaptcha.html) functions only work in a published portal. You can't test them in the interface object itself. See [Configuring reCAPTCHA](recaptcha.html#testing-monitoring-and-troubleshooting-recaptcha) for more information about how to test reCAPTCHA.
-   If you are using an integration to connect to Appian and it isn't set up properly, you may not notice until after you publish and test the portal. When you're testing the interface object in Appian Designer, the integration connection may still work, even if it isn't set up correctly.
-   The best way to make sure you are only using [compatible capabilities](portal-capabilities.html) is to fully test the entire portal.

### Use production-level data and usage

Be sure to fully test all parts of the connections to your portal with production-level data and usage. This includes all web APIs, integrations, and connected systems.

To make sure your portals are meeting operational standards when users interact with them, use the [Portal Monitoring](monitoring_view.html#portal-monitoring) tab on the Monitor view of Appian Designer. The metrics on this tab alert you to potential issues so you can avoid serving slow or inaccessible portals to your users.

### Testing reCAPTCHA

See [Configuring reCAPTCHA](recaptcha.html#testing-monitoring-and-troubleshooting-recaptcha) for additional information on testing reCAPTCHA.

### Who can access a portal during testing?

You must publish your portal to fully test it, which means that anyone with the web address can access your portal, maybe even before you're ready for them to.

To help limit access to the portal while you're testing, UUIDs are added by default to the web addresses of all portals in your development and testing environments. This means that only users that you share the URL with will be able to easily find the portal during development.

In production environments, this option is deselected by default to make the web addresses more intuitive and easier for your users to access them.

This setting can be changed in the [Administration Console](Appian_Administration_Console.html#portals).

## Deploying portals

As with all objects, when you deploy a portal object all of the fields and configurations are deployed with it. After deployment, the value of the portal object's **Published** field in the target environment will be the same as the **Published** field value in the source environment.

For example:

-   If the portal is published in the source environment, it will be published in the target environment.
-   If the portal has never been published in the source environment, it will not be published in the target environment.
-   If the portal has been unpublished in the source environment, it will be unpublished in the target environment.
-   If the portal is [published with errors](portals-troubleshooting.html#portals-published-with-errors) in the source environment, it will most likely publish with errors in the target environment.

When deploying a published portal, the portal will automatically publish in the target environment during deployment.

If your portal is published in the target environment and you deploy an updated precedent of the portal to that environment, the portal will automatically republish after import to include the latest updates.

For more information on packages and deployments, see:

-   [Preparing Deployment Packages](prepare-deployment-packages.html)
-   [Deploy to Target Environments](Deploy_to_Target_Environments.html)
-   [Deployment guidelines for portals](Application_Deployment_Guidelines.html#portals)

### Deploy plug-in updates

If you are updating a plug-in that is being used in a portal, the plug-in must be updated in the environment before the portal is republished.

To update a plug-in being used in a portal:

1.  Update the plug-in in the target environment. This can be done manually by an administrator, or through [compare and deploy](Deploy_to_Target_Environments.html#compare-and-deploy-across-connected-environments).
2.  Deploy a change to the target environment that will [republish the portal](#automatically-republish-a-portal).

### Determining the best time to deploy to production

For production environments, we recommend deploying portals during off-peak hours. When a portal is republished, users interacting with your portal may encounter errors or lose any work in progress. Remember that portals republish even when you deploy a change to a [precedent](Trace_Relationships_for_Impact_Analysis.html) of a portal object.

### Import customization files for portals

In some cases, you may need to provide connection information in an [import customization file (ICF)](Managing_Import_Customization_Files.html) when deploying portals. This table outlines the information you may need to provide in an ICF.

| If your portal uses… | Don't forget! |
| --- | --- |
| Integrations and Web APIs to [write](portals-data.html#writing-data-using-cdts) or [query](portals-data.html#querying-data-using-cdts) data | ICF with API keys |
| [Querying or writing](portals-data.html#working-with-data-in-a-publicly-accessible-external-database) data directly from a publicly accessible external database | ICF with data source connected system credentials |
| [Google reCAPTCHA](recaptcha.html) connected system | ICF with connected system credentials |
| Environment specific constant | ICF with value of constant |
| Integration to external system | ICF with connected system credentials |
| One of multiple configured [custom domains](portals-custom-domain.html) | ICF with desired domain |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...