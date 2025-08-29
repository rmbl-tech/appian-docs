---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/sol-custom-suite-user-guide.html
original_path: cs-23.3.2.6/sol-custom-suite-user-guide.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Solutions Hub User Guide

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Servicing, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

The Solutions Hub is a standalone site that offers a number of features that allow you to customize your solutions from a centralized dashboard. You can easily access the site from your solution's development environment. If the Solutions Hub is not installed on your development environment, you can follow the [installation guide](sol-custom-suite-install-guide.html) to install the suite.

The Solutions Hub User Guide is your quick reference guide to understanding of all of the features the Solutions Hub has to offer and how to use them to customize different components of your solutions.

## Landing page

When you open the Solutions Hub, you'll see all of the solutions installed on the environment that support customization through the Solutions Hub.

![/sol hub suite landing page](/suite/help/25.3/images/sol_hub_suite_landing_page.png)

To access all of the available customizations for a given solution, click on the solution. If the solution is part of a solution "suite", then an additional **MANAGE SUITE CONTENT** button appears. For example, the Financial Services solution suite contains the Connected Onboarding, Connected Servicing, and Know Your Customer solutions. Any customizations common to all Financial Services solutions can be accessed by clicking the **MANAGE SUITE CONTENT** button.

Once in the context of a particular solution, you will be greeted with an overview of configuration & customization opportunities available for your solution. From here, you'll have the tools you need to configure & customize your Appian solution! There are links to the solution's configuration site(s), navigation tabs to each type of supported customization, and lastly a direct link to Appian Designer.

![/sol hub suite overview](/suite/help/25.3/images/sol_hub_suite_overview.png)

You can easily navigate context between solutions within the solution suite by selecting the desired solution from the dropdown.

![/sol hub suite navigate between solutions](/suite/help/25.3/images/sol_hub_suite_navigate_between_solutions.png)

## Types of customizations available

Connected Servicing 23.3.2.6 supports the following customization categories. Each solution offers a varying degree of supported customization templates within each category.

### Branding

The branding section allows you to customize your solution to match your organization's name, logos, and colors.

You won't have to go into multiple site objects on the back-end to configure the branding across your solution. It's all taken care of via the Solutions Hub. The best part? When you use the suite to customize the branding for your solution, you won't have to reapply the customizations when you upgrade your solution to the latest version.

The **BRAND** section allows you to quickly and easily customize the following three brand elements for a selected solution:

-   Organization\*
-   Logos
-   Colors

![/sol hub suite brand tab generic](/suite/help/25.3/images/sol_hub_suite_brand_tab_generic.png)

Branding changes made here impact the selected solution only, they do not affect the Solutions Hub branding. It's important to navigate to each solution's sites to view any branding changes you made.

**Note**: the organization name is visible only if your solution supports it.

#### Organization

The organization name should be reflective of your organization or company name.

This value is used in instances where the solution needs to refer to your organization. If left blank, the default name (typically the solution name) will take effect.

To update your organization name, click **UPDATE**. The UPDATE ORGANIZATION dialog will open, which allows you to update your organization name and save the changes.

![/brand org name section](/suite/help/25.3/images/brand_org_name_section.png)

#### Logos

You can update logos to match your brand. Logos include the site logo that end users see within the solution's sites, as well as the favicon that appears in a user's active Web browser tab.

![/brand logos section](/suite/help/25.3/images/brand_logos_section.png)

To update the logos in your solution, click **UPDATE**. The UPDATE LOGOS dialog displays with the current file for each image. Hover over the image you want to replace, and click **X** to remove the current file. Then, simply upload a new image. Site logo file types must be PNG. Favicon file types must be ICO. Be sure to save your changes when you are finished updating your logo or favicon file.

![/brand logos edit modal](/suite/help/25.3/images/brand_logos_edit_modal.png)

#### Colors

The branding section gives you control over the color palette that is used in the solution. Colors are used throughout your solution, from accenting selected items, to providing color to charts. This offers you the ability to set component colors for your solution, such as:

-   Accent Color
-   Selected Highlight Color
-   Navigation Bar Color
-   Loading Bar Color

