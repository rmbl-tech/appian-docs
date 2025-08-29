---
source_url: https://docs.appian.com/suite/help/25.3/continuous-improvements-to-your-application.html
original_path: continuous-improvements-to-your-application.html
version: "25.3"
title: "Continuous Integration in Appian"
page_id: "continuous-improvements-to-your-application"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Continuous Integration in Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page discusses how to apply the concept of [continuous integration](devops-with-appian.html) when building your Appian applications.

Continuous integration in Appian means updating your applications frequently and incrementally. The goal of this approach is to reduce the risk of making conflicting changes or a large number of changes all at the same time.

Appian provides a number of features to support this goal. With these features, you can manage collaboration from multiple developers and keep track of changes throughout the application building process.

## Object relationships

Appian objects work together to shape powerful and flexible applications. You can reference objects in multiple places in your application, such as calling an interface in a record. Reusing objects in applications allows you to quickly build functionality and easily maintain your applications. When improving and updating existing applications, designers should take into consideration how their changes will impact supporting objects in the application.

Appian provides tools that allows you to perform an impact analysis of related objects to make it easier to update your applications. We categorize these object relationships as dependents and precedents.

[Dependents analysis](Trace_Relationships_for_Impact_Analysis.html#dependents-and-precedents-view) shows all of the objects that reference the object you are changing. Think of this as the potentially affected radius of your change. You should test all the dependents of an object after making significant changes. You might also need to update the dependents for certain types of changes, for example, deleting a rule input that isn't needed anymore.

[Precedents analysis](Trace_Relationships_for_Impact_Analysis.html#dependents-and-precedents-view) gives you a quick way to see and navigate between all the objects referenced by the selected object. In addition, this analysis gives you an easy way to identify all new precedents to add to your package before deploying it.

![Object Precedents View](images/object-precedents-view.png)

**Tip:**  You can also CTRL/CMD+click on an object's name to open it from an expression.

## Compare object versions

Most Appian objects support [versioning](Managing_Object_Versions.html). Every time you update one of these objects, you create a new version of that specific object. It can be hard to keep track of all the changes to an object when multiple people are updating it. Appian allows designers to compare the latest version of the object with the previous versions, which helps you review and troubleshoot your versioned objects with greater speed and clarity.

Comparing object versions helps you better understand how the object has changed over time in a single environment. You can also [compare application objects across environments](compare-deployment-packages.html) to understand what changes you might want to deploy. Before you promote your changes to another environment, you should review the package contents using this comparison capability. This will allow you to review the changes for every object in your package and catch any required precedents that are missing from your package.

![Object Comparisons](images/devops-object-diffs.png)

## Appian health check

Before testing and deploying your applications, take into consideration how your design decisions will affect users and future development. Appian Health Check is a great way to check that you're following design best practices and find potential areas of improvement in your application. [Appian Health Check](health-check.html) covers four areas: Infrastructure, Configuration, Design, and User Experience.

Run Appian Health Check frequently throughout your application building process to view results for the entire environment. Appian recommends running Health Check at least once per sprint to receive regular feedback about design choices.

For more information about using Appian Health Check to monitor system resources, see [Monitoring Applications](monitoring-applications.html).

## Backwards compatibility

Whenever you make a change to your application, you should always make sure it doesn't affect any other processes or objects that rely on it. It is important to plan for [backward compatibility](https://community.appian.com/w/the-appian-playbook/162/backward-compatible-design-planning-for-subsequent-deployments) and do [regression testing](testing-applications.html) to ensure that you can deploy with confidence.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...