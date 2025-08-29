---
source_url: https://docs.appian.com/suite/help/25.3/url-parameters.html
original_path: url-parameters.html
version: "25.3"
title: "Use URL Parameters for Site and Portal Navigation"
page_id: "url-parameters"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use URL Parameters for Site and Portal Navigation

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Web addresses may seem mundane, but they can be quite useful, especially when paired with URL parameters. URL parameters are key-value pairs in a web address that tell a web page what to display. For example, in a web address like `example.com/search?query=url`, "query=url" is a URL parameter. In this case, it is telling the web page to display search results for the term "url".

URL parameters can improve the navigation experience for your site and portal users. For example, when you [pair filters on an interface with URL parameters](#example-setting-up-a-filter-to-work-with-url-parameters), you can:

-   [Set default values for the filters](#determine-whether-to-use-a-default-value).
-   [Link to a page with certain filter values automatically selected](#create-a-link-to-a-page-with-certain-filter-values-automatically-selected).
-   [Allow users to share and bookmark links with their selected filters](#allow-users-to-share-links-with-their-selected-filters)

URL parameters work with rule inputs to pass values to site and portal pages. Simply use a rule input in an interface to set a value, add the interface as a site or portal page, and configure the rules inputs for the page.

To learn more about URL parameters and how to use them, see the following topics

-   **Learn about URL parameters**:
    -   To learn more about what URL parameters are and how they work with rule inputs, review [About URL parameters](#about-url-parameters).
    -   To understand all the ways to use URL parameters, see [When to use URL parameters](#when-to-use-url-parameters).
-   **Use URL parameters**:
    -   To learn how to set up URL parameters to work with rule inputs in site and portal pages, as well as details about the configuration options, see [Configuring URL parameters](#configure-url-parameters).
    -   For detailed guidance on using and managing URL parameters, including practical examples of configuring rule inputs in interfaces and linking to pages, see [Use URL parameters](#use-url-parameters).

## About URL parameters

This section describes what URL parameters are and how they work with rule inputs to pass values to site and portal pages.

### What are URL parameters?

URL parameters allow you to pass information to a web page. They can be used to tell a web page what to display or how to behave.

URL parameters typically follow a question mark (?) in a web address. For example, if you search [https://careers.appian.com/jobs/](https://careers.appian.com/jobs/) for jobs with the keyword **software** in **Mclean, Virginia**, the link updates to:

```
1
https://careers.appian.com/jobs/`?search=software&location=McLean%2C+Virginia`
```

![career search example](images/url-param-career-search.png)

You could send this link to someone else and when they click it, the results will only display **software** jobs in **McLean**.

In this example, the first URL parameter is `search=software` and the second URL parameter is `location=McLean%2C+Virginia`. Note that `%2C` replaces the comma.

![url example](images/url-param-url-example.png)

URL parameters can also work with site and portal pages. They are just web pages after all.

### How URL parameters work with rule inputs

Rule inputs allow you to pass data to an object. For example, you can use a rule input in an interface to determine what information displays when it first loads. This is how values are passed from a process model into an interface.

[![Rule input being passed from a process to an interface](images/urlforportal-process-ri.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img340)

[![](images/urlforportal-process-ri.png)](#_)

When you have an interface that has [certain types of rule inputs](#types-of-rule-inputs-that-work-with-url-parameters) and you add it as a site or portal page, you can set the value of the rule input using URL parameters.

For example, imagine you have a site page that includes a variety of charts that can be filtered by certain categories. If you use a rule input to set the value of the page filters, you can pass values to the rule input using URL parameters in the web address. This means you could use [a!urlForSite()](fnc_scripting_urlforsite.html) to link to the site page with certain filter values already selected.

[![gif of user clicking a link and being brought to a filtered sales dashboard](images/url_params_link_to_db.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img341)

[![](images/url_params_link_to_db.gif)](#_)

You could also enable the URL parameters in the web address to update whenever the user selects a different filter value. This allows the user to save and bookmark links that include their selections.

![gif of a sales dashboard with filter values changing and the URL updating](images/sales-db-filters.gif)

### Types of rule inputs that work with URL parameters

You can add any rule input type to interfaces added as a site or portal page. However, not all rule inputs can be used with [URL parameters](#how-url-parameters-work-with-rule-inputs). Rule inputs that aren't supported won't display in the Rule Input Configuration grid.

There are a few basic considerations to determine if a rule input can be used with URL parameters:

-   The rule input must be one of the following [primitive system data types](Appian_Data_Types.html#primitive-system-data-types):
    -   Boolean
    -   Date
    -   Date and Time
    -   Number (Decimal)
    -   Number (Integer)
    -   Text
    -   Time
-   The rule input cannot be configured as an array.

    **Note:**  Using components that allow multiple values, such as the multiple dropdown component won't work with URL parameters since URL parameter values cannot be arrays.

-   The rule input must be in the interface that is added as a page in the site or portal object.
    -   For sites, the page type must be **Interface**.
    -   If the rule input is in a child interface or expression rule, it will not display in the Rule Input Configuration grid.

### See also

-   For steps for setting up rule inputs to work with URL parameters, see [Configure URL parameters](#configure-url-parameters).
-   Information about using URL parameters, including code samples, see [Use URL parameters](#use-url-parameters).
-   If you're wondering when you'd use URL parameters, see [When to use URL paramters](#when-to-use-url-parameters) for some examples of what URL parameters can do.

## Configure URL parameters

This section explains how to [set up URL parameters](#set-up-url-parameters) to [work with rule inputs](#how-url-parameters-work-with-rule-inputs), including information about the different [options for configuring the rule inputs](#rule-input-configuration-options).

It also contains instructions for [updating rule inputs](#update-rule-inputs-used-in-a-site-or-portal-page) if you need to add, delete, or rename them after you've added them to a site or portal page.

### Set up URL parameters

Before you can use a URL parameter in a site or portal page, you need to set up the rule input that the URL parameter value will be passed to. This includes:

-   [Adding rule inputs to the interface](#step-1-add-rule-inputs-to-an-interface).
-   [Adding the interface as a site or portal page](#step-2-add-the-interface-as-a-site-or-portal-page).
-   [Configuring the rule inputs on the site or portal page](#step-3-configure-the-rule-input-configuration-for-the-page).
-   For portals, [adding a service account (if necessary), then publishing the portal](#step-4-portals-only-add-a-service-account-if-necessary-then-publish-the-portal).

When you configure the rule inputs on the site or portal page, you will need to decide:

-   [Whether to encrypt the URL parameters](#determine-whether-to-encrypt-url-parameters).
-   [Whether to use a default value](#determine-whether-to-use-a-default-value).
-   [Whether to update the URL parameters when the value for the rule input changes](#determine-whether-to-update-the-web-address-when-rule-input-values-change).

The sections below walk you through each step.

#### Step 1: Add rule inputs to an interface

To link to a site or portal using URL parameters, your interface must first have [rule inputs](#how-url-parameters-work-with-rule-inputs) configured.

Only certain rule inputs can be used to link to a page using URL parameters. See [Types of rule inputs that work with URL parameters](#types-of-rule-inputs-that-work-with-url-parameters) for the requirements.

To add rule inputs to the interface you'll use as a site or portal page:

1.  In the **Rule Inputs** pane of the interface, click **New Rule Input**.
2.  Configure the rule input properties:

    | Property | Value |
    | --- | --- |
    | Name | The name of the rule input. |
    | Description | (Optional) A description of the rule input's purpose. |
    | Type | Use a supported data type:
    -   Boolean
    -   Date
    -   Date and Time
    -   Number (Decimal)
    -   Number (Integer)
    -   Text
    -   Time

     |
    | Array (multiple values) | Leave deselected |

3.  Click **CREATE**.
4.  Repeat the above steps to create additional rule inputs.
5.  Use the rule inputs to set values on the interface. See [Design interfaces to use URL parameters](#design-interfaces-to-use-url-parameters) for examples of how to use rule inputs with URL parameters in site and portal pages.
6.  Click **SAVE**.

#### Step 2: Add the interface as a site or portal page

Next, you need to add the interface with rule inputs as a page in your site or portal object. For sites, keep in mind that the page type must be **Interface** to use URL parameters.

To add an interface with rule inputs as a new page:

1.  Open the site or portal object.
2.  In the **Pages** section, click **ADD PAGE**.
3.  Enter a **Title**. The **Web Address Identifier** automatically populates using the title.
4.  If you are editing a site, for **Type** select **Interface**.
5.  For **Content**, select the interface that you added rule inputs to. The **Rule Input Configuration** displays.

#### Step 3: Configure the Rule Input Configuration for the page

After you select the interface, a Rule Input Configuration section will display. This contains the options for configuring the rule inputs, including a grid that lists the rule inputs from the selected interface. Only [rule inputs that work with URL parameters](#types-of-rule-inputs-that-work-with-url-parameters) are listed in the grid.

To configure the rule inputs on the site or portal page:

1.  For **URL Parameter Name**, enter a name to be used for the URL parameters.
    -   By default, this is the name of the rule input. You can change this if you want to [rename a rule input](#rename-a-rule-input) and make sure existing links don't break, or if you just want to make the name shorter or more clear.

        **Tip:**  Hover over the tooltip next to the rule input name to view the rule input description.

2.  [Determine if you want to encrypt the url parameters or not](#determine-whether-to-encrypt-url-parameters).
    1.  To encrypt URL parameters, leave **Encrypt URL parameters** selected.
    2.  To use plaintext URL parameters:
        1.  Deselect **Encrypt URL parameters**.
        2.  In the grid, toggle on **Enable in URLs** for each rule input that you want to use as a URL parameter.
3.  [Determine if you want to use a default value or not](#determine-whether-to-use-a-default-value).
    1.  To pass in a default value:
        1.  In the grid, under **Default Value**, click **_null_** for the rule input that you want to pass a default value to.
        2.  Enter an expression or a value to use for the default value and click **DONE**.

            **Note:**  The evaluated default value must be 100 characters or less. Otherwise, the default value will be ignored.

        3.  Under **Default Value Preview**, validate that the evaluated value looks correct.
4.  [Determine if you want the web address to update when the rule input values change](#determine-whether-to-update-the-web-address-when-rule-input-values-change).
    1.  To allow the URL parameter value to update in the web address, such as when a user selects a different filter option, make sure **Update URL when rule input values change** is selected.

![add page dialog with rule input configurations highlighted](images/rule-input-configs.png)

#### Step 4: (Portals only) Add a service account if necessary, then publish the portal

If **Encrypt URL parameters** is selected for any portal page, the portal object must have a service account. Additionally, portals have to be published before you can link to them.

To add a service account to the portal and publish it:

1.  In the portal object, if there isn't already a service account, go to the **Service Access** section and [add a service account](portals-create.html#step-4-add-a-service-account-and-set-permissions).
2.  If necessary, go to the **Configurations** section and turn on the **Published** toggle.
3.  Click **SAVE** and make sure the portal publishes successfully.

### Rule Input Configuration options

When [configuring the Rule Input Configuration](#step-3-configure-the-rule-input-configuration-for-the-page) for a page, you can often use the default settings for URL parameters. This section outlines the available options and explains when you might consider adjusting them.

#### Determine whether to encrypt url parameters

To help keep your data secure, URL parameters are encrypted by default. You have the option to enable plaintext URL parameters, which you should only do if absolutely necessary. Read on to understand the difference between encrypted and plaintext URL parameters and when to use each.

##### Using encrypted URL parameters

When **Encrypt URL parameters** is selected, humans cannot read or manipulate the URL parameters. This prevents the average user from manipulating the web address to inadvertently or nefariously expose data not intended for them.

URL parameters should be encrypted unless they absolutely need to be plaintext. This is particularly important when passing in identifying information, such as an access code.

When **Encrypt URL parameters** is selected, links to the page can only be constructed using [a!urlForSite()](fnc_scripting_urlforsite.html) or [a!urlForPortal()](fnc_scripting_urlforportal.html). This means encrypted URL parameters can't be used to link directly to a site or portal page from an external website. See [Link from an external website using URL parameters](#link-from-an-external-website-using-url-parameters) for guidance.

For instructions on how to use URL parameters in a site or portal page, see [Set up URL parameters](#set-up-url-parameters).

##### Using plaintext URL parameters

When **Encrypt URL parameters** is deselected, all URL parameters use plaintext. This means that users can read and manipulate the parameters, which could expose data that isn't intended for them.

Don't enable plaintext for URL parameters that have values that could be manipulated to expose sensitive data that isn't intended for the user. For example, values that are predictable, like sequential record IDs.

If you disable **Encrypt URL parameters**, you must opt in to using URL parameters for each rule input on the page. Only turn on **Enable in URLs** for rule inputs that you need to use with URL parameters.

You might want to use plaintext URL parameters when:

-   You're [linking to the page with URL parameters from an external website](#link-from-an-external-website-using-url-parameters).
-   You're using a third-party web service that needs to pass an exact value.

#### Determine whether to use a default value

For each rule input, you can choose to set a default value.

You may want to use a default value to:

-   Provide a back up value in case the URL parameter is ignored due to error handling in [a!urlForSite()](fnc_scripting_urlforsite.html#error-handling) or [a!urlForPortal()](fnc_scripting_urlforportal.html#error-handling).
-   Set the initial value for a rule input whenever the page loads.
-   Provide the initial tab to load on pages that use rule inputs and URL parameters to [switch between tabs](#example-update-web-address-when-switching-between-tabs).

The rule input will use the default value when:

-   A user accesses the page via the navigation bar.
-   A link to a page doesn't use the URL parameter.
-   A user changes or deletes any character in the encrypted URL parameter string.
-   Someone constructs a plaintext link that would otherwise ignore a URL parameter due to error handling, such as if they misspell the URL parameter name.

If the default value isn't configured and a URL parameter doesn't provide the value, the rule input value is `null`.

**Tip:**  If the web address has the URL parameter name without a value, such as `dot.appianportals.com/dot/page/projects?county=`, the rule input value will be `null`, not the default value.

For instructions on how to use URL parameters in a site or portal page, see [Set up URL parameters](#set-up-url-parameters).

#### Determine whether to update the web address when rule input values change

When you add a new rule input to a site or portal page, **Update URL when rule input values change** is selected by default. It is usually best to keep this selected because it enables certain navigation behaviors, such as:

-   [Allowing users to share links with their selected filters](#allow-users-to-share-links-with-their-selected-filters).
-   [Remembering filter selections when users return to a previously filtered page](#remember-filter-selections-when-returning-to-a-previously-filtered-page).
-   [Updating the web address when users switch between tabs in an interface](#update-the-web-address-when-switching-between-tabs-in-an-interface).

You may want to turn off this option if there is a chance that the URL parameter name or value could expose sensitive information, especially if you are using plaintext URL parameters. Users might not understand that when they share links they are also sharing their filter selections, so if you have any doubts, it is best to err on the side of caution.

When you design your interfaces, make sure:

-   You don't use URL parameters that update in the web address in a way that might be confusing to end users.
    -   For example, if you use URL parameters for some filters but not others, users might be confused about why the web address doesn't update for all filters. If the URL parameters are encrypted, it would be even more confusing since they can't tell what is getting updated in the web address.
-   The _refreshAfter_ parameter on components is set to `"UNFOCUS"`. This will ensure that every keypress the user enters is not remembered when they click the browser back button.

For instructions on how to use URL parameters in a site or portal page, see [Set up URL parameters](#set-up-url-parameters).

### Update rule inputs used in a site or portal page

If you add, rename, or delete rule inputs from an interface used as a site or portal page, you will need to edit the page to update the rule input configurations. For portals, you will also need to republish the portal.

This helps ensure that:

-   [Links to the page will continue to work](#keeping-aurlforsite-and-aurlforportal-links-up-to-date), even if the page's rule inputs are renamed.
-   New rule inputs can be used with URL parameters.

**Tip:**  If you update [rule inputs that don't work with URL parameters](#types-of-rule-inputs-that-work-with-url-parameters) in an interface, you don't need to worry about keeping them up to date on the site or portal page since they don't appear in the Rule Input Configuration grid.

This section provides instructions for adding, renaming, and deleting rule inputs in interfaces that are being used as a site or portal page.

#### Add a new rule input

After you add a new rule input to an interface that is being used in a site or portal page, you won't be able to use it with a URL parameter until after you edit the page. For portals, you will also need to make sure the portal republishes.

To add a new rule input to be used on a site or portal page:

1.  In the interface, [add a rule input](#step-1-add-rule-inputs-to-an-interface).
2.  In the site or portal object, locate the page that uses the interface that you added rule inputs to.

    **Tip:**  Pages with rule inputs that can be used with URL parameters are identified with **Has rule input configurations**.

3.  Click to edit the page.

    ![rule input configuration message and edit icon](images/url-params-has-ruleinputs.png)

4.  [Configure the Rule Input Configuration](#step-3-configure-the-rule-input-configuration-for-the-page) for the rule input. If you don't make any modifications to these properties, the defaults will be used.

    **Tip:**  New rule inputs are identified by the **NEW** tag. Hover over the tooltip next to the rule input name to view the rule input description.

    ![new rule input in edit page dialog](images/url-param-new-ri.png)

5.  Click **DONE**.
6.  Click **SAVE**.
7.  For portals, make sure the portal publishes successfully.

#### Rename a rule input

If you rename a rule input in an interface that is being used in a site or portal page, the **Rule Input Configuration** grid will add a new rule input and ask you to remove the old rule input.

Since rule inputs are mapped to URL parameter names, you can update the URL parameter name of the new rule input to match the old URL parameter name. This makes sure existing links will continue to work. If you don't update it, the URL parameter will be ignored in any links that use the old URL parameter name.

For example, let's say you have a rule input and URL parameter both named `active`. If you update the rule input name to `isActive`, a new rule input will appear in the **Rule Input Configuration** grid. To ensure existing links to the page continue to work, you can update the URL parameter name for the new `isActive` rule input to `active`.

![example of renaming a rule input](images/url-param-rename-url-ex.png)

To rename a rule input that is configured on a site or portal page:

1.  In the interface, click the name of the existing rule input. The **Edit Rule Input** dialog appears.
2.  Rename the rule input and click **OK**.
3.  Click **SAVE**. The **Updated Rule Inputs** dialog displays.
4.  Click the site or portal object name to open it so you can update the URL parameter name.

    ![updated rule inputs dialog](images/url-params-object-not-updated.png)

5.  In the site or portal object, click next to the page that uses the interface.
6.  To make sure existing links will still work if they use the URL parameter name, update the new URL parameter name to match the old URL parameter name.

    **Tip:**  Old rule inputs are identified by the icon and new rule inputs are identified by the **NEW** tag. Hover over the tooltip next to the rule input name to view the rule input description.

    ![rename URL parameter](images/url-params-rename-param.png)

7.  In the **Rule inputs were changed in the interface** message, click **REMOVE OLD RULE INPUTS**.

    ![remove old rule input button](images/url-params-rename-param-remove.png)

8.  Click **DONE**.
9.  Click **SAVE**.
10.  For portals, make sure the portal publishes successfully.

#### Delete a rule input:

If you delete a rule input from an interface that is being used in a site or portal page, you need to delete the rule input from the page too.

If there are existing links that use the URL parameter that was mapped to the deleted rule input, the URL parameter will be ignored.

To delete a rule input that is configured on a site or portal page:

1.  In the interface, click the name of the existing rule input.
2.  In the **Edit Rule Input** dialog, click **DELETE**.
3.  Click **SAVE**.
4.  Open the site or portal object and click next to the page that uses the interface.
5.  In the **Rule inputs were deleted from the interface** message, click **REMOVE OLD RULE INPUTS**.

    **Tip:**  Old rule inputs are identified by the icon.

    ![remove old rule input button](images/url-params-delete-ruleinput.png)

6.  Click **DONE**.
7.  Click **SAVE**.

## Use URL parameters

This section explains how to use URL parameters in sites and portals, including how to [design interfaces to use URL parameters](#design-interfaces-to-use-url-parameters), how to [link to a page using url parameters](#link-to-a-page-using-url-parameters), and how to [link from an external website using URL parameters](#link-from-an-external-website-using-url-parameters).

### Design interfaces to use URL parameters

When you are [setting up URL parameters](#set-up-url-parameters), you will need to configure rule inputs to set values on the interface. These examples show you some common ways to design interfaces to do just that.

#### Example: Update web address when switching between tabs

Setting up tabs in an interface to update the web address when users switch between tabs is relatively simple. You can set it up like any other secondary navigation pattern, with a few caveats:

-   To set the value of the active tab, use a rule input instead of a local variable.
-   In the [Rule Input Configuration](#step-3-configure-the-rule-input-configuration-for-the-page) for the page, you'll need to set a [default value](#determine-whether-to-use-a-default-value) for the rule input that sets the value of the active tab.

The following steps outline how to set up an interface to update the web address when switching between tabs. You will need to configure an interface, then add that interface as a page to a site or portal.

To configure the interface:

1.  In the **Rule Inputs** pane of the interface, click **New Rule Input**.
    1.  For **Name**, enter `activeTab`.
    2.  For **Type**, select **Number (Integer)**.
    3.  Click **Create**.
2.  Select **Expression mode** ![expression mode icon](images/expression-mode-icon.svg).
3.  Copy and paste the [Interface expression](#interface-expression) into the Interface Definition.
4.  An error will display saying that the interface cannot be displayed. This is because the value of the rule input is null. Since it is used as the _key_ parameter in the [choose()](fnc_logical_choose.html) function, it needs a value. To fix this:
    1.  Click **TEST**.
    2.  For **Value**, enter `1` and click **SET AS DEFAULTS AND TEST**.
5.  Click **SAVE**.

To add the interface as a page:

1.  In a site or portal, under **Pages**, click **ADD PAGE**.
2.  Fill out the fields. For **Content**, select the interface you created.
3.  In the **Rule Input Configuration** section, deselect **Encrypt URL parameters**.
    -   This is just to simplify the example. In most cases, you would want to [leave this selected](#determine-whether-to-encrypt-url-parameters).
4.  In the **Default Value** value column for the **activeTab** rule input, click **_null_**.
5.  Delete `null` and enter `1`, then click **DONE**.
    -   The rule input cannot be null since it is used as the _key_ parameter in the [choose()](fnc_logical_choose.html) function.
6.  Make sure **Update URL when rule input values change** is selected and click **ADD**.
7.  For a portal, under **Configurations**, select **Published**.
8.  Click **SAVE**.
9.  Click the link under **Web Address** to view the site or portal.

##### Interface expression

Copy and paste this expression into an interface object to see how to switch between tabs using rule input values.

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
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
a!localVariables(
  /* The tab names that are used in the button labels and card layouts */
  local!tabNames: { "Tab 1", "Tab 2", "Tab 3" },
  /* Be sure to add a rule input called activeTab that is a Number (Integer) */
  local!tabContent: index(local!tabNames, ri!activeTab, ""),
  {
    a!sectionLayout(
      label: "Section",
      contents: {
        a!buttonArrayLayout(
          buttons: {
            a!forEach(
              items: local!tabNames,
              expression: a!buttonWidget(
                label: fv!item,
                size: "SMALL",
                width: "MINIMIZE",
                saveInto: a!save(ri!activeTab, fv!index),
                style: if(ri!activeTab = fv!index, "SOLID", "LINK")
              )
            )
          },
          align: "START",
          marginBelow: "NONE"
        )
      }
    ),
    a!cardLayout(
      contents: {
        choose(
          ri!activeTab,
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextHeader(text: local!tabContent & " Content"),

            }
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextHeader(text: local!tabContent & " Content"),

            }
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextHeader(text: local!tabContent & " Content"),

            }
          )
        )
      },
      height: "AUTO",
      style: "TRANSPARENT",
      marginBelow: "STANDARD"
    )
  }
)
```

#### Example: Setting up a filter to work with URL parameters

This example creates a [grid filter](recipe-filter-the-data-in-a-grid.html#manually-creating-a-filter-on-the-grid) that uses a rule input to set the value of the filter.

When you add an interface like this as a site or portal page, you can:

-   [Set default values for the filters](#determine-whether-to-use-a-default-value).
-   [Create a link to a page with certain filter values automatically selected](#link-to-a-page-using-url-parameters).

Additionally, when **Update URL when rule input values change** is selected in the [Rule Input Configuration](#step-3-configure-the-rule-input-configuration-for-the-page), the filter values automatically update in the web address, which:

-   [Allows users to share links with their selected filters](#allow-users-to-share-links-with-their-selected-filters).
-   [Remembers filter selections when users return to a previously filtered page](#remember-filter-selections-when-returning-to-a-previously-filtered-page).

For full instructions on how to set up filters to work with URL parameters, see [Set up URL parameters](#set-up-url-parameters).

**Note:**  Record type references are specific to each environment. If you copy and paste this example into your interface, it will not evaluate. Use it as a reference only.

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
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
a!localVariables(
  local!subcategory: a!queryRecordType(
    recordType: recordType!Product Subcategory,
    fields: recordType!Product Subcategory.fields.name,
    pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 30)
  ).data,
  /* Create a rule input in your interface of type Number (Integer) */
  /* Using the rule input as the value of the local variable allows you */
  /* to pass a value into the interface */
  local!selectedCategory: ri!category,
  {
  /* Use a dropdown instead of a user filter to filter the grid */
    a!dropdownField(
      choiceLabels: local!subcategory[recordType!Product Subcategory.fields.name],
      choiceValues: local!subcategory[recordType!Product Subcategory.fields.productSubcategoryId],
      label: "SUBCATEGORY",
      placeholder: "Select a county",
      value: local!selectedCategory,
      saveInto: local!selectedCategory
    ),
    a!gridField(
      labelPosition: "COLLAPSED",
      data: a!recordData(
        recordType: recordType!Product,
        filters: a!queryLogicalExpression(
          operator: "AND",
          filters: {
            /*The query filter is used with the dropdown field to update
            the data in the grid based on the value of local!selectedCategory*/
            a!queryFilter(
              field: recordType!Product.relationships.productSubcategory.fields.productSubcategoryId,
              operator: "=",
              value: local!selectedCategory
            )
          },
          ignoreFiltersWithEmptyValues: true
        )
      ),
      columns: {
        a!gridColumn(
          label: "Product Name",
          sortField: recordType!Product.fields.name,
          value: fv!row[recordType!Product.fields.name]
        ),
        a!gridColumn(
          label: "Product Subcategory",
          sortField: recordType!Product.relationships.productSubcategory.fields.name,
          value: fv!row[recordType!Product.relationships.productSubcategory.fields.name],
          align: "START"
        )
      }
    )
  }
)
```

### Link to a page using url parameters

After you have configured URL parameters for a site or portal page, you can link to site and portal pages with URL parameters using [a!urlForSite()](fnc_scripting_urlforsite.html) or [a!urlForPortal()](fnc_scripting_urlforportal.html). These functions allow Appian to encrypt URL parameters and allow you to [keep your links up to date](#keeping-aurlforsite-and-aurlforportal-links-up-to-date) if the web address ever changes. This can happen if you change the web address identifiers for the site or portal, or if you [rename the rule inputs](#rename-a-rule-input).

There are several places you can link to a site or portal from, including:

-   An [interface](interface_object.html) or [expression rule](Expression_Rules.html).
-   A [process model](process-model-object.html).
-   A portal.
    -   Any portal that links to another portal using `a!urlForPortal()`, must have a [service account](portals-service-accounts.html) configured.
    -   The `a!urlForSite()` function is [partially compatible](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal) with portals. To link to a site from a portal, create a custom integration using integration and web API objects.
-   An external website.
    -   We won't cover this in this section. For more information about methods for linking to a site or portal from an external website, see [Link from an external website using URL parameters](#link-from-an-external-website-using-url-parameters).
-   Another environment.

To use `a!urlForPortal()` to link to a portal page:

1.  In an interface, expression rule, or expression in a process model, enter `a!urlForPortal()`.
2.  For the _portalPage_ parameter, [reference a portal page](fnc_scripting_urlforportal.html#referencing-portal-pages) using the `portal!` domain.
    -   Enter `portal!` to see a list of portals. Select a portal from the list.
    -   Enter a period (`.`) to see a list of portal pages. Select a page from the list.
3.  For the _urlParameter_ parameter, use [a!map()](fnc_system_map.html) to list your URL parameter names and values as key-value pairs. For example, `a!map(key1: value1, key2: value2)`.

    **Tip:**  Click the portal reference to view the URL parameter names. They are listed in the expression documentation pane under **Enabled URL Parameter(s)**.

    ![enabled url parameters in the expression documentation pane for a portal](images/url-param-doc-pane.png)

To use `a!urlForSite()` to link to a Site page:

1.  In an interface, expression rule, or expression in a process model, enter `a!urlForSite()`.
2.  For the _sitePage_ parameter, [reference a site page](reference-sites.html) using the `site!` domain.
    -   Enter `site!` to see a list of sites. Select a site from the list.
    -   Enter a period (`.`) to see a list of site pages. Select a page from the list.
3.  For the _urlParameter_ parameter, use [a!map()](fnc_system_map.html) to list your URL parameter names and values as key-value pairs. For example, `a!map(key1: value1, key2: value2)`.

    **Tip:**  Click the site reference to view the URL parameter names. They are listed in the expression documentation pane under **Enabled URL Parameter(s)**.

    ![enabled url parameters in the expression documentation pane for a site](images/url-param-doc-pane-site.png)

#### Example: a!urlForPortal()

If the following example used plaintext URL parameters, it would return something like:

`https://statedot.appianportals.com/projectportal/page/projects?county=Fairfax&active=true`.

![portal url example](images/url-param-portal-url-example.png)

If the page was within a page group, the web address would display as:

`https://statedot.appianportals.com/projectportal/group/transportation/page/projects?county=Fairfax&active=true`

If your site or portal has only one page, `/page/[page web address ID]` won't display in the web address. However, if you manually add `/page/` followed by the web address identifier, the link will still work.

```
1
2
3
4
5
6
7
a!urlForPortal(
  portalPage: portal!DOT Project Portal.pages.projects,
  urlParameters: a!map(
    county: "Fairfax",
    active: true
  )
)
```

#### Keeping a!urlForSite and a!urlForPortal() links up to date

The following outlines how links to site and portal pages can change and how we help you keep them up to date. As you can see, using [a!urlForSite()](fnc_scripting_urlforsite.html) and [a!urlForPortal()](fnc_scripting_urlforportal.html) offer a few different ways to keep your links up to date. Because of this, we recommend using these functions whenever possible and avoid constructing links manually, even when using [plaintext](#using-plaintext-url-parameters).

| How links change | How they are kept up to date |
| --- | --- |
| Changing the web address identifier for a site or portal, including a site or portal page. | Referencing a page using the `site!` or `portal!` domain automatically uses the most recent web address identifier. |
| Turning [URL parameter encryption](#determine-whether-to-encrypt-url-parameters) on or off for a site or portal page. | Using `a!urlForSite()` and `a!urlForPortal()` automatically takes care of switching between encrypted and plaintext parameters when the **Encrypt URL Parameter** setting is changed for a page. |
| Renaming a rule input that is used with URL parameters. | Manually updating the new rule input's URL parameter name to match the old rule input's URL parameter name. See [Renaming a rule input](#rename-a-rule-input) for instructions. |

We also [automatically republish portals that link to other portals](portals-manage-portals.html#automatically-republish-a-portal) in certain situations to make sure that these links are kept up to date when the linked portal is updated.

### Link from an external website using URL parameters

Linking to a site or portal page from an external website using encrypted URL parameters isn't as straightforward as using plaintext URL parameters to link from an external website.

Encrypted URL parameters must be constructed using [a!urlForSite()](fnc_scripting_urlforsite.html) or [a!urlForPortal()](fnc_scripting_urlforportal.html). Because this encryption is specific to an environment, you can't construct a link in a development environment and modify it to be used in a production environment. You need to use `a!urlForSite()` or `a!urlForPortal()` in a production environment to get an encrypted link for a production site or portal.

Because of this, if you need to use URL parameters to link to a site or portal page from an external website, we recommend using plaintext URL parameters, as long as you can use them [securely](#using-plaintext-url-parameters).

If you must use encrypted parameters, you can use a [web API](methods_of_integrations.html#other-systems-calling-appian) that uses `a!urlForSite()` or `a!urlForPortal()` to construct the link and invoke the web API from your external website.

## When to use URL parameters

URL parameters can improve how users navigate through your sites and portals by allowing you to [create tailored links](#create-tailored-links) and [optimize navigation](#optimize-navigation).

This section explores various scenarios where URL parameters are particularly beneficial.

### Create tailored links

When you link to a page using [a!urlForSite()](fnc_scripting_urlforsite.html) or [a!urlForPortal()](fnc_scripting_urlforportal.html), you can use the _urlParameters_ parameter to specify URL parameter names and values. This allows you to pass values into the rule inputs configured for the page.

The following are some examples of ways you can use URL parameters in links. For instructions on how to set up URL parameters and use them in links, see [Configuring URL parameters](#configure-url-parameters) and [Link to a page using url parameters](#link-to-a-page-using-url-parameters).

**Tip:**  Keep in mind that for sites, there may be other options for linking that don't require URL parameters. For example, you can send a [process task link](https://docs.appian.com/suite/help/24.1/Process_Task_Link_Component.html) in an email to allow a user to perform the next step in a process. And if you want to link to information about a specific record, you could always link to a [record view](https://docs.appian.com/suite/help/24.1/record-view.html) using a [record link](https://docs.appian.com/suite/help/24.1/Record_Link_Component.html) component.

#### Create a link to a page with certain filter values automatically selected

You can use [a!urlForSite()](fnc_scripting_urlforsite.html) and [a!urlForPortal()](fnc_scripting_urlforportal.html) to link to a page that automatically filters content with URL parameters, allowing users to quickly access relevant information.

For example, in the following DOT portal, when a user clicks a link to project information for their county, a project grid opens that is automatically filtered by their county.

For an example of an interface expression that can work with URL parameters to filter content, see [Example: Setting up a filter to work with URL parameters](#example-setting-up-a-filter-to-work-with-url-parameters).

[![Example of linking to a filtered grid](images/url-param-grid-example2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img342)

[![](images/url-param-grid-example2.png)](#_)

#### View status of user request

In some scenarios, you may want users to see the results of a submitted form so they can track the status of their submission or follow up on it. With URL parameters, you can create a link that allows a user to view information they submitted.

For example, after a user completes a request to fix a pothole, this DOT portal can send them an email with a link to their request so they can view its status.

**Note:**  Don't create portals that allow users to update information in a form they already submitted. If users need to update information they submitted, they should have an Appian account and update the information through a site rather than a portal.

[![Example of linking to the status of a repair request](images/url-param-repair-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img343)

[![](images/url-param-repair-example.png)](#_)

#### Send unique links to users

You can also use URL parameters to send unique links to users.

For example, after attending a defensive driving class, a user could receive an email with a link to a survey asking them to evaluate the course. You could use URL parameters to create a unique link for the user that automatically associates the survey with the course they attended.

#### Pre-populate a form

Another way you can use URL parameters is to create a form that is pre-populated with information.

In the following example, when a user clicks a link to sign up for a specific driver safety class, the form automatically populates with information about the class, including date, time, and location.

**Note:**  In portals, don't use this method to pre-populate user-specific information on a form. Portals are intended for unauthenticated users to fill out generic forms.

[![Example of linking to a pre-populated form](images/url-param-class-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img344)

[![](images/url-param-class-example.png)](#_)

### Optimize navigation

Using URL parameters that [update dynamically with rule input changes](#determine-whether-to-update-the-web-address-when-rule-input-values-change) automatically enables seamless and intuitive navigation behaviors.

The following are some examples of these navigation behaviors. For instructions on how to set up interfaces with these behaviors, see [Configuring URL parameters](#configure-url-parameters) and [design interfaces to use URL parameters](#design-interfaces-to-use-url-parameters).

#### Allow users to share links with their selected filters

When URL parameters automatically update in the web address, it enables users to bookmark or share the link with their selected filters.

In the following sales dashboard, when the user selects different values for page filters, the URL parameters update in the web address. They can then bookmark a link that includes their filter selections.

[![gif of a sales dashboard with filter values changing and the URL updating](images/sales-db-filters.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img345)

[![](images/sales-db-filters.gif)](#_)

#### Remember filter selections when returning to a previously filtered page

Another benefit of allowing URL parameters to update in the web address is that it will automatically remember a user's filter selections. This means that when they click the browser back button, the web address will include their previously selected filters, saving time and effort.

For example, when a user filters the sales dashboard, navigates to a different page, then clicks the browser back button, their filters are remembered.

[![gif of user selecting filters on a page then navigating back](images/sales_db_back_button.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img346)

[![](images/sales_db_back_button.gif)](#_)

#### Update the web address when switching between tabs in an interface

You can connect URL parameters with rule inputs that specify what content to display in a tab. When a user switches between tabs, the URL parameters can update in the web address. This makes it easier to send a link directly to a tab in an interface.

In the following overview page for a user's insurance policy, there are tabs that switch between vehicles on the account. As the user switches between the tabs, the URL parameters update in the address. This allows the user to share or bookmark a link to a specific vehicle.

![url-parameters-tab-selection](images/url-parameters-tab-selection.gif)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...