---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/sol-custom-suite-user-guide.html
original_path: cu-25.2.1.7/sol-custom-suite-user-guide.html
version: "25.3"
title: "Solutions Hub User Guide"
page_id: "cu-25.2.1.7/sol-custom-suite-user-guide"
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

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

Connected Underwriting 25.2.1.7 supports the following customization categories. Each solution offers a varying degree of supported customization templates within each category.

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