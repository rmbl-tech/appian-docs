---
source_url: https://docs.appian.com/suite/help/25.3/Managing_Import_Customization_Files.html
original_path: Managing_Import_Customization_Files.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Managing Import Customization Files

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page provides general guidance and best practices for creating, managing, and maintaining import customization files.

## Overview

An import customization file allows you to change or configure the values of certain objects or settings during manual import, direct deployment, or external deployment. This file lets you set values that vary between environments or that are not exported for security reasons, such as passwords.

You can customize the import of the following:

-   [Admin Console settings](Appian_Administration_Console.html#import-export-admin-console)
-   [Environment-specific constants](Application_Deployment_Guidelines.html#environment-specific-constants)
-   [Integrations](Application_Deployment_Guidelines.html#environment-specific-integration-fields)
-   [Connected systems](Application_Deployment_Guidelines.html#connected-systems)

You can also use the import customization file to:

-   [Import unchanged objects](#importing-unchanged-objects) in a target environment.
-   [Trigger a sync](#trigger-a-sync) of a record type in the target environment.

## Security

When configuring properties in an import customization file, you'll need knowledge of and access to applicable sensitive data such as data source passwords or third-party credential values.

To manage import customization files for Admin Console settings, you'll need a System Administrator account in all environments.

To manage import customization files for design objects, you'll need a [basic user](User_Management.html#manage-user-rights-and-security) assigned the [Designer user role](User_Roles.html) and the appropriate permissions for the application:

-   With **Viewer** permissions for the application, you can add an import customization file to a manual import, a package that you've created, or a deployment that you're initiating.
-   With **Administrator** permissions for the application, you can add an import customization file to any package associated with the application or during any direct deployment.

## Configure your file

To configure an import customization file:

1.  [Download the template file](#download-a-template-file) from Appian.
2.  [Gather the values](#gather-the-values-youll-need) you'll need to configure the file.
3.  [Edit the file locally](#edit-the-file-locally).
4.  [Upload the file](#upload-the-file) to Appian.

### Download a template file

Appian generates a template import customization file with the extension `.properties`. The template file contains both the properties you can configure and instructions for configuring those properties.

You can download a template file when you:

-   [Export](Appian_Administration_Console.html#export) Admin Console settings.
-   [Export](Deploy_to_Target_Environments.html#export-manually) an application or package. This download is only possible if the application or package contains objects for which you can customize import, or if the prepared package contains an import customization file.
-   [Prepare](prepare-deployment-packages.html#add-icf) a package for deployment.
-   [Deploy](Deploy_to_Target_Environments.html#compare-and-deploy) an application or package using direct deployment.

#### Template file contents

The template file contains properties appropriate to the settings or object in the related application or package:

-   For Admin Console settings, the properties correspond to the settings you chose during export.
-   For an application or prepared package, the properties correspond to any objects in the application or package that require customization.

For constants and non-sensitive Admin Console settings, the template file includes the current environment's values for the corresponding properties. For all other objects or settings, the property in the template is blank. You'll need to add sensitive and environment-specific data manually.

Some import customization properties require the UUID of the object you want to customize. After you configure a constant, integration, or connected system in an application, the template customization file you download includes the UUID for that object in the appropriate properties.

### Gather the values you'll need

-   Gather the sensitive data you'll need for the target environment, such as data source passwords or third-party credential values.
-   Some customizations require the UUID of the object you want to customize, but the UUID is not included in the template import customization file. For these customizations, look up the object UUID in the **Properties** for the object.

### Edit the file locally

When editing, keep the following in mind:

-   The system ignores commented-out lines, which start with a `#`. By default, all properties in a template file are commented out.
-   The system ignores lines that reference a setting or object that cannot be customized or is not in the import package.
-   If you uncomment a line in the import customization file for a valid property but do not put anything on that line, the value will be set to null.
-   The system will set the value to whatever is specified between the `=` character and the next line break, including any whitespace.

To edit an import customization file:

1.  Open the file in a text editor.
2.  For each property you want to customize:
    -   Remove the `#` from the beginning of the line.
    -   Edit or add a value after the `=` character.
    -   Add lines to consolidate multiple import customization files.
3.  Save your changes.

### Upload the file

You can upload an import customization file when you:

-   Prepare a [package](prepare-deployment-packages.html) or perform a [direct deployment](Deploy_to_Target_Environments.html#compare-and-deploy) in Appian Designer.
-   Perform an import in either the [Admin Console](Appian_Administration_Console.html#import-export-admin-console) or [Appian Designer](Deploy_to_Target_Environments.html#manual-export-and-import).
-   Perform an import using `ImportExportService`. For more information, see the [Appian Public API](api/).

## Update a file

As you build and enhance your application, you're likely to add, update, or remove objects that impact the import customization file.

If you've added the import customization file to a package, you can make those updates in the package, as follows:

1.  Download the current file from the package.
2.  Make the updates locally.
3.  Remove the current file from the package.
4.  Upload the updated file to the package.

Learn more about [taking these actions on import customization files in packages](prepare-deployment-packages.html#add-icf).

If you're storing the import customization file locally, rather than in a package, you'll need to make the updates in your local copy, then upload the updated file during development or during deployment.

## Reuse a file

The first time you deploy to a target environment, your import customization file should contain properties for relevant Admin Console settings and design objects.

For subsequent deployments, you can take either of the following approaches:

-   Leave the properties from the first deployment in the file, but exclude related settings or objects from the next import or deployment. Appian only applies properties in an import customization file to the target environment if the imported or deployed package contains the related setting or object.
-   Comment out the lines in the file, so you can guarantee that the values will not be overwritten if the related settings or objects are included in the import or deployment.

For example, you can use constants to hold values that are unique to each environment but are not static. These [environment-specific constants](Application_Deployment_Guidelines.html#environment-specific-constants) include:

-   Constants containing values updated using the [Update Constant smart service](Update_Constant_Smart_Service.html).
-   Constants that are used as global counters whose values are used and then incremented to the next value using the [Increment Constant smart service](Increment_Constant_Smart_Service.html).
-   Constants that are used as feature toggles in an application's logic that may change over time.

For these constants, we recommend commenting out the lines in the import customization file to prevent overwriting the value in the target environment.

## Manage multiple template files

As you prepare your application for deployment, you may need to download multiple import customization files to obtain setting-specific or object-specific properties. For example, the first time you deploy to a new environment, you might need to deploy relevant Admin Console settings and design objects that need customization. In this case, you'd have to download two template files: one in the Admin Console and one in the package view.

You can only use a single import customization file per interaction with the target environment—one file per deployment or import. As a result, you must consolidate customizations from separate template files into a single file for deployment or import. See the [consolidated file example](#consolidated-file).

When creating a consolidated file, we recommend grouping similar lines together, so they are easily discoverable. For example, keep all constants in their own section.

## Manage multiple environments

We recommend that you maintain a single import customization file for _each_ environment in your deployment pipeline. This way, you can manage all the environment-specific values for Admin Console settings and design objects for a single environment in one place.

You can continue to use the same environment-specific file for every import on that environment, since non-applicable properties will be ignored.

Whenever development introduces new values that will require customization, you should add the appropriate properties with applicable values to each environment-specific file.

## Import unchanged objects

It is a best practice to deploy applications using a System Administrator service account, so process models that are configured to run as their designer will have the proper permissions and not be at risk of the designer user becoming deactivated. If you accidentally deploy an application with a personal account, you can add a setting to the import customization file to force the re-deployment of the unchanged objects.

To re-deploy the exact same application using a different user account, add the following lines to your import customization file and include it with your application deployment:

```
1
2
3
## Import Setting: Force Update
## Forces the import of objects that were detected to be Not Changed on inspect/import
importSetting.FORCE_UPDATE=true
```

For more information about the Not Changed status, see [Compare Deployment Packages](compare-deployment-packages.html#object-comparison-statuses) and [Resolve Deployment Issues](resolve-deployment-issues.html#reading-deployment-logs).

## Trigger a sync

If [data sync](about-data-sync.html) is enabled for a [record type](Record_Type_Object.html), a sync will automatically occur whenever that object is deployed to a new environment.

However, you'll need to trigger a sync if you deploy a package that doesn't include the record type, but impacts the synced data. For example, your deployment might include database scripts affecting the data source for the record type.

**Note:**  If you prefer not to force a sync, you can wait for the next [scheduled sync](records-data-sync.html#schedule-full-syncs) of the record type or [manually start a sync](records-data-sync.html#manual-full-syncs) in the record type object directly in the target environment.

To trigger a sync when you deploy a package to a target environment, add the following property to the import customization file:

`recordType.<UUID of a Record Type>.forceSync=true`

You can reference this property multiple times to trigger a sync on different record types.

For example:

```
1
2
recordType.63e19e09-eb15-43e3-9864-a1ca4d9ece06.forceSync=true
recordType.548ac877-5baf-4677-b180-500c9ec96f38.forceSync=true
```

## Examples

We've included a few examples of import customization properties here for your reference.

**Note:**  Don't copy and paste these examples in whole or in part when you're configuring your import customization file. Instead, download the template import customization file for the up-to-date properties and values specific to your environment.

### General instructions

The top portion of each template file consists of general instructions.

\## ----------------------------------------------------------------------
## Instructions
##
## All of the properties in this file are commented out; they have a pound
## symbol at the start of each line that renders them inert.
##
## Instructions and headings are marked with two preceding pound
## symbols (##).
##
## On import, all commented-out properties are ignored, and the
## corresponding values in the destination environment remain
## unchanged.
##
## To set or change a property on import using this file,
## uncomment the property by removing the pound symbol from the start
## of its line. Then enter a value for the property after the equals
## sign (=) at the end of that import customization file.
##
## If you uncomment a property, but provide no value, the value of
## that property will be set to null in the destination environment.
## Properties that correspond to Admin Console settings and require a value
## will be set to their default value instead of being set to null. Default
## values of settings may be different between versions of Appian.
##
## To force sync of a record type please add an entry to the file in the following format
## recordType.\\<UUID\\>.forceSync=true
##
## To force import unchanged objects add the following line in the file
## importSetting.FORCE\_UPDATE=true
##
## Note: Never remove the double pound symbols (##) in front of instructions
## and headings.
## ----------------------------------------------------------------------

### Admin Console settings

The following example shows properties corresponding to a small set of Admin Console settings.

\## Administration Console Setting: Third-Party Credentials
## Name: Jira
thirdPartyCredentials.6f59ef17-672d-444c-9c1c-31410474aad0.username=jira.system
thirdPartyCredentials.6f59ef17-672d-444c-9c1c-31410474aad0.password=1password!

## Administration Console Setting: Data Source
## Name: jdbc/LegacyDB
## Valid types: MySQL, MariaDB, Oracle, SQL Server, PostgreSQL, DB2
dataSource.935f04f8-e8ac-449f-8410-d9ac13cac74e.USERNAME=db.user
dataSource.935f04f8-e8ac-449f-8410-d9ac13cac74e.PASSWORD=1234abcd
#dataSource.935f04f8-e8ac-449f-8410-d9ac13cac74e.TYPE=
#dataSource.935f04f8-e8ac-449f-8410-d9ac13cac74e.CONNECTION\_STRING=

### Environment-specific constant

The following example shows a property that corresponds to an environment-specific constant.

In this example, the line representing the constant has been uncommented and configured.

\## Constant: CO\_WEB\_SERVICE\_URL
## Type: Text
##
## Text values will be displayed in Appian exactly as they are
## specified here. No spaces are trimmed. Values do not need to be
## encased in quotation marks.
content.\_a-0000de3d-42e6-8000-1c9f-01ef9001ef90\_5573.VALUE=https://testsite.com/BLZService?wsdl

### Integration

The following example shows properties related to an integration.

\## Integration: HRO\_getCaseInfo
#content.ad5ce05d-a7d6-482e-842e-54bcfd5126f8.username=
#content.ad5ce05d-a7d6-482e-842e-54bcfd5126f8.password=

### Connected system

The following example shows properties related to a connected system.

\## Connected System: HR0 Google Drive
#connectedSystem.\_a-0000e7b6-ab5d-8000-9e38-011c48011c48\_32396740.baseUrl=https://www.google.com
#connectedSystem.\_a-0000e7b6-ab5d-8000-9e38-011c48011c48\_32396740.username=
#connectedSystem.\_a-0000e7b6-ab5d-8000-9e38-011c48011c48\_32396740.password=

### Consolidated file

This example contains properties for Admin App settings and a constant.

\## Administration Console Setting: Third-Party Credentials
## Name: Jira
thirdPartyCredentials.6f59ef17-672d-444c-9c1c-31410474aad0.username=jira.system
thirdPartyCredentials.6f59ef17-672d-444c-9c1c-31410474aad0.password=1password!

## Administration Console Setting: Data Source
## Name: jdbc/LegacyDB
## Valid types: MySQL, MariaDB, Oracle, SQL Server, PostgreSQL, DB2
dataSource.935f04f8-e8ac-449f-8410-d9ac13cac74e.USERNAME=db.user
dataSource.935f04f8-e8ac-449f-8410-d9ac13cac74e.PASSWORD=1234abcd
#dataSource.935f04f8-e8ac-449f-8410-d9ac13cac74e.TYPE=
#dataSource.935f04f8-e8ac-449f-8410-d9ac13cac74e.CONNECTION\_STRING=

## Constant: CO\_WEB\_SERVICE\_URL
## Type: Text
##
## Text values will be displayed in Appian exactly as they are
## specified here. No spaces are trimmed. Values do not need to be
## encased in quotation marks.
content.\_a-0000de3d-42e6-8000-1c9f-01ef9001ef90\_5573.VALUE=https://testsite.com/BLZService?wsdl

### Credentials in a robotic task

This example shows how to deploy [credentials](rpa-9.17/security-rpa.html#credentials) referenced by a robotic task.

\## Robotic Task Section bf43689c-f890-4545-bf20-b50d8ebb7b98 (AB\_LoginOutlook)
## Credential Application: Outlook
##
## Text values will be displayed in Appian exactly as they are
## specified here. No spaces are trimmed. Values do not need to be
## encased in quotation marks.
#roboticTaskDesignObject.bf43689c-f890-4545-bf20-b50d8ebb7b98.credential.649d869889afc1250bf30406.username=outlook.user1
#roboticTaskDesignObject.bf43689c-f890-4545-bf20-b50d8ebb7b98.credential.649d869889afc1250bf30406.password=

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...