If a solution utilizes charts, you can even set the color palette that is used to render the charts. An extended range of colors beyond the base set listed above may be available for certain solutions.

![/brand colors section](/suite/help/25.3/images/brand_colors_section.png)

To modify the colors in your solution, click **UPDATE**. The UPDATE COLORS dialog appears, which allows you to change the color of each presented field. Colors must be entered as valid hex codes.

Chart colors include pre-set color schemes, or you can enter your own set of hex codes by selecting **CUSTOM**

![/brand colors edit modal](/suite/help/25.3/images/brand_colors_edit_modal.png)

Once you have made your edits, click **UPDATE** to save your changes.

### Text

The Solutions Hub provides a quick and comprehensive means to customize the text that ships with a solution without impacting future upgrades. This includes editing text that comes with the solution and adding new text.

Within the Solutions Customization Suite, navigate to **CONFIGURE & CUSTOMIZE –> TEXT**.

![/sol hub suite text tab fs](/suite/help/25.3/images/sol_hub_suite_text_tab_fs.png)

Using the language bar, first select the language for which you want to make changes. By default, English (en\_US) is selected. Available languages include any that ship with the solution, or languages for which you added support.

![/language bar](/suite/help/25.3/images/language_bar.png)

Once a language is selected, a grid shows all of the text within the solution for that language. The key, text, and status are shown on each card:

![/text card anatomy](/suite/help/25.3/images/text_card_anatomy.png)

To narrow down the text set, there is a search component that allows full or partial searches on either the text key or value.

A status filter allows for easy filtering of the results. Text can have one of three statuses:

-   **Default**: Text that is set to its out of the box value.
-   **Edited**: Text that is modified from its default value.
-   **Custom**: Text that has been added by a customer.

![/text filter bar](/suite/help/25.3/images/text_filter_bar.png)

When a text card is selected, additional attributes can be viewed:

-   **Key**: This is the unique identifier for a piece of text within a bundle file; the key appears on the top of the text card and the details section.
-   **Text**: The value the text is currently set to and how it shows up to end users when the key is called.
-   **Status**: Identifies the _current_ status of the text.
-   **Language**: This is the locale that this bundle file represents (e.g., en\_US for English - United States).
-   **Bundle Folder**: This is the Appian folder that contains the bundle file where the text is stored.
-   **Bundle File**: This is the properties file that contains the text being viewed. The date and time displayed is when the file was last updated.

![/text metadata](/suite/help/25.3/images/text_metadata.png)

#### Editing text

To modify the text value, select a text card in the grid, and click **UPDATE**.

![/update text button](/suite/help/25.3/images/update_text_button.png)

From here you can change the value of the text to your choosing. Click **UPDATE** to commit the change.

![/text update modal](/suite/help/25.3/images/text_update_modal.png)

#### Adding custom text

To add new text to the solution, click **ADD TEXT**.

![/add text button](/suite/help/25.3/images/add_text_button.png)

An in-line form appears. Enter a unique key that will serve as the reference to this text when calling it in your custom expressions, followed by the text value. If there are multiple bundle files present in the solution, you will first need to select the applicable one.

![/add text form with bundle populated](/suite/help/25.3/images/add_text_form_with_bundle_populated.png)

Click **SAVE**. A confirmation dialog indicates that the text was added successfully.

![/add text confirmation](/suite/help/25.3/images/add_text_confirmation.png)

#### Reverting text to default

There may be times when you want to change text back to its default value. Click into the text card of the edited text that you want to revert.

Click **REVERT TO DEFAULT** and confirm that you would like to make the change. This action cannot be undone, though you can always edit the text again if desired.

![/text revert to default button](/suite/help/25.3/images/text_revert_to_default_button.png)

#### Deleting custom text

There may be times when you no longer need the custom text that you added to the solution. Maybe the solution's latest version now ships with a feature that covers the use case of a customized report.

In these instances, you can delete custom text by clicking into a custom text card.

Click **DELETE** and confirm that you would like to delete the text. This action cannot be undone.

![/text delete button](/suite/help/25.3/images/text_delete_button.png)

It is important to know that deleting custom text does not mean that any customized functionality in which the text is used is also deleted. Be sure you delete or remove access to any customized front-end reports, records, or sites if you intend to fully restrict access to a former customization.

