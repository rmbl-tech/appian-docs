---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/setting-up-the-solution.html
original_path: kyc-23.3.1.6/setting-up-the-solution.html
version: "25.3"
title: "How to Set Up Connected KYC"
page_id: "kyc-23.3.1.6/setting-up-the-solution"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How to Set Up Connected KYC

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected KYC, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

After [installing Connected KYC](installing-the-solution.html), there are several configurations you will likely perform to customize the solution for your organization's processes. In order to make sure your solution remains flexible, scalable, and aligns with best practices, we have provided instructions to guide you through some of the most common configurations.

This page outlines the order we recommend for configuring the default solution to work for your organization after completing the installation process. However, all of these instructions can be used to modify the solution at any time.

**Note:**  Updates in Appian Designer should be done with caution by someone familiar with Appian development.

### Modifying objects

To make sure you always have the default interfaces, expression rules, and process models to refer back to, we suggest performing the following steps if you need to customize the solution:

-   Create copies of the interfaces, expression rules, and process models you want to update.
-   Name them with the suffix of _CUSTOM_. For example, something different than `AS_KYC_FM_InvestigationSummary_CUSTOM`.
-   Use your new objects instead of the original objects.

**Tip:**  Do not create copies of the CDTs. This would require you to update every reference to the CDT in the application. Instead, just modify the default CDTs provided in the application.

Following this paradigm will reduce the time and effort required to upgrade or add an additional Connected FS solution to your environment.

## Step 1: Configure user groups and security

Configuring user groups and security is a good place to start.

You will need to know:

-   If your organization has any additional business roles that are not covered in the default business groups.
-   What users should be members of each business group.

For more information on how to configure groups and security, see the following pages:

-   See [Modifying Groups](modifying-groups.html) to understand how to modify groups to fit your organization, as well as how to add users to the appropriate groups.
-   See [Groups Reference Page](groups-reference-page.html) for more information about the default groups in Connected KYC and what they provide access to.
-   See [Managing Group Membership](setting-up-groups.html) for instructions on adding users to groups from the front-end Connected FS Settings site.

## Step 2: Set default system behavior

The following solution behaviors can be configured by simply updating certain constants:

-   Enabling or disabling comment notification.
-   Turning integrations on or off.
-   Setting the default currency.

## Step 3: Configure the create a new Investigation process

The [create a new Investigation process](create-new-investigation.html) consists of the following data-entry steps:

1.  Choose a customer.
2.  Provide Investigation details.

These steps can be modified to fit your organization's processes and data requirements by [configuring investigation values](#configure-investigation-values), [fields, labels](#configure-fields-and-ui-text), and [validations](#configure-validations).

### Configure investigation values

The Create New Investigation form includes several key dropdown values that allow you to tailor the solution's Investigation process to match your organization's requirements and needs. In order to adapt Connected KYC for your organization, a business user can easily set these values and relationships in the **DATA** tab of the Connected KYC settings page.

![data_settings.png](images/data_settings.png)

A business user will be able to set up:

-   The values of account types, customer types, document types, Investigation types, and product types.
-   Document examples to train the IDP classification process.

### Configure dropdown lists

Most dropdown lists that are required for creating an Investigation can be configured by a front end business user in the Connected FS Settings page. The dropdown lists that cannot be set in the Connected FS Settings page are stored in reference tables. A dropdown list type is how you group dropdown list values, such as Entity or Request Status. You can update these values by updating the reference data tables.

![dropdown_list_types_and_values.jpg](images/dropdown.jpg)

You will need to know:

-   What changes are required for the dropdown list values?
-   Do you need any additional dropdown lists?

As long as you haven't loaded any data into the application, deleting unnecessary dropdown list values from the reference data tables should not cause a problem. Solution setup is the only time you should delete any values from reference data tables, and you must do so with care. However, you should never delete the data from a shared table. These include:

-   `AS_FS_R_COUNTRY`
-   `AS_FS_R_CURRENCY`
-   `AS_FS_R_DATA`
-   `AS_FS_R_GLOBAL_INDUSTRY_CLASS`
-   `AS_FS_R_M_CURRENCY`
-   `AS_FS_R_REGION`
-   `AS_FS_R_STATE`

These tables are shared within the Financial Services solutions, were built to work together. If your organization ever decides to use more than one Financial Solution solution, deleting rows from these tables could cause problems. However, adding or editing rows is fine. If you don't need a value from one of these tables, make the value inactive instead of deleting it.

**Note:**  When setting up your solution, do not delete all of the values for a certain dropdown list type. If you do delete a dropdown list type, you will need to remove any references to that dropdown list type in the solution.

For instructions on how to modify these types of reference data, see the following pages:

-   See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for instructions on how to:
    -   Modify the dropdown list values.
    -   Add new dropdown lists types.

### Configure fields and UI text

