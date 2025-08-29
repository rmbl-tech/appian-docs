---
source_url: https://docs.appian.com/suite/help/25.3/find_and_search_in_appian.html
original_path: find_and_search_in_appian.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Search in Designer

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Developers need to be able to quickly find objects within Appian Designer. There are a variety of options to enable fast and flexible searching. This page explains how to use the search options across the various views.

## Search for an application

Go to the [**Applications** view](applications-view.html#search-for-an-application).

## Quick search

Quick search lets you search your environment for any design object except documents and groups. This search is available anywhere in Appian Designer, except for the process modeler, where the [header bar](common-view-elements.html#header-bar) is visible.

[![Header containing quick search box](images/header-global-search-box.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img255)

[![](images/header-global-search-box.png)](#_)

To quickly search for an object in your environment:

1.  Access the quick search:
    -   In any view, click the quick search icon in the header bar.
    -   In any view or dialog, use the keyboard shortcut, CTRL + Space.

        **Tip:**  If the keyboard shortcut is not working, check your OS to see if there is a keyboard shortcut already configured for CTRL + Space.

2.  In the box, enter the name of an object. A dropdown list displays objects that match your search.
3.  Select an object from the list. The selected object opens in a new tab.

To search for documents and groups in your environment, or to search on properties other than object name, [search the objects grid](#search-for-an-object) in the **Objects** view instead.

## Search for an object

In an objects grid, you can search for objects within specific scopes, as follows:

| Scope | Grid Location |
| --- | --- |
| Objects in the environment | Go to the **ALL OBJECTS** tab in the [**Objects** view](objects-view.html). |
| Objects in an individual application | Go to the **ALL OBJECTS** or **UNREFERENCED OBJECTS** tab in the [**Build** view](build-view.html). |
| Objects in a folder | Go to the [folder object](folder-object.html). |
| Objects in a group | Go to the [group object](Group_Management.html). |

To search an objects grid:

1.  Go to the objects grid appropriate to your search scope, as defined in the table above.
2.  In the filter pane, click the down arrow next to the search box, then select what part of the object the search runs against:
    -   [**Name or Description**](#name-or-description)
    -   [**UUID or ID**](#uuid-or-id)
    -   [**Expression**](#expression)
3.  In the search box, enter your search term(s).
4.  (Optional) Further refine the objects list by applying filters in the filter pane.

### Name or Description

The system searches the **Name** and **Description** properties of the objects currently listed in the grid.

This search is selected by default.

### UUID or ID

The system searches the **UUID** and **ID** properties of the objects currently listed in the grid.

The UUID of an object remains stable across different environments, whereas the object's local ID may change. The local ID is the Appian object identifier that gets stored in process and external database tables.

Searching on UUID is helpful when you're troubleshooting missing dependency problems on [inspect](inspect-deployment-packages.html) or [import](Deploy_to_Target_Environments.html#manual-export-and-import).

Searching on the local ID is useful for finding objects like documents, folders, and groups, particularly when debugging.

#### Notes about searching UUID or ID

-   In [Objects View](objects-view.html), searching for a document using its older version ID will not return any results. Search using document name instead.
-   In [Build View](build-view.html) you may search using a document's current or previous ID.
-   If you have a document ID and need the document name, you can use the [document function](fnc_scripting_document.html) with property `name`

### Expression

This search option is not available when searching in a group or knowledge center.

The system searches the expression content of the objects currently listed in the grid.

Expression content may be anything from a gateway expression in a process model, the definition of an expression rule, or the visibility expression of a record view. It's a powerful way to find plug-in functions, look for specific components, or easily hunt down legacy functions so you can take advantage of their improved, modern versions.

In this search mode, the **Description** column is replaced with an **Expression** column that displays a snippet of the matching expression (or the first matching expression, if more than one is found in the same object). For example, a search for `formLayout_17r1` would return all rules with `a!formLayout_17r1(` in the **Expression** column.

![Expression Search Result](images/search_result_expression.png)

#### Notes about searching expressions

-   The search across expressions is _case-insensitive_, and treats all special characters as a _space_ character. For example, the search terms `apply(` and `apply` will return identical results, as will the search terms `CRM_getCustomerNames` and `crm getcustomernames`.
-   Given this behavior for special characters, we automatically strip out Appian domains from the beginning of search terms to prevent confusion. Since the search `a!applyComponents` would be treated as `a applyComponents`, and therefore return more results than intended, we strip the domain and simply search for `applyComponents`. You can see the adjusted search term in the blue bar above your results.
-   When a search term is part of a longer word, it will only match if it matches the beginning of that word. For example, the search `customer` or `customerFeedback` will find uses of the `customerFeedbackForm` interface, but the searches `feedback` or `feedbackForm` will not, since the name of the rule does not start with those terms.

## Search for a plug-in

In a plug-ins grid, you can search by the name of the plug-in or the plug-in's modules.

You can search for plug-ins within specific scopes, as follows:

| Scope | Grid Location |
| --- | --- |
| Plug-ins in the environment | In Appian Designer, go to the **PLUG-INS** tab of the [**Objects** view](objects-view.html). In the Admin Console, click [**Plug-ins**](Appian_Administration_Console.html#plug-ins) in the navigation pane. |
| Plug-ins referenced in an application | Go to the **PLUG-INS** tab of the [**Build** view](build-view.html). |
| Plug-ins added to a package | Go to the [packages view](prepare-deployment-packages.html) of the application, or go to the [**Prepare Deployment** step](Deploy_to_Target_Environments.html) of a direct deployment. |

## Search for a deployment

Go to the [**Deploy** view](deployments-view.html).

## Search for a user

Go to the [**Users** view](users_view.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...