#### Working with Arguments

In `[%1] is currently closed`, `[%1]` is an argument. When working with arguments, keep the following in mind:

-   If the default label does not have arguments, your custom label can not have arguments.
-   If the default label does have arguments, your custom label can have arguments, but does not have to.
    -   Your custom label cannot use different arguments and cannot use more arguments than the default label.
-   Make sure the syntax of the translated value stays the same as the default. For example, use `[%1]`, not `###1###` or `{1}`.

### Images

You may want to modify the images that ship with your solution to fit your corporate brand. Image customization involves uploading new images via the Solutions Hub. Image customizations replace the default images that shipped with your solution. These changes persist even on solution upgrades.

To perform an image customization, navigate to **CONFIGURE & CUSTOMIZE –> IMAGES**. The Images section displays all of the default images that shipped with the solution and are available for customization.

![/images section](/suite/help/25.3/images/images_section.png)

When you click **UPDATE**, the UPDATE IMAGES dialog appears with the current file for each image. Hover over the image you want to replace, and click **X** to remove the current file.

![/image edit modal](/suite/help/25.3/images/image_edit_modal.png)

Then, simply upload a new image. Newly uploaded images must be the same file type as the original image.

![/image edit modal upload](/suite/help/25.3/images/image_edit_modal_upload.png)

Once you are finished making changes, click **UPDATE**. Any modifications to images you made will persist, even if upgrading to a new version of the solution.

### User Interface

User Interface is a functional customization that includes any customization templates that have been exposed by the solution’s product engineers to allow you to:

-   Slot in an open concept interface
-   Replicate a component
-   Modify an existing interface

