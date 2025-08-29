---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-creating-forms.html
original_path: cc-25.1.1.0/cc-creating-forms.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How to Create Forms in Studio

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Overview

In Connected Claims Studio, claim intake forms are the primary way that your end users interact with their claims. These forms allow claimants to create and edit claims and provide your claims adjusters and managers with the information that they need to complete a claim or address an issue.

Forms are an aspect of and specific to the [claim type](cc-create-claim-categories-and-types.html) that they are created in. We recommend [creating your intake and edit forms while configuring your claim type](cc-create-claim-categories-and-types.html#configuring-intake-forms-with-the-form-builder).

This page will provide a brief overview of how forms are used in Connected Claims Studio and how to create them.

## Types of forms

There are two types of forms in Connected Claims Studio, [intake forms](cc-create-claim-categories-and-types.html#intake-form-tab-in-a-claim-type) and [edit forms](cc-create-claim-categories-and-types.html#configuring-edit-forms).

An intake form is one or more steps in a wizard that allows claimants to initiate claim creation, such as submitting a workers compensation request.

Edit forms allow end users, claim adjusters or managers to edit or update the claim details.

## Creating forms in Studio

All intake and edit forms for your Connected Claims apps are created and edited in Studio using a set of tools that allow you to build an entire form without any code.

![cc_create_intake_form](images/cc_create_intake_form.png)

You can create both intake and edit forms from scratch. You can also create a new edit form by copying an existing intake form in your claim type.

### Data fields and form fields

When you create intake and edit forms, each field in the form should be connected to the [data fields](cc-create-claim-categories-and-types.html#data-fields) in the forms' associated [claim type](cc-create-claim-categories-and-types.html#data-tab-in-a-claim-type) and [claim category](cc-create-claim-categories-and-types.html#data-tab-in-a-claim-category). This allows the form to save the data input by end users and gets your claims adjusters the information they need.

### Creating intake forms

To create and configure a new intake form in Studio:

1.  Open your claim type and click the **Intake Form** tab.
2.  From the **Intake Form** tab, click **Create Intake Form**.
3.  Select **START FROM SCRATCH**.

    ![cc_build_scratch_intake_form](images/cc_build_scratch_intake_form.png)

4.  Click the **Page** element in the center pane.

    ![cc_intake_form_page_element](images/cc_intake_form_page_element.png)

    -   **Note**: By default, the **Page** element displays when you start an Intake from from scratch.
5.  In the **Label** field in the right pane, add a title to the first page of your form.

    ![cc_intake_form_page_label](images/cc_intake_form_page_label.png)

6.  Drag and drop fields from the left pane onto the page.
7.  In the right pane, enter a **Label** for each field.
8.  (Optionally) Enter **Instructions** to help your users understand the purpose of the field.
9.  Select the **Required** checkbox to make a form field required for submission.
10.  Under **Stored To**, click **SELECT DATA FIELD**.

     ![cc_intake_form_store_data_field](images/cc_intake_form_store_data_field.png)

11.  To store data from the form field to an existing data field in your claim type, claim category, or all claims select **Use Existing Field**.
     -   Select an existing data field to store the form field data.
     -   Click **SUBMIT**.
12.  To store the data from the form field in a new data field, select **Add New Field**
     -   Enter a **Name** for your new field and choose to add the data field to all claims, the claim category, or the claim type.
     -   Click **SUBMIT**.
13.  Under **Validations**, click **\+ Add** to add validations to your form field.
     -   For **Criteria**, select the validation to apply to the form field, such as a max character count. Fill out any additional information required for the validation.
     -   Click **SUBMIT**.
14.  To add a new page to your form, click **ADD PAGE** in the center pane. You can reorder pages using the arrows.
15.  When you've finished configuring your form, click **SAVE**.
16.  Click **CLOSE** to exit the form builder.

To further customize and configure an intake form built in Studio, a low-code developer can edit the intake form as an interface in [Appian Designer](../welcome-app-designer.html).

### Creating edit forms

Once you have your intake form configured, you can easily create an edit form based on it.

To create an edit form by copying an existing form :

1.  In the **Edit Form** section, click **CREATE EDIT FORM**.
2.  Click **COPY EXISTING FORM**. The claim type's intake form is selected by default.
3.  Make changes to the form as needed and click **SAVE**.
4.  Click **CLOSE**.

## Configuring forms in Designer

When you create a form in Studio, we automatically generate an interface for that form in Designer. Having both a form in Studio and an interface in Designer allows you to make use of the benefits of both no-code design tools and the robust capabilities of Appian objects.

Once you've created a form in Studio, you can edit that form as an interface in Designer, practically the same way you would for any other interface. The main noticeable difference is that there are special functions used in Connected Claims interfaces. For a full list of these functions and how to use them, see [Functions for Connected Claims Studio](cc-functions.html).

There are some configurations to forms that you can only make to the interfaces in Designer, such as allowing users to save drafts of forms and adding additional pages to the milestones for create and edit forms. To learn more about these configurations, check out [Low-Code Configurations for Connected Claims Studio](cc-low-code-configurations.html#common-low-code-configurations-of-generated-interfaces).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...