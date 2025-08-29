---
source_url: https://docs.appian.com/suite/help/25.3/reference-sites.html
original_path: reference-sites.html
version: "25.3"
title: "Reference a Site Page"
page_id: "reference-sites"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Reference a Site Page

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

You can directly reference the site object in certain functions using the `site!` domain. This [domain prefix](domain_prefixes.html#object-prefixes) is a direct object reference that removes the need to create a constant to reference a site page.

Site object references allow you to reference pages configured in the site for use in [a!urlForSite()](fnc_scripting_urlforsite.html). This function requires a reference to a site page, not just a site object.

For more information on linking to site pages, see [Use URL Parameters for Site and Portal Navigation](url-parameters.html)

## Reference a site page

It's easy to construct a site page reference since the `site!` domain leverages typeahead to suggest a selection of existing sites. If you already know the name of your site, you can even skip entering the domain and simply type the name of the site for the domain and site object reference to appear.

![referencing a site by its name](images/urlforsite-object-ref.gif)

**Note:**  If you are unable to reference a specific site, make sure that you have [**Viewer** permission](sites_object.html#security) to the site object.

The site object reference combined with `.` dot notation allows you to directly access site pages, which are identified in the object reference by their web address identifier.

To reference a site page:

1.  Enter the `site!` domain and select the site.
2.  Enter `.` after `site!<Site Name>` to autosuggest the site pages.
3.  Select `pages` to access the menu of pages configured in the site object.
4.  Select a page's web address identifier from the dropdown to append to the `pages` property.

For example, the reference below refers to the My Projects page on the DOT Site.

![example of referencing a site page](images/urlforsite-site-page-ref.png)

When you highlight a site page from the dropdown, Appian automatically provides additional information about the page, including:

-   Site name.
-   Page title.
-   Page web address identifier.
-   Type of page.
-   Interface used as the page content.
-   Whether or not the page is configured to use encrypted URL parameters.
-   URL parameters names that are enabled for the page.
-   Visibility setting

You can also access this information in the expression documentation pane by clicking the site page reference. Notice how the URL parameter names display under **Enabled URL Parameter(s)**. This will come in handy when using the _urlParameters_ parameter in [a!urlForSite()](fnc_scripting_urlforsite.html).

![site page information in the expression documentation pane](images/url-param-doc-pane-all-site.png)

When using a site page reference, Appian automatically shortens the reference to improve the readability of your expressions. To display the full reference, simply hover over it.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...