See [Functional Customizations](#functional-customizations) for guidance on how to perform, edit, or revert a user interface customization.

#### Trends tab

Reports for Connected Servicing can be viewed on the **TRENDS** tab. If there are additional reports to add, developers can surface these easily in another tab on the **TRENDS** page. When following the Solutions Hub contract, this additional tab will automatically appear and show the extra reports.

You can access this UI customization from the Functionality tab.

To customize the trends tab:

1.  From the **Solutions Hub**, select **Connected Servicing** from the side navigation menu.
2.  Select **Functionality**.
3.  From the **Trends Report Display** card, click **CUSTOMIZE**.

    ![customization_trends_tab_cs.png](/suite/help/25.3/images/customization_trends_tab_cs.png)

#### Home page

There are several pieces of the Connected Servicing home page that are easily customizable. The home page service request grid can have filters or columns customized and users can also easily add new home page actions.

You can access these UI customizations from the Functionality tab.

To customize the home page:

1.  From the **Solutions Hub**, select **Connected Servicing** from the side navigation menu.
2.  Select **Functionality**.
3.  From either the **Home Page Actions**, **Columns For Home Page Service Request Grid**, or **Additional Service Request Grid Filters** cards, click **CUSTOMIZE**.

    ![customization-home_page_cs.png](/suite/help/25.3/images/customization-home_page_cs.png)

#### System Administration Site

Additional integrations to be managed from the **System Administration Site** can be added from the Solutions Hub.

You can access this UI customization from the Functionality tab.

To customize the System Administration Site:

1.  From the **Solutions Hub**, select **Financial Services Suite** from the **Solutions** dropdown menu.
2.  Select **Functionality**.
3.  From the **Additional System Admin Center Integrations** card, click **CUSTOMIZE**.

    ![customization_content_system_admin_sites.png](/suite/help/25.3/images/customization_content_system_admin_sites.png)

### Workflow

Workflow is a functional customization that includes any customization templates that have been exposed by the solution’s product engineers to allow you to extend an existing process.

Process extension is useful in situations where you may want to take action upon completion of out of the box processing. Examples include:

-   Writing to an external database
-   Storing generated documents in a document repository
-   Calling an integration

See [Functional Customizations](#functional-customizations) for guidance on how to perform, edit, or revert a workflow customization.

#### Kickoff Automated Process Time

You can manage the default rule controlling the kickoff time of any daily, automated processes in the Financial Services Suite. These processes should be scheduled to run during user off hours to minimize the chance that any users experience slowness in the application due to bulk process operations.

You can access this business logic customization from the Functionality tab.

To customize the **Kickoff Automated Process Time**:

1.  From the **Solutions Hub**, select **Financial Services Suite** from the **Solutions** dropdown menu.
2.  Select **Functionalty**.
3.  From the **Off Hours Automated Processes Kickoff Configuration** card, click **CUSTOMIZE**.

    ![customization_businesslogic_offhours_automate_process.png](/suite/help/25.3/images/customization_businesslogic_offhours_automate_process.png)

### Business Logic

Business logic is a functional customization that includes any customization templates that have been exposed by the solution’s product engineers to allow you to:

-   Adjust conditional content
-   Modify data loads
-   Adjust static values
-   Modify a logical expression

See [Functional Customizations](#functional-customizations) for guidance on how to perform, edit, or revert a business logic customization.

#### Risk score settings

Risk score is displayed in several locations throughout Connected Servicing. A numeric score with an associated red, amber, green color is the default view. This risk score format can be easily customized from a single location. Thresholds for the red/amber/green can also be set.

You can access this business logic customization from the Functionality tab.

To customize the risk score display:

1.  From the **Solutions Hub**, select **Financial Services Suite** from the **Solutions** dropdown menu.
2.  Select **Functionality**.
3.  From the **Risk Score Levels and Display** card, click **CUSTOMIZE**.

![risk_score_display.png](/suite/help/25.3/images/risk_score_display.png)

## Functional customizations

This section outlines the methodology for performing, editing, and reverting functional customizations.

### Performing a customization

To perform a customization, find the supported customization template that best matches your customization use case. Navigate to **CONFIGURE & CUSTOMIZE –> FUNCTIONALITY** within the context of the solution you want to customize.

The title and description of the supported customization template provide contextual clues as to where in the solution the customization occurs.

For example, let's say you want to customize your solution's landing page so that it includes a link to custom content. On the existing landing page, shown below, you want to add a new "Training" link.

![/solution layer supported customization target interface](/suite/help/25.3/images/solution_layer_supported_customization_target_interface.png)

After searching the available customization templates, and finding the template you want to customize, click **CUSTOMIZE**.

![/supported custom customize selection](/suite/help/25.3/images/supported_custom_customize_selection.png)

A confirmation dialog appears, indicating that a new object will be created on the backend. Click **YES**.

![/supported custom customize confirm dialog](/suite/help/25.3/images/supported_custom_customize_confirm_dialog.png)

When the customization template state refreshes, as shown below, click **EDIT** to begin customizing.

![/supported custom edit revert to default selection](/suite/help/25.3/images/supported_custom_edit_revert_to_default_selection.png)

A new tab opens in Appian Designer that allows you to begin customizing the code. You'll see detailed how-to instructions on performing the customization within the commented code.

![/supported custom inline code docs 1](/suite/help/25.3/images/supported_custom_inline_code_docs_1.png)

You'll see the modifiable code block with a defined example commented out.

![/supported custom inline code docs 2](/suite/help/25.3/images/supported_custom_inline_code_docs_2.png)

Use the detailed steps and example to perform your customization. When you are finished, save your changes.

View the example below to see how we customized a new “Training” link to the landing page.

![/supported custom inline code example](/suite/help/25.3/images/supported_custom_inline_code_example.png)

Finally, navigate to the area in your solution where you expect the customization to appear and verify the results. In our example, we can see that the new “Training” link was successfully added to the landing page. When the user clicks the link, they are redirected to the URL we specified in the customization.

![/solution layer supported customization UI content](/suite/help/25.3/images/solution_layer_supported_customization_UI_content.png)

Congratulations, you have successfully customized your solution. Your changes will persist when you upgrade to a new solution version!

### Editing a customization

Maybe your business requirements have changed and you need to tweak the functionality of your supported customization. To edit a customization, simply navigate to the customization template, and click **EDIT**.

![/supported custom edit revert to default selection](/suite/help/25.3/images/supported_custom_edit_revert_to_default_selection.png)

The template will open in a new tab in Appian Designer where you can view the latest saved version of your customization.

Make the required changes and save the modified objects. Verify the intended results are displayed in the frontend of your solution.

Don’t forget to [deploy](#deploying-customizations) your customizations when finished!

### Reverting a customization

If you find that the latest version of an out-of-the-box feature in the latest solution release addresses your customization use case, you may want to adopt the new feature and revert your customization back to the default behavior.

Navigate to the appropriate customization template and click **REVERT TO DEFAULT**.

![/supported custom edit revert to default selection](/suite/help/25.3/images/supported_custom_edit_revert_to_default_selection.png)

After understanding the impacts of this type of customization change, click **YES** on the confirmation dialog. The default out-of-the-box solution behavior will overwrite your customization so that it is no longer present in the solution.

![/supported custom revert to default confirm dialog](/suite/help/25.3/images/supported_custom_revert_to_default_confirm_dialog.png)

## Deploying customizations

To deploy your customizations to a higher environment, click the **DEPLOYMENT** tab under the solution you want to deploy.

Answer the series of questions to dynamically generate the required deployment steps on-screen. Follow the steps shown to deploy your solution to a higher environment.

Below is an example of answering these questions and the rendered deployment steps:

![/sol hub suite deployment guidance tab](/suite/help/25.3/images/sol_hub_suite_deployment_guidance_tab.png)

## Deploying configurations

You've got your reference data and configurations entered and tweaked just perfectly in your development environment. Maybe you even ran through some User Acceptance Testing (UAT) with all the right data and settings in your test environment.

You're ready to go live.

With the Solutions Configuration Export & Import capability you no longer need to reconfigure settings or re-enter reference data within your solution across multiple environments. In addition, you do not have to run complicated data migration scripts from one environment to another. Simply select which configuration groups you want to export and then import them into your target environment.

### When to use Solutions Configuration Export & Import

So when should you use the Solutions Configuration Export & Import feature? After installing and setting up your solution, you configure all your reference data in TEST for UAT and later want to move them over to production for go-live. Solutions Configuration Export & Import allows you to easily transfer configurations in TEST to production, simplifying your deployment steps.

Do you have your admins update values or settings in the production environment and want to simulate these in lower environments to test a new customization? Simply take the desired configurations from PROD to DEV with our export & import capabilities.

Configuration Export & Import is available for select solutions within the Solutions Hub. To determine if your solution has this capability, access the Solutions Hub and navigate to **Deploy > Configurations**. The Solutions Hub will display 3 options: **Export**, **Import**, and **View History**.

![sol_hub_suite_config_tab](/suite/help/25.3/images/sol_hub_suite_config_tab.png)

### Export

To export a set of configurations, navigate to **Deploy > Configurations** and click **Export**.

All configuration groups available for export display within the modal. Configuration groups are a set of configuration tables associated by foreign key constraints and thus need to be written together to ensure that referenced foreign keys are available during export & import activities.

Select one or more configuration groups to export, and click **Export Selected**.

![sol_hub_suite_config_export_selection](/suite/help/25.3/images/sol_hub_suite_config_export_selection.png)

If export was successful, you will be able to download the configurations. Click **Download Configuration File**. A JSON file will be available for download.

![sol_hub_suite_config_export_download](/suite/help/25.3/images/sol_hub_suite_config_export_download.png)

If an error occurred during the export process, the system will provide context as to why the export errored.

To return to the Configurations page, simply exist out of the modal dialog.

### Import

To import a set of configurations previously exported from another environment, navigate to **Deploy > Configurations** within the target environment's Solutions Hub and click **Import**.

You will be prompted to upload the configuration file. Ensure you have the correct file and drag and drop it into the file upload field. If you receive any validation errors, correct the file, upload it again, and click **NEXT**.

![sol_hub_suite_config_import_file](/suite/help/25.3/images/sol_hub_suite_config_import_file.png)

![sol_hub_suite_config_import_file_uploaded](/suite/help/25.3/images/sol_hub_suite_config_import_file_uploaded.png)

You will be presented two import options that describe how the import process will behave: - **Combine**: The uploaded data is used without deleting or deactivating existing data on the environment. - **Overwrite**: The uploaded data is used while also deactivating existing data that does not exist in the uploaded configuration file.

![sol_hub_suite_config_import_option](/suite/help/25.3/images/sol_hub_suite_config_import_option.png)

After selecting the import option that meets your needs, a preview of changes renders.

On a row-by-row basis, the Solutions Hub shows a preview of the data that will be added, changed, and/or inactivated after the import completes. For brevity, unchanged tables and rows are hidden by default. Several filter options allow you to filter rows by status and change the visibility on primary keys, unique identifiers, or both.

If you are happy with the changes that will take place, click **Import** to begin the import process.

![sol_hub_suite_config_import_preview](/suite/help/25.3/images/sol_hub_suite_config_import_preview.png)

Note that the import process may take several moments. There is a refresh button to poll the status of import.

After the import successfully completes, the Solutions Hub provides a download link to a backup of the imported configuration groups that was taken before the process started. If you made a mistake, you can use this backup to easily rollback the imported configuration groups to their state before import.

### Backup and Audit History

With Solutions Configuration Export & Import you no longer need to worry about storing backups. The Configurations page shows a history of all configurations exported from, and imported to, the environment.

The Exports tab allows you to easily download any previously exported configuration groups. It also provides a reference to the Appian Process ID of the export process just in case further investigation or debugging is needed.

![sol_hub_suite_config_history_export](/suite/help/25.3/images/sol_hub_suite_config_history_export.png)

The Imports tab provides access to information that is similar to the information displayed on the Exports tab. It also shows two additional columns specifying which import option was performed, as well as a link to the configuration backup file that was taken prior to import in case a rollback to that point in time is needed.

![sol_hub_suite_config_history_import](/suite/help/25.3/images/sol_hub_suite_config_history_import.png)

It is important to note that backup files only contain data from the configuration groups that were imported.

### Guidance

#### Cross Environment UUID & Backfill

For configuration export & import to work correctly with your solution, the product team adds a new `CROSS_ENVIRONMENT_UUID` column to each configuration table eligible for export & import.

Appian Solutions ship with SQL scripts that add this column and backfill the cross environment UUIDs to pre-existing tables during installation.

If you plan to create your own configuration tables, refer to the [Register your own configuration tables](#register-your-own-configuration-tables) section for guidance.

#### Deciding Source of Truth Environment

Since Configuration Export & Import allows bidirectional transfer of configuration data, it is wise to decide which environment will be your source of truth for configuration state. This way, you know which environment to rely on when making a transfer.

For some customers, the development environment will be the source of truth to ensure a proper Software Development Life Cycle is followed. For others, the production environment will suffice, as business users will be making real-time changes in that environment.

##### Production

The guidance in this section is for customers who want to use their production environment as the source of truth.

There are two instances where it makes sense to choose a Production environment as the source of truth:

1.  Configuration is only done in the production environment.
    1.  Instead of giving configurators access to lower environments, configurations are only made in production. This means there are possible differences between the data in the production, development, or test environment used by a solutions implementation team for customization.
2.  Configuration has diverged between environments and a re-sync is needed.
    1.  Over time, configuration data can diverge between environments due to lulls in development, hotfixes, or external sources.
    2.  Development data needs to be re-synced to remove stale data.

To keep environments in sync, a developer can export configuration data from production and import it into a development or test environment.

##### Development

The guidance in this section is for customers who want to use a lower (e.g., development) environment as the source of truth.

There are two instances where it makes sense to choose a lower environment as the source of truth:

1.  Solution is recently installed in a fresh environment.
    1.  When beginning to configure your solution in a development environment, you have a clean database and the ability to configure data that will be used in production environments
    2.  Deployments to higher environments with strict change control can still be established since a file will be downloaded and imported by deployment teams and/or developers
2.  Existing solution with up-to-date environments.
    1.  The development environment has the latest configuration data since configurations do not happen in production and only occur in lower environments to be transferred to higher environments
    2.  Users in charge of configurations can provide data that is testable before moving to production environments

To keep environments in sync, a developer can export configuration data from a development environment and provide it to an authenticated user so they can import into the production environment.

### Register your own configuration tables

Okay, so you customized your Appian solution to add new configuration tables. You may also wonder if you can leverage the Solutions Configuration Export & Import capability to export data from these tables from one environment and import them to another. With a few simple setup steps, you can!

**Tip:**  Perform the setup steps below in your “lowest” development environment first. Then deploy these changes to higher environments. This ensures crossEnvironmentUUIDs match for any existing configuration data in these tables. See [What is a CrossEnvironmentUUID](#what-is-a-crossenvironmentuuid).

#### General Requirements

All tables intended for configuration export and import require one or more of the following columns:

-   a primary key field (e.g., `PARENT_ID`) is required for all configuration tables
-   an isActive field (e.g., `IS_ACTIVE`) is required only for top level parent tables
-   a crossEnvironmentUUID field (e.g., `CROSS_ENVIRONMENT_UUID`) is required for all configuration tables ![Example_Configuration_Table](/suite/help/25.3/images/Example_Configuration_Table.png)

#### Add active/inactive column

All tables backed by top-level parent CDTs require a field that determines if the solution considers data entered in a table to be _active_ or _inactive_. This field can be the same field used in the solution to determine whether data is active for future selection in the front-end UIs. _Active_ fields have a value of “1,” and _inactive_ have a value of “0”, which business users control via front-end configuration screens. This field is typically named `IS_ACTIVE` of type boolean.

You can add the `IS_ACTIVE` column using simple ALTER scripts.

#### What is a CrossEnvironmentUUID?

Each table and CDT intended for export and import requires a `CROSS_ENVIRONMENT_UUID` field. Each environment retains the cross-environment universally unique identifier (UUID) value set in this field during import. The database sets primary keys, which vary per environment. CrossEnvironmentUUIDs are unique and consistent across all environments. When importing configurations, the system matches rows with the same crossEnvironmentUUID value to each other to determine which rows are added, changed, or inactivated on import. This matching drives the preview screen and subsequent import logic. Rows representing the same concept in multiple environments should have the same crossEnvironmentUUID value."

#### Add CrossEnvironmentUUID column

Depending on your RDBMS, use one of the following script templates to add the `CROSS_ENVIRONMENT_UUID` column. Run this script for each configuration table you want to leverage the Configuration Export & Import with, which does not have a `CROSS_ENVIRONMENT_UUID` column.

Run the following script in a MariaDB instance to add the `CROSS_ENVIRONMENT_UUID` column:

```
1
ALTER TABLE <YOUR_TABLE_NAME_HERE> ADD COLUMN IF NOT EXISTS `CROSS_ENVIRONMENT_UUID` VARCHAR(255) UNIQUE;
```

Run the following script in an Oracle db instance to add the `CROSS_ENVIRONMENT_UUID` column:

```
1
2
ALTER TABLE "<YOUR_TABLE_NAME_HERE>" ADD CROSS_ENVIRONMENT_UUID VARCHAR2(255);
ALTER TABLE "<YOUR_TABLE_NAME_HERE>" ADD CONSTRAINT "<YOUR_TABLE_NAME_HERE>_UQ" UNIQUE (CROSS_ENVIRONMENT_UUID);
```

The next section covers specifics of populating the `CROSS_ENVIRONMENT_UUID` column.

#### Backfill CrossEnvironmentUUIDs

After adding the column to all tables, backfill it to ensure that it is unique. Keep in mind that this value needs to align in all environments for "matching rows" or rows that represent the same concept. For example, you should assign a "Priority: High" row in DEV the same crossEnvironmentUUID as the "Priority: High" rows in TEST & PRODUCTION.

Please reach out to Appian Support if you require assistance with this process.

#### Populate CrossEnvironmentUUIDs for new rows

You need to add a trigger to the database to set the crossEnvironmentUUID value for new inserts. This ensures that new entries receive a crossEnvironmentUUID value, which is immutable once set.

Run the following script in a MariaDB instance:

```
1
2
3
4
5
CREATE TRIGGER IF NOT EXISTS `<YOUR_TABLE_NAME_HERE>_uuid_insert` BEFORE INSERT ON `<YOUR_TABLE_NAME_HERE>`
FOR EACH ROW set new.CROSS_ENVIRONMENT_UUID = if(new.CROSS_ENVIRONMENT_UUID is null or length(new.CROSS_ENVIRONMENT_UUID) = 0, uuid(), new.CROSS_ENVIRONMENT_UUID);

CREATE TRIGGER IF NOT EXISTS `<YOUR_TABLE_NAME_HERE>_uuid_update` BEFORE UPDATE ON `<YOUR_TABLE_NAME_HERE>`
FOR EACH ROW set new.CROSS_ENVIRONMENT_UUID = old.CROSS_ENVIRONMENT_UUID;
```

Run the following script in an Oracle db instance:

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
10
11
12
13
14
15
16
17
18
BEGIN
	EXECUTE IMMEDIATE 'CREATE or REPLACE TRIGGER "<YOUR_TABLE_NAME_HERE>_IN" before INSERT on "<YOUR_TABLE_NAME_HERE>" FOR EACH ROW
	BEGIN
		IF length(:NEW."CROSS_ENVIRONMENT_UUID") = 0 OR :NEW."CROSS_ENVIRONMENT_UUID" is null then
		:NEW."CROSS_ENVIRONMENT_UUID" := SYS_GUID();
		END IF;
	END;';
END;
/

BEGIN
	EXECUTE IMMEDIATE 'CREATE or REPLACE TRIGGER "<YOUR_TABLE_NAME_HERE>_UP" before UPDATE on "<YOUR_TABLE_NAME_HERE>" FOR EACH ROW
	BEGIN
		:NEW."CROSS_ENVIRONMENT_UUID" := :OLD."CROSS_ENVIRONMENT_UUID";
	END;';
END;
/
```

Next, we need to update CDTs to ensure each of these columns are present on the CDTs backing these tables.

#### Verify primary key field

All CDTs (including nested children CDTs) intended for use by Configuration Export and Import require a primary key field that uniquely identifies the data in the given entity in an environment. Verify that each updated CDT backing a table has a primary key field set.

#### Verify active/inactive field

Verify that each updated CDT backing a table has an `isActive` field.

#### Add crossEnvironmentUUId field

All CDTs intended for Configuration Export and Import (including nested children CDTs) require a `crossEnvironmentUUID` text field.

Perform the following steps to to add the `crossEnvironmentUUID` field:

1.  Download the **XSD** associated with the CDT
2.  Find the following code in the **XSD** file:

    ```
    1
     </xsd:sequence>
    ```

3.  Replace with the following code:

    ```
    1
    2
    3
    4
    5
    6
         <xsd:element name="crossEnvironmentUUID" nillable="true" type="xsd:string">
             <xsd:annotation>
                 <xsd:appinfo source="appian.jpa">@Column(name="CROSS_ENVIRONMENT_UUID")</xsd:appinfo>
             </xsd:annotation>
         </xsd:element>
     </xsd:sequence>
    ```

4.  Save and reupload the **XSD** per the instructions to [Create New Version from XSD](/suite/help/25.3/Custom_Data_Types.html#create-new-version-from-xsd)
5.  Repeat these steps for each CDT that backs configuration data but does not have a `crossEnvironmentUUID` field

We aren’t quite finished yet. Finally, we need to update the solution’s registration rule.

#### Update your Registration Rule

The final step to registering your own configuration tables for the Solution Hub’s Configuration Export & Import capability is to add these table references to the solution’s registration rule.

Find and open the solution’s registration rule. This is an expression rule in the naming convention: `AS_[APP]_SolutionsHubRegistration`, where `[APP]` refers to the solution application prefix that is typically a two or three-letter identifier (e.g., KYC, AM, VM).

Once in the registration rule, find the `configTransfer` parameter. This is the section that will need to be updated with the configuration entities that are intended to be added to the Configuration Export & Import capability. Add a new `a!map()` for the added entities, following by example the other configuration entities already registered, so you know which parameters to add in the `a!map()`.

Entities for configuration export & import are registered in dependency order, which means any configuration entities in this rule need to be called above any entities in which they are referenced. This prevents missing foreign key constraints from happening on write.

If you require assistance updating your registration rule or with any parts of this registration process, reach out to Appian Support.

When making changes to this rule, be sure to make a copy or save the contents of this rule prior to upgrading your solution. You need to copy back the content after a successful upgrade since the registration rule contents will reset to the default settings after upgrading.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...