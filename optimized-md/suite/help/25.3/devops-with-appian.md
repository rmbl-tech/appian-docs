---
source_url: https://docs.appian.com/suite/help/25.3/devops-with-appian.html
original_path: devops-with-appian.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# DevOps in Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

DevOps is a set of practices that helps foster a culture of collaboration between development (Dev) and operations (Ops) teams.

Appian's low-code DevOps features allow your organization to continuously improve applications for your users by providing a well-defined structure for development and release.

This page serves as a DevOps concept overview, and will:

-   Introduce DevOps and its benefits.
-   Explain how Appian allows you to easily use DevOps practices to improve and streamline your application life cycle.
-   Provide an overview of the four primary stages of the DevOps pipeline in Appian.

The Appian DevOps pipeline splits up the application development and release process into four stages, which cover the application life cycle from start to finish. These stages are:

-   [Build](#build)
-   [Test](#test)
-   [Deploy](#deploy)
-   [Monitor](#monitor)

The content in this page and collection provides in-depth information about testing, deploying, and monitoring applications.

## Getting started with DevOps

DevOps practices allow your team to build, test, monitor, and deploy software faster and more reliably. DevOps empowers you to continuously deliver high quality applications, to identify and prevent bottlenecks throughout your process, and to foster better collaboration in your team.

![DevOps Stages](images/DevOpsTiles_wide.png)

There are two concepts related to DevOps that we will introduce: Continuous Integration and Continuous Delivery.

-   **Continuous Integration** is the practice of publishing incremental changes so the entire team is working off a central place. In Appian, continuous integration means updating your application objects frequently and incrementally. The goal of this approach is to reduce the risk of making conflicting changes or a large number of changes all at the same time.
-   **Continuous Delivery** is the practice of frequently releasing application updates. In Appian, continuous delivery means deploying your packages to production on a regular basis. The goal is to deliver value to your users quickly and efficiently.

In general, DevOps benefits are additive—the more DevOps practices you invest in, the more efficient your application life cycle will be. When you're beginning your DevOps journey, it's a best practice to start small and add practices incrementally. However you approach it, remember that the goal is to improve your team's processes so that they can work faster and smarter.

![DevOps Monitor](images/DevOps_monitor.png)

### Appian's native DevSecOps

DevSecOps puts security as a primary concern in DevOps practices. In DevSecOps, security is at the forefront of every part of the application life cycle, including planning and development.

With Appian, security is built into the platform every step of the way, so your team can concentrate on the security specific to your business. Appian's low-code experience and [SAIL technology](SAIL_Design.html) prevent developers from making common security mistakes, such as exposing cross site scripting (XSS) attack points.

In addition, running on the Appian platform means you don't have to worry about the security of your underlying technology stack. Appian keeps related software libraries up to date and regularly conducts third-party security scans, among other security measures.

![DevOps securityPyramid](images/DevOps_securityPyramid.png)

If you are on [Appian Cloud](https://www.appian.com/trust/), operational security is handled for you. If you have a self-managed environment, work with your security team to put an operational security plan in place.

For more information on application security, see [Object Security](object-security.html)

## The Appian DevOps pipeline

The Appian DevOps pipeline improves your process at every stage of development and delivery. Using DevOps practices together with Appian empowers your team to build, test, deploy, and monitor applications quickly and confidently because they are backed by a secure platform that supports efficient DevOps practices.

### Build

The development of your application is the first step in your application's life cycle. Building your applications while using DevOps strategies allow you to make incremental changes that consistently improve the functionality of your application and the experience of your users.

Your business requirements can change quickly and implementing changes at a fast pace can be challenging. DevOps practices complement agile practices to enable you to build and adapt your development process to allow for continuous updates to your application.

To learn more about building fast and powerful applications that your users will love, check out [designing applications](welcome-app-designer.html).

Appian provides features that specifically support DevOps goals while you're building your application. To learn more about these features, check out [continuous integration in Appian](continuous-improvements-to-your-application.html).

While you're building your application, we also recommend using these features:

-   With the Application Documentation feature, you can centralize resources critical to understanding the application and make them accessible within the application itself. You can then include the application documentation as part of application configurations in any packages you deploy to new environments. To learn more, check out [application documentation](application-settings.html#application-documentation).
-   With our package preparation features, you can collect the necessary parts of your deployment as you build, so the transition to deployment is straightforward and seamless. In addition to design objects, your prepared packages can include files and configurations needed to support those objects in the target environment, including database scripts, plug-ins, and import customization files. To learn more, check out [package preparation](prepare-deployment-packages.html).

### Test

Testing plays a key part in ensuring the long-term stability of your app and empowers you to make changes quickly and safely. Frequent testing of your application and its parts ensures that you design healthy, efficient, user friendly applications. Testing also helps you on deployment day, because you've tested, anticipated, and resolved issues before your application is set to be deployed.

There are four types of testing you can do with Appian:

-   **Unit testing**: Testing individual parts of the application, such as logic or rules, to validate that each piece performs as expected under various conditions.
-   **UI Testing**: Testing from a user's perspective to make sure your application meets the user's needs.
-   **Performance**: Testing an application and its processes to ensure that it will scale and behave as expected during peak usage or in-production scenarios.
-   **Verification Testing**: Testing an application to be logically correct.

For more information, check out [testing applications](testing-applications.html).

### Deploy

Deploying is moving a set of objects from the source environment to the target environment in order to release updates to your end users. With DevOps practices your deployments are streamlined, fast, and reliable, enabling your team to concentrate on future application improvements.

Deploying incremental application updates to your users is a key part of a successful continuous delivery strategy. Continuous delivery means taking those frequent and consistent updates and regularly deploying them in [packages](prepare-deployment-packages.html). When you consistently deploy updates to your application, you reduce the risk of introducing complicated object dependencies and you can act on user feedback at a faster rate.

The following two sections will give you an overview of the types of changes and deployments.

For more information, check out [Deploy to Target Environments](Deploy_to_Target_Environments.html) and [Prepare a Package for Deployment](prepare-deployment-packages.html).

#### Types of changes

| Deployment Contents | When to Use | More Information |
| --- | --- | --- |
| [Entire application](Deploy_to_Target_Environments.html#prepare-an-application) | Deploy your application configurations and all related design objects. Use if the application does not exist in your target environment. | You can include database scripts and plug-ins with your application deployment. |
| [Package](Deploy_to_Target_Environments.html#prepare-a-package) | Create a package or select an existing package to deploy a set of changes to your target environment. Learn how to [create a package](prepare-deployment-packages.html#create-package). | You can add application configurations, database scripts, and plug-ins to a package during development and when you deploy your package. |
| ONLY [database scripts](Deploy_to_Target_Environments.html#add-db-scripts) or [plug-ins](Deploy_to_Target_Environments.html#add-plugins) | If your application already exists in your target environment and you only need to deploy plug-ins or make changes to the environment's database via scripts, you can deploy these changes without objects. Database scripts and plug-ins can only be deployed to a target environment using compare and deploy if you are an application administrator. | To deploy database scripts and plug-ins without other objects, the application must already exist in your target environment. |
| [Admin Console Settings](Appian_Administration_Console.html) | If you need to change Admin Console settings, you can export specific settings from your source environment and import them into the target environment. You can import an application or package along with Admin Console settings via the Admin Console. | Certain settings that are specific to a given environment cannot be deployed, such as API keys or certificates. |
| [Import customization files](Managing_Import_Customization_Files.html) (ICF) | Use to change or configure the values of certain objects or settings during deployment. Primarily, ICFs specify values that vary between environments or that are not exported for security reasons, such as passwords. You can also use an ICF to dictate specific import behaviors such as forcing an update of unchanged objects or triggering a manual data sync for record types in the target environment. | Appian generates a template import customization file, which you download, edit, and upload for deployment. |

#### Types of deployments

| Deployment Type | What It Is | When To Use It | Additional Considerations |
| --- | --- | --- | --- |
| [Compare and Deploy](Deploy_to_Target_Environments.html#compare-and-deploy) | Directly deploy applications, packages, plug-ins, and database scripts across environments with guided steps. | Use it if you have connected environments in your infrastructure. | You must have administrator permissions for the application in order to do a direct deployment using compare and deploy. |
| [Manual Import and Export](Deploy_to_Target_Environments.html#manual-export-and-import) | Manually import and export applications and packages between environments. | Use it if you don't have connected environments added to your infrastructure. | Post-deployment processes aren’t supported for manual import and export. |
| [External Deployments](Deploy_to_Target_Environments.html#prodlink-external-deployment-apis) | Five [native API endpoints](Deployment_Rest_API.html) that allow you to deploy programmatically. The APIs for incoming deployments allow you to inspect and import applications, packages, import customization files, database scripts, plug-ins, and admin console settings. The APIs for outgoing deployments allow you to export applications and packages, as well as all corresponding resources for packages (including database scripts, plug-ins, and customization files). | Use if you want to customize your deployment process, programmatically trigger deployments, or integrate your Appian release into an automated pipeline. | Post deployment processes are triggered for external deployments. |

For more information, check out [deploying applications](deploying-applications.html).

### Monitor

Monitoring is continuously checking the health and quality of your application and environment as you expand functionality, deploy changes, and improve the user experience.

Use monitoring to proactively identify issues and inefficiencies in your application, so that you can improve the experience of your users and the performance of your processes. Monitoring also provides additional data that you can use in the planning and development stages to continuously improve your applications.

At any point during your application life cycle, you can check out the [Health Dashboard](appian-recommendations.html#health-dashboard) to monitor the health of your environment or application. The Health Dashboard surfaces runtime information, including metrics and key performance indicators, as well as design-time information in the form of Appian design guidance to ensure that you and your team are following best practices.

Beyond the Health Dashboard, there are two primary types of monitoring: [application performance monitoring](#application-performance-monitoring) and [system monitoring](#monitoring-logs).

#### Application performance monitoring

Application performance monitoring validates that your application is running smoothly and providing value to both you and your users.

When monitoring the performance of your application, be sure to check that the application is:

-   Functional and not producing any errors.
-   Running efficiently.
-   Providing a good user experience.
-   Providing business value.

##### **Using logs to monitor application performance**

When monitoring for application performance, you can use [logs](Logging.html) to:

-   Get a deeper look into both errors and analytics.
-   Help you identify and troubleshoot non-process errors, such as record views or task form errors.
-   Analyze performance, usage, and activity.

#### System monitoring

System monitoring is checking the performance and resource usage of your system. Appian Cloud customers can also monitor the performance of their environments and infrastructure configurations using the [**Cloud Resources**](Cloud_Insights.html) section of [MyAppian](https://forum.appian.com/suite/sites/myappian).

[Health Check](health-check.html) is a tool that analyzes your environment to provide insights into application design patterns and performance risks, as well as environment configurations and infrastructure. It's a best practice to run Health Check regularly and address the results.

For more information, check out [monitoring applications](monitoring-applications.html).

## Next steps

For more information on testing, deploying, and monitoring applications throughout the DevOps lifecycle in Appian, check out the pages found in the left navigation.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...