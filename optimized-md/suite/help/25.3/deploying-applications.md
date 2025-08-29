---
source_url: https://docs.appian.com/suite/help/25.3/deploying-applications.html
original_path: deploying-applications.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deploying Applications

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page is about the deployment process in Appian and the different ways you can deploy updates to your applications. To learn how to deploy your applications and packages, see [Deploy to Target Environments](Deploy_to_Target_Environments.html).

## The deployment process

Deploying is moving a set of objects from the source environment to the target environment in order to release updates to your end users.

A _package_ is a collection of Appian application changes that you can deploy to another environment. Preparing a package is an important step in the deployment process and involves understanding what changes you need to deploy and how these changes will affect your target environment.

Make sure you understand [object-specific behavior](Application_Deployment_Guidelines.html#object-specific-rules) while preparing a package for deployment. In your application, you check your application for [missing precedents](application-settings.html#missing-precedents) and add the precedents to the application. In the [package view](prepare-deployment-packages.html#view-package), you can perform the same analysis for an individual package.

Once you've prepared a package, you can then [deploy](Deploy_to_Target_Environments.html) it from a source environment to a target environment.

During deployment, the definition of each object in your package is exported from the source environment into an XML file. Appian bundles these XML files into a ZIP file, which is used to move the objects to the target environment.

Information about related objects is preserved across the deployments. In most cases, the related objects themselves are not automatically exported. They must be explicitly added as objects within the package, or already present in the target environment.

## Package dependencies

The successful deployment of your package can depend on the files and settings listed below.

**Tip:**  To simplify deployment, add these files and settings to your [package](prepare-deployment-packages.html) during development.

### Application configurations

These [application-level settings](prepare-deployment-packages.html#prodlink-application-configurations) are used to construct the application in the target environment. The configurations can also add functionality like centralized application documentation and default security groups. Application configurations are always deployed when an application is new in the target environment. A package can contain just your application configurations or include application configurations alongside additional objects and enhancements.

You can manage this dependency by [adding application configurations](prepare-deployment-packages.html#prodlink-application-configurations) to a package during development or deployment. Alternatively, you can manually update the settings in the target environment.

### Import customization file

You may have to include an [import customization file](Managing_Import_Customization_Files.html) in your deployment if certain objects and configurations require environment-specific values, such as usernames and passwords. This file also enables you to deploy unchanged objects and trigger a sync for record types. Appian generates a template import customization file for you, which you must modify as appropriate to the target environment.

You can manage this dependency by adding an import customization file to a [prepared package](prepare-deployment-packages.html#add-icf), during [compare and deploy](Deploy_to_Target_Environments.html#compare-and-deploy), or during a [manual import](Deploy_to_Target_Environments.html#manually-inspect-and-import).

### Database scripts

You can [directly deploy database scripts](Deploy_to_Target_Environments.html#add-db-scripts) alongside your application changes or allow Appian to manage your database structure. Alternatively, you can manually deploy database scripts to a specific environment, following [change management best practices](https://community.appian.com/w/the-appian-playbook/166/promoting-and-deploying-applications#database-change-management-best-practices).

### Plug-ins

Plug-ins allow developers to extend Appian functionality. On Cloud sites, system administrators can deploy Cloud-approved plug-ins to an environment through the [Admin Console](Appian_Administration_Console.html#plug-ins). On self-managed sites, plug-ins can be [hot deployed](Appian_Plug-ins.html#deploying-plug-ins) by placing the JAR file in the specified directory. In addition, you can deploy plug-ins that exist in one environment to another using [compare and deploy](Deploy_to_Target_Environments.html#add-plugins) and [deployment APIs](Deployment_Rest_API.html).

### Admin Console settings

Certain objects may rely on specific Admin Console settings for successful deployment. For direct and manual deployments, you must [import these settings](Appian_Administration_Console.html#import-export-admin-console) prior to deploying the package of dependent objects.

## Deployment types

In addition to deploying enhancements, you can also use the following types of packages to deploy new applications and change administration settings in the target environment:

-   **Applications**: Deploy an [entire application](creating-applications.html) when you are introducing a completely new business solution into the target environment.
-   **Database scripts and plug-ins**: Deploy only database scripts and plug-ins to make changes in the target environment that support a later deployment of changed design objects.
-   **Admin Console settings**: Deploy only [Admin Console settings](Appian_Administration_Console.html#overview) when you want to make changes to the Administration settings in the target environment.

## Deployment methods

There are three methods for deploying a package in Appian: [direct](#direct-deployment), [manual](#manual-export-and-import), and [external](#external-deployment).

### Direct deployment

Direct deployment provides a guided push-button deployment of applications, packages, plug-ins, and database scripts across connected environments.

Direct deployments are an out-of-the-box approach for streamlined deployments, with fewer manual steps and predictable outcomes. This approach supports continuous delivery by allowing you to deploy packages frequently and reliably.

For those looking for a streamlined deployment process with minimal setup effort, Appian recommends using direct deployment.

Learn more about [compare and deploy](Deploy_to_Target_Environments.html#compare-and-deploy).

### Manual export and import

You may have constraints on specific environments or packages that prevent you from taking advantage of direct deployments. If that's the case, you can also manually export an application or package from a source environment and import it into the target environment.

When you export and import a package, rather than directly deploy it, you must manage certain dependencies manually. For example, exported packages do not contain database scripts or plug-ins.

Learn more about [manual export and import](Deploy_to_Target_Environments.html#manual-export-and-import).

You can also programmatically export applications and packages using export APIs. To learn more, see the external deployment section below.

### External deployment

Our native deployment APIs enable you to not only export, inspect, and import programmatically, but also customize your own deployment process.

The deployment APIs offer five endpoints that allow you to deploy combinations of Admin Console settings, applications, packages, import customization files, plug-ins, and database scripts. You can call all of these APIs from external tools, such as Jenkins.

Use these APIs to trigger deployments and integrate your Appian release into an automated pipeline. Configure your pipeline once and run it the exact same way for all future deployments, saving time and avoiding manual errors.

Learn more about native [deployment APIs](Deployment_Rest_API.html).

**Note:**  To integrate with a version control system to store and retrieve package files, use the [Automated Version Manager](https://community.appian.com/b/appmarket/posts/automated-versioning-manager-avm). To learn more about creating a CI/CD pipeline, see the [DevOps Quick Start Guide](https://community.appian.com/w/the-appian-playbook/1245/appian-devops-quick-start).

## Post-deployment processes

A [post-deployment process](post-deployment-process.html) is a process that automatically runs after a direct or external deployment has finished on an environment. From this process, you'll be able to access key information about the relevant deployment.

Post-deployment processes provide flexibility, which allows you to automate tasks, leverage third-party tools, and customize your workflow. Automating your post-deployment steps reduces manual tasks and the potential for human error.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...