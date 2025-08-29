---
source_url: https://docs.appian.com/suite/help/25.3/vm-25.2.2.3/sol-custom-suite-user-guide.html
original_path: vm-25.2.2.3/sol-custom-suite-user-guide.html
version: "25.3"
title: "Solutions Hub User Guide"
page_id: "vm-25.2.2.3/sol-custom-suite-user-guide"
section: "Landing page"
tags: ["appian","docs","v25.3"]
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Vendor Management, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

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

Vendor Management 25.2.2.3 supports the following customization categories. Each solution offers a varying degree of supported customization templates within each category.

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

### User Interface

User Interface is a functional customization that includes any customization templates that have been exposed by the solution’s product engineers to allow you to:

-   Slot in an open concept interface
-   Replicate a component
-   Modify an existing interface

See [Functional Customizations](#functional-customizations) for guidance on how to perform, edit, or revert a user interface customization.

### Business Logic

Business logic is a functional customization that includes any customization templates that have been exposed by the solution’s product engineers to allow you to:

-   Adjust conditional content
-   Modify data loads
-   Adjust static values
-   Modify a logical expression

See [Functional Customizations](#functional-customizations) for guidance on how to perform, edit, or revert a business logic customization.

#### Configure Dual Environment URLs

The Configure Dual Environment URLs customization allows you to configure the VM environment URL(s) based on whether you are running VM on single or dual environments.

![/vm_configure_dual_environment](/suite/help/25.3/images/vm_configure_dual_environment.png)

To view detailed how-to instructions for modifying this rule to to represent how you are running VM in your environment(s), click **EDIT**. If have previously modified this rule and want to revert the environment status back to its default state, click **REVERT TO DEFAULT**.

#### List of timezones

The List of Timezones customization allows you to add or remove the timezones used to set due dates for opportunities and question documents. Currently, the list contains all timezones in the United States.

![/vm_list_timezones](/suite/help/25.3/images/vm_list_timezones.png)

Click **EDIT** to view detailed instructions on how to add or remove timezones from the list and **REVERT TO DEFAULT** to revert back to the original list of timezones.

#### Enable or disable state and local government toggle

The Enable/Disable State and Local Government customization allows you to display the fields that are applicable for state and local government vendors.

![/vm-slgtoggle-default.png](/suite/help/25.3/images/vm-slgtoggle-default.png)

**Note:**  The VM solution will be either Federal-specific or State and Local Government (SLG)-specific depending upon this customization. Appian recommends performing this customization as a one-time activity after the VM solution is installed. By default, the state and local government toggle is disabled.

To enable the state and local government toggle in the VM application:

1.  From the **Solutions Hub**, select the Vendor Management card.
2.  Select **Functionality** to access the functional customizations.
3.  From the **Enable/Disable State and Local Government (SLG)** card, click **CUSTOMIZE**.

    ![/vm-slgtoggle-customize-01.png](/suite/help/25.3/images/vm-slgtoggle-customize-01.png)

4.  From the **Are you sure?** dialog, click **YES**.
5.  Click **EDIT** to open the expression rule in a new tab.

    ![/vm-slgtoggle-customize-02.png](/suite/help/25.3/images/vm-slgtoggle-customize-02.png)

6.  Modify the expression rule as `true()`.

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
     /*DESCRIPTION: This rule represents whether to use the State and Local Government (SLG) related fields and functions
     Also this bundle file to manage text and labels in addition to the default bundle file.
     Disabling this option will only utilize the default bundle file

     DEFAULT BEHAVIOR: State and Local Government toggle is Disabled.

     CUSTOMIZATION STEPS: Change the output of this rule to return true() if you need both default and State and Government bundle files and fields to be used.

     EXPECTED OUTPUT TYPE: Boolean

     Change this to true() to enable State and Government toggle */
     true()
    ```

    ![/vm-slgtoggle-customize-03.png](/suite/help/25.3/images/vm-slgtoggle-customize-03.png)

7.  Click **SAVE CHANGES**.

To disable the state and local government toggle in the VM application:

1.  From the **Solutions Hub**, select the Vendor Management card.
2.  Select **Functionality** to access the functional customizations.
3.  From the **Enable/Disable State and Local Government (SLG)** card, click **REVERT TO DEFAULT**.

    ![/vm-slgtoggle-reverttodefault.png](/suite/help/25.3/images/vm-slgtoggle-reverttodefault.png)

4.  From the **Are you sure?** dialog, click **YES**.

#### Enable or disable questionnaire

The Enable/Disable Questionnaire customization allows you to display the questionnaire to gather additional information when vendors register with the Vendor Management solution.

![vm_questoggle.png](/suite/help/25.3/images/vm_questoggle.png)

**Note:**  When you enable the questionnaire toggle, vendors registering on Vendor Portal must answer the questionnaire for additional information. Based on the vendors responses, the contracting personnel can take informed decisions about vendors registration. By default, the questionnaire toggle is disabled. When questionnaire is disabled, vendors registering on Vendor Portal get immediate access to VM solution without requiring approval from contracting personnel. Appian recommends performing this customization as a one-time activity after the VM solution is installed.

To enable the questionnaire for vendor registration:

1.  From the **Solutions Hub**, select the Vendor Management card.
2.  Select **Functionality** to access the functional customizations.
3.  From the **Enable/Disable Questionnaire** card, click **CUSTOMIZE**.

    ![vm_questoggle_customize.png](/suite/help/25.3/images/vm_questoggle_customize.png)

4.  From the **Are you sure?** dialog, click **YES**.
5.  Click **EDIT** to open the expression rule in a new tab.

    ![vm_questoggle_customize_edit.png](/suite/help/25.3/images/vm_questoggle_customize_edit.png)

6.  Modify the expression rule as `true()`.

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
     /*DESCRIPTION: This rule indicates whether to enable or disable the additional information section during vendor registration. When this rule is enabled, make sure to set a default questionnaire in the Settings site. @customizable:1.0 @category:BUSINESS_LOGIC @app:GAM.VM

     DEFAULT BEHAVIOR: Questionnaire module is disabled.

     CUSTOMIZATION STEPS: Change the output of this rule to return true() if you need to enable the questionnaire module for vendor registration.

     EXPECTED OUTPUT TYPE: Boolean

     Change this to true to enable Questionnaire toggle */
     true()
    ```

    ![vm_questoggle_customize_edit_settrue.png](/suite/help/25.3/images/vm_questoggle_customize_edit_settrue.png)

7.  Click **SAVE CHANGES**.

To disable the questionnaire for vendor registration:

1.  From the **Solutions Hub**, select the Vendor Management card.
2.  Select **Functionality** to access the functional customizations.
3.  From the **Enable/Disable Questionnaire** card, click **REVERT TO DEFAULT**.

    ![vm_questoggle_restoredefault.png](/suite/help/25.3/images/vm_questoggle_restoredefault.png)

4.  From the **Are you sure?** dialog, click **YES**.

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...