It is likely that the default fields and UI text throughout the create new Investigation process will not exactly match your organization's requirements. You can configure them to meet your organization's needs.

![Field and label diagram](images/customize-io-field-labels.png)

For each of the create new Investigation data-entry steps, you will want to know:

-   What fields are not applicable?
-   What fields need to be added?
-   What UI text needs to be modified or added?

For instructions on how to modify fields and UI text, see the following pages:

-   See [Modifying Record Fields](modifying-record-fields.html) for instructions on how to add or modify the fields that appear in the solution interfaces and store data.
-   See the [Solutions Hub User Guide](sol-custom-suite-user-guide.html) for instructions on how to modify UI text, including adding a new language.

### Configure validations

The [create new Investigations](create-new-investigation.html) process includes many validations by default, including validations that:

-   Prevent invalid data from being entered into certain fields.

    ![Field validation example](images/validations_field_validation_example.png)

-   Ensure that all of the required information has been entered for an Investigation.

The Modifying Field Validations page describes the default validations and how to modify these validations.

## Step 4: Create Investigation process templates

After you have configured your application, you can create the Investigation process templates to be used during the create new Investigation process. The Investigation process templates determine which tasks will be assigned by default for each new Investigation that is created.

You will need to understand your organization's current Investigation processes including:

-   What categories to organize the tasks by?
-   What are the distinct types of Investigations that have a standard set of tasks?
-   What are all the tasks required to complete the various types of Investigation?
-   What types of tasks will your organization need?
-   Which business groups are responsible for each task?
-   What tasks rely on other tasks to be completed first?
-   What are the expected due dates for each task?

Before you create any templates, you will need to set up the attributes that will be used to select an Investigation template. The out-of-the-box, Investigation templates selected are based on the **Investigation Type** and **Region** of the Investigation. See the [Solutions Hub User Guide](sol-custom-suite-user-guide.html) for instructions on how to customize these attributes. See Template Selection Attributes.

You will also need to confirm which key dates the task due dates should be based on. By default, the task due dates are based off of the Investigation's target due date. You can [modify key dates](modifying-key-dates.html) that are available for calculating task due dates.

When users create new tasks, they can choose from attach document, review, confirmation. If you need different types of tasks, you can add new automated or data entry task types. See [Adding a New Task Type](adding-new-task-type.html#adding-a-new-task-type) for instructions.

![task_types.jpg](images/task_types.jpg)

See [Setting Up Investigation Workflows](setting-up-processes.html) for more information, including how to manage task categories, tasks, and Investigation templates.

![workflow_settings.png](images/workflow_settings.png)

## Step 5: Import existing data

You can migrate data into Connected KYC from other systems that your organization is using. This process is generally very unique and has its own nuances that depend on many factors.

[Migrating Data](migrating-data.html) provides the general steps to move customers, documents, accounts, and products into Connected KYC.

## Step 6: Internationalize display text (_optional_)

If your organization requires it, you can translate all of the text displayed in interfaces into multiple other languages using bundle files and reference data.

Before you begin, you will need translations for all of the text displayed in the UI.

See the [Solutions Hub User Guide](sol-custom-suite-user-guide.html) for instructions on how to modify UI text, including adding a new language.

Internationalizing the Connected KYC application includes:

-   [Modifying UI Text](sol-custom-suite-user-guide.html)
-   [Modifying Dropdown Lists](modifying-dropdown-lists.html)

## Step 7: Set up web APIs and integrations (_optional_)

After you complete the initial setup of the solution, you may want to take advantage of the various capabilities to extend the Connected KYC application.

You can use web APIs and integrations to automatically create new Investigations, classify documents, pull in customer information, and collect signatures.

### Automatically create new Investigations through a web API

Many organizations will be able to create new Investigations automatically by kicking off an Investigation from another application, such as Salesforce.

See Create Onboarding Web API for information on the web API that is used to facilitate automatic Investigation creation.

### Configure integrations

Several integrations are available to be used throughout Connected KYC. These integrations need some initial prerequisite set up and minimal configuration in the [**System Administration Center**](managing-integrations.html#accessing-the-system-administration-center) in order to be used. Using these integrations is completely optional.

The available integrations are:

-   [Companies House](managing-integrations.html#integrating-with-company-house)
-   [DocuSign](managing-integrations.html#integrating-with-docusign)
-   [Dun and Bradstreet](managing-integrations.html#integrating-with-dun-&-bradstreet)
-   [Intelligent Document Processing (IDP)](managing-integrations.html#integrating-with-idp)
-   [Northrow](managing-integrations.html#integrating-with-northrow)
-   [Office of Foreign Assets Control (OFAC)](managing-integrations.html#integrating-with-ofac)

## Step 8: Configure auditing for new fields (optional)

After setting up your initial CDTs, you may want to go back and track specific fields. You can use [auditing](auditing-new-fields.html) to automatically configure this in your solution.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...