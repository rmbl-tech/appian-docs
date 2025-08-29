---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-site-branding.html
original_path: sail/ux-site-branding.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Designing Sites and Portals \[SAIL Design System: Guidelines\]

-   [Guidelines](/suite/help/25.3/sail/guidance.html)
-   Welcome
    -   [Designing for Your Users](/suite/help/25.3/sail/ux-designing-for-your-users.html)
    -   [Presenting Information Clearly](/suite/help/25.3/sail/ux-presenting-information-clearly.html)
-   Layout Best Practices
    -   [Example Walk-Through](/suite/help/25.3/sail/ux-example-walkthrough.html)
    -   [Page Width](/suite/help/25.3/sail/ux-page-width.html)
    -   [Columns vs. Side by Side](/suite/help/25.3/sail/ux-columns-and-side-by-side.html)
-   Component Best Practices
    -   [Labels](/suite/help/25.3/sail/ux-labels.html)
    -   [Inputs, Selection, and Pickers](/suite/help/25.3/sail/ux-inputs.html)
    -   [Buttons vs. Links](/suite/help/25.3/sail/ux-buttons-vs-links.html)
-   Site & Portal Best Practices
    -   [Portal Design Guidelines](/suite/help/25.3/sail/ux-portals.html)
    -   [Designing Sites and Portals](#)
-   General Guidelines
    -   [Accessibility](/suite/help/25.3/sail/ux-accessibility.html)
    -   [Avoiding Clutter](/suite/help/25.3/sail/ux-avoiding-clutter.html)
    -   [Formatting and Punctuation](/suite/help/25.3/sail/ux-formatting-and-punctuation.html)
    -   [Mobile Considerations](/suite/help/25.3/sail/ux-mobile-considerations.html)
    -   [Progressive Disclosure](/suite/help/25.3/sail/ux-progressive-disclosure.html)
    -   [Using Colors](/suite/help/25.3/sail/ux-color-overview.html)

Guidelines Overview Designing for Your Users Presenting Information Clearly Example Walk-Through Page Width Columns vs. Side by Side Labels Inputs, Selection, and Pickers Buttons vs. Links Portal Design Guidelines Designing Sites and Portals Accessibility Avoiding Clutter Formatting and Punctuation Mobile Considerations Progressive Disclosure Using Colors

# Designing Sites and Portals

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

## Introduction

In both the [site](../sites_object.html) and [portal](../portal-object.html) objects, you have the power to configure all the details that will shape the look and feel of your site or portal.

While sites and portals share many of the same page structure and branding options, there are some instances where a certain setting is only available in one object and not the other.

To learn more about portal-specific design best practices, see [Portal Best Practices](../portals-design.html) and [Portals](ux-portals.html) design guidance.

## Organizing pages and page groups

Pages provide the structure for how users will interact with and navigate through your [site](../sites_object.html#pages) or [portal](../portal-object.html#pages). You can add a combination of up to ten pages or page groups to a site or portal. This section outlines the guidelines you should follow when adding pages and page groups to give your users the best experience. For more information on organizing and presenting information in your sites and portals, see [Presenting Information Clearly](ux-presenting-information-clearly.html).

### Use an appropriate number of pages to optimize navigation

Well-organized and clearly defined pages will offer the best navigation experience.

To help guide users to important information, pages and page groups should have a clear title and distinct purpose for being in your navigation bar. As a general rule, try to limit the number of top-level items in your navigation bar to eight.

Group pages with a similar purpose into page groups so they are organized under a single title in your navigation bar. You want to make it easy for users to scan the list of pages in a group and quickly find what they need. Keep this in mind when adding pages to your groups.

If you need additional navigation options on a particular page, use secondary navigation patterns like [tabs](secondary-navigation.html#horizontal-tabs-for-secondary-navigation) or a [sidebar](secondary-navigation.html#secondary-navigation-within-header-scope) to break up page contents.

For [mobile-first sites](ux-mobile-considerations.html#site-pages) that are only accessed on Appian Mobile, we recommend using no more than five pages or page groups in the navigation bar.

[![alttext](ds-images/organized_header_bar_do.png)](ds-images/organized_header_bar_do.png)

[![alttext](ds-images/organized_header_bar_dont.png)](ds-images/organized_header_bar_dont.png)

### Order pages for efficient navigation

Organize your pages and page groups in some kind of logical order, such as most-used to least-used or alphabetical order. Choose an arrangement will best suit the needs of your users.

### Use clear, concise page names

Users can more easily scan and find information when the page names are clear and concise. Using concise pages names also prevents the names from being truncated, since they are more likely to fit on the screen.

### Use clear titles for pages in page groups

To help users immediately understand what page they are on when navigating through page groups, make sure to include a [title](page-titles.html) at the top of each page that clearly indicates its intended purpose.

[![alttext](ds-images/page_group_clear_page_title_do.png)](ds-images/page_group_clear_page_title_do.png)

[![alttext](ds-images/page_group_clear_page_title_dont.png)](ds-images/page_group_clear_page_title_dont.png)

### For sites, use the best page width for the page content

When adding a site page, choose the [page width](../sites_object.html#add-a-page) that best matches the interface content.

For example, actions that have only a few fields will benefit from a narrow page width. Otherwise, the form may look stretched. Likewise, a dense interface or report can benefit from a wide page width or, if users have extra wide monitors, a full page width.

See [Page Width](ux-page-width.html) for more information.

Note portal page width is always "Full".

## Navigation bar

Sites and portals offer two different layout options for navigation: HEADER BAR and SIDEBAR.

[![alttext](ds-images/site_sidebar_vs_headerbar.png)](ds-images/site_sidebar_vs_headerbar.png)

Note both the header bar and sidebar layouts are automatically responsive. When the pages don't fit on the screen, they move from the navigation bar to a menu using the easily recognizable icon.

![responsive menu in a site](ds-images/site_responsive_menu.gif)

![responsive sidebar layout in a site](ds-images/site_responsive_sidebar.gif)

When accessed on a mobile browser, sites and portals automatically use this menu for page titles.

![portal navigation menu](ds-images/portal_mobile.png)

If you have users that will be switching between different sites, consider using the same layout for your navigation bar across those sites to provide a consistent user experience.

The navigation bar layout options as well as the header bar style options will not result in changes to the look of sites in the Appian Mobile app.

### Header bar

A header bar allows you to configure additional branding to help users easily recognize your sites and portals. Additionally, it provides navigation options to help users find what they are looking for.

#### Style

Header bar style is not only an aesthetic consideration but also a practical one. The "Helium" and "Mercury" styles are designed for different use cases.

Both of these style options are available in the [site object](../sites_object.html#navigation-bar), while [portals](../portal-object.html#branding) only use the "Mercury" style.

Note that Appian Mobile does not use the header bar styles. Choosing "Mercury" or "Helium" will not cause any changes in Appian Mobile.

##### Helium

Things to know about the Helium style:

-   Only available for sites (default option).
-   The logo is on the right side.
-   Each page name has an icon above it. These icons should reflect the purpose of the page.
-   Page names always display, even if the site has only one page.
-   The [selected highlight color](#selected-highlight-color) highlights the entire page tab.

![ds-images/Helium_single.png](ds-images/Helium_single.png)

_Site with "Helium" style and one page._

![ds-images/Helium_multi.png](ds-images/Helium_multi.png)

_Site with "Helium" style and multiple pages._

##### Mercury

Things to know about the Mercury style:

-   Available in both sites and portals (the only option for portals).
-   The logo is on the left side.
-   Page names display on their own, with no icons. However, keep in mind that icons always display in Appian Mobile. You should always choose an icon that reflects the purpose of the page
-   Page names only display if there is more than one page.
-   The [selected highlight color](#selected-highlight-color) underlines the page name.

Use this style for sites when you have a single page and you don't want the page name to be shown in the header bar.

![ds-images/Mercury_single.png](ds-images/Mercury_single.png)

_Site with "Mercury" style and one page_

![ds-images/Mercury_multi.png](ds-images/Mercury_multi.png)

_Site with "Mercury" style and multiple pages_

#### Color

Based on the configured header bar color, a dark gray or white color is automatically applied to the text and icons in the header bar. Avoid a medium-brightness header bar color which may not provide sufficient contrast with the text or icon color.

[![alttext](ds-images/navBar.png)](ds-images/navBar.png)

Don't choose a header bar color that makes the text and icons difficult to read.

#### Selected highlight color

The selected highlight color should be distinguishable enough from the navigation bar color so that users can easily tell which tab is highlighted.

For a clean, monochromatic look using the Helium header bar style, configure a selected highlight color that is a darker or lighter shade of the header bar color.

![ds-images/tabColor.png](ds-images/tabColor.png)

_This site with the Helium header bar style uses a dark blue background with a lighter blue highlight to create a monochromatic look._

For a streamlined, easy to navigate look using the Mercury header bar style, configure a selected highlight color that contrasts well with the header bar background color so that users can easily tell which tab they're on.

![ds-images/mercuryHighlightColor.png](ds-images/mercuryHighlightColor.png)

_This site with the Mercury header bar style uses a light blue background with a gold highlight to create user-friendly contrast._

#### Show display name

You can choose whether or not to show the display name in the header bar. You can configure this in the [site](../sites_object.html#navigation-bar) or [portal](../portal-object.html#navigation-bar) object.

![ds-images/show-portal-display-name.png](ds-images/show-portal-display-name.png)

#### Site and portal differences for header bar

The below table summarizes the key differences between header bars in sites and portals.

| Sites | Portals |
| --- | --- |
| Header bar is one of two options for navigation bar. | Header bar is always enabled for portals with more than one page; optional for portals with only one page. |
| Choose between "Helium" and "Mercury" styles. | "Mercury" style only. |
| Header bar includes:
\- A configurable logo.
\- Page titles. For single page sites that use "Mercury," the page title does not display.
\- A [navigation menu](../Sites.html#navigation-menu) . The site display name can optionally display in the navigation menu.
\- A [user menu](../Sites.html#user-menu). | Header bar includes:
\- A configurable logo.
\- Page titles. For single page portals, the page title does not display.
\- Portal display name (optional). |

#### Using a header bar in portals

For a single-page portal, adding a header bar allows you to quickly add a fixed header that helps brand your portal with a company logo and custom color scheme to enhance the visual appeal of your portal and make it recognizable to users.

[![alttext](ds-images/portal-header-comparison1.png)](ds-images/portal-header-comparison1.png)

It can also provide additional pages of navigation which allows for richer user experiences in portals that support multiple actions.

[![alttext](ds-images/portal-header-multi-page.png)](ds-images/portal-header-multi-page.png)

### Sidebar

Things to know about the sidebar layout for navigation bars:

-   Does not have the Helium and Mercury style options.
-   Displays pages and page groups in a vertically stacked, collapsible navigation bar on the side of the interface with icons displayed next to the titles.
-   If users close a site or portal, their collapsible sidebar choice will be remembered the next time they open the individual site or portal.
-   The selected page highlight color acts as the background color in the navigation bar rather than as a line beneath the page title.

[![alttext](ds-images/sidebar-style.png)](ds-images/sidebar-style.png)

#### Color

Based on the configured background color, a dark gray or white color is automatically applied to the text and icons in the sidebar. Avoid a medium-brightness color which may not provide sufficient contrast with the text or icon color.

[![alttext](ds-images/sidebar-color-dont.png)](ds-images/sidebar-color-dont.png)

Don't choose a background color that makes the text and icons difficult to read.

#### Selected highlight color

The selected highlight color should be distinguishable enough from the sidebar color so that users can easily tell which page is highlighted.

[![alttext](ds-images/sidebar-highlight-do.png)](ds-images/sidebar-highlight-do.png)

Choose a sidebar color that makes it clear which page is selected.

[![alttext](ds-images/sidebar-highlight-dont.png)](ds-images/sidebar-highlight-dont.png)

Don't choose a selected highlight color that makes it hard to tell which page is selected.

#### Show display name

You can choose whether or not to show the display name in the sidebar. You can configure this in the [site](../sites_object.html#navigation-bar) or [portal](../portal-object.html#navigation-bar) objects. The navigation menu always displays as the icon for this layout.

![ds-images/sidebar-display-name.png](ds-images/sidebar-display-name.png)

#### Sidebar guidance

The Sidebar option is available in both sites and portals but does not apply to Appian Mobile.

##### Use the sidebar for complex navigation

If your site or portal has many top-level pages or page groups, a sidebar layout can simplify a more complex navigation experience because the vertically stacked list of menu items is easier for users to scan.

For sites or portals with only a few pages or a single page, the sidebar may introduce too much blank space.

[![alttext](ds-images/sidebar-complex.png)](ds-images/sidebar-complex.png)

Use a sidebar for complex navigation

[![alttext](ds-images/sidebar-simple.png)](ds-images/sidebar-simple.png)

Don't use a sidebar with only a few site or portal pages

##### Make sure page content will work well on a narrow width

Because the sidebar will take up some horizontal space that the header bar does not, make sure your pages work well on a slightly narrower width. Components may stack sooner with a sidebar than they would with a header bar.

Stacking behavior will follow the width of the page itself and will not take the sidebar into account. For example, the following interface begins stacking sooner with a sidebar than with a header bar even though the Stack When parameter has the same value and the screen size is the same.

![content stacking with sidebar gif](ds-images/site_sidebar_stacking_behavior.gif)

Users have the option to collapse and expand the sidebar which will have some impact on the horizontal space on the page.

##### Don't use the same color for the sidebar and page background

Make sure the background color of your pages provide sufficient contrast against the sidebar color. Using a different color for your sidebar and page background color helps separate the page contents from the navigation bar and adds structure to your pages.

[![alttext](ds-images/sidebar-page-background-dont.png)](ds-images/sidebar-page-background-dont.png)

Don't use a page background color that is too similar to the sidebar color

## URL parameter navigation

Consider using URL parameters to enable seamless and intuitive navigation behavior.

For example, if your site or portal page has tabs that users can switch between, you can configure URL parameters to update the web address with the selected tab, making it easier for users to bookmark links to a specific tab. For an example of how to enable this, see [Example: Update web address when switching between tabs](../url-parameters.html#example-update-web-address-when-switching-between-tabs).

[![gif of user selecting two different tabs on a page and the tab content and web address updating](ds-images/select-vehicle-tab-do.gif)](ds-images/select-vehicle-tab-do.gif)

_The URL parameters update in the web address when users navigate between tabs, allowing users to bookmark a link to the tab._

If you have an interface that can be filtered, when you set up the filters to work with URL parameters, you can configure the web address to update when users filter the content. This works whether the URL parameters are encrypted or plaintext.

Doing this:

-   [Allows users to share and bookmark links with their selected filters](../url-parameters.html#allow-users-to-share-links-with-their-selected-filters).
-   [Remembers filter selections when users return to a previously filtered page](../url-parameters.html#remember-filter-selections-when-returning-to-a-previously-filtered-page).

For an example of how to set up filters to work with URL parameters, see [Example: Setting the value of a filter using a rule input](../url-parameters.html#example-setting-up-a-filter-to-work-with-url-parameters).

To get the desired behavior for remembering filter selections, be sure to set **Refresh After** to "Unfocus" for the filter. If it is set to "Keypress", each character the user typed will be remembered when they click the browser back button.

[![gif of a sales dashboard with filter values changing and the URL updating](ds-images/sales_db_back_button.gif)](ds-images/sales_db_back_button.gif)

_When filtering the page, the URL parameters update in the web address and they are remembered when the user clicks the browser back button. If the user copies the link to the filtered page, they can share and bookmark their selections._

## Color scheme

For sites, you can either create a custom color scheme by selecting hex codes for each field or you can use one of our predefined [dark color schemes](#dark-color-schemes-sites).

For portals, you can create a custom color scheme using hex codes for the header bar, selected highlight, accent, and loading bar colors.

### Dark color schemes (sites)

Each dark color scheme comes with predefined colors for the header bar color, selected highlight color, accent color, and loading bar color.

There are three predefined dark color schemes that you can choose from: "Charcoal", "Navy", and "Plum".

![ds-images/charcoal_scheme.png](ds-images/charcoal_scheme.png)

_A site header bar using the "Charcoal" color scheme._

![ds-images/navy_scheme.png](ds-images/navy_scheme.png)

_A site header bar using the "Navy" color scheme._

![ds-images/plum_scheme.png](ds-images/plum_scheme.png)

_A site header bar using the "Plum" color scheme._

If you select one of these color schemes, make sure that your site pages are using the same color scheme.

To do this:

1.  In the interface for your site page, use a [header content layout](../Header_Layout.html) with the _backgroundColor_ parameter set to the same color scheme used for your site: "Charcoal", "Navy", "Plum".
2.  Put the page's contents into [Card Layouts](../card_layout.html) with the _style_ parameter of each Card Layout set to the same color scheme used for your site.

In order to create a consistent style and user experience across your site, avoid creating sites with a mix of dark and non-dark color scheme pages.

The following interface elements cannot use dark color schemes:

-   Record lists.
-   Related action modals.
-   The news tab in records.
-   The related actions tabs in records.

These elements use the default white background. For sites including any of these elements, use the default background on all site pages.

## Logo

The logo configuration allows you to brand your site or portal to make it instantly recognizable to users. Use a site logo with a transparent background and sufficient contrast against the header bar color.

[![alttext](ds-images/siteColors_do_ex2.png)](ds-images/siteColors_do_ex2.png)

[![alttext](ds-images/siteColors_dont_ex2.png)](ds-images/siteColors_dont_ex2.png)

## Branding

For a more cohesive user experience, you can better match your organization's branding using the branding configurations in site and portal objects.

With just a few clicks, you can configure all interfaces in your site or portal to use specific border shapes, colors, button label capitalization, and more.

To ensure you are working with the most accurate representation of your interfaces, we recommend configuring the branding for your site or portal early on in your app development. This allows you to take full advantage of the interface object [Branding preview](../interface_object.html#branding-preview) ![branding preview icon](ds-images/branding-preview-icon.svg) throughout your design process. When you are editing interface objects, use this menu to select the site or portal that the interface will display in and see how your branding applies while you are designing.

![branding_preview_selection](ds-images/branding_preview_selection.gif)

### Border shapes

You can configure the shapes of inputs, dialogs, and buttons at the site or portal level.

You can configure the shape of [box layouts](../Box_Layout.html) and [card layouts](../card_layout.html) at the component level. These shape configurations can't be applied site-wide.

#### Input shape

You can select an input shape to match your branding and experience. The input shape is applied to all inputs, pickers, and selection fields, as well as all tooltips, on every page of a site or portal.

There are two options for input shape: squared and semi-rounded. Squared is the default selection.

The input shape does not apply to the following interface elements:

-   Layouts
-   Display fields
-   Actions
-   Grids
-   Charts
-   Browsers
-   Record banners

[![alttext](ds-images/semi-rounded-input-shape-example.png)](ds-images/semi-rounded-input-shape-example.png)

_This dashboard shows both semi-rounded inputs and semi-rounded cards displayed in a site. Use rounded cards and rounded inputs together for a professional and consistent user experience._

#### Dialog shape

You can select a dialog shape to match the branding and style of your site or portal. The dialog shape is applied to all dialogs that are opened when a user is on the site or portal, including:

-   Record action dialogs
-   User Settings dialog
-   About Appian dialog
-   Confirmation dialogs
-   Event history dialogs

**Tip:**  If you open a dialog when you aren't on a site or portal, such as from Appian Designer, the dialog will use the default **Squared** shape.

#### Button shape

You can select a button shape to match the branding and style of your site or portal. The button shape is applied to all buttons on every page of a site or portal, including record view and record actions.

There are three options for button shape: squared, semi-rounded, and rounded. Squared is the default selection.

![ds-images/site_rounded_buttons.png](ds-images/site_rounded_buttons.png)

_This dashboard shows rounded buttons displayed in a site._

### Button label capitalization

By default, all button labels use uppercase capitalization. You can configure this in a [site object](../sites_object.html#branding) or [portal object](../portal-object.html#branding), which will apply to all buttons in the site or portal.

If you deselect **Use uppercase capitalization for button labels**, you can control button label capitalization in each button component. Just be sure to use consistent capitalization across all buttons in your site or portal.

### Accent color

A configurable accent color is used to highlight key UI elements such as "Primary" style links and section headings. The accent color is also used as the default color for buttons.

Avoid accent colors that are:

-   Too close to the standard, black text color.
-   Too close to the red destructive button and error message color.
-   Too low in contrast against the white page background. The accent color should have a minimum contrast ratio of 4.5:1. Use a [contrast checker](https://webaim.org/resources/contrastchecker/) to ensure your selected color meets the requirement.

[![alttext](ds-images/accentColor_dont.png)](ds-images/accentColor_dont.png)

If you're using a predefined dark color scheme, make sure that your accent color looks good everywhere that it will be used throughout your site.

#### Accent color accessibility

A faded version of the accent color is used as a hover style on certain components, such as dropdown menus and grids with row highlight. For better accessibility, test your accent color while hovering on dropdown menus and grids with row highlight to ensure they have adequate color contrast. The contrast ratio between the cell color and the text should be 4.5:1.

### Loading bar color

The loading bar, which appears above the header bar, gives users an idea of how long it will take the system to load a page or process an action. Select a loading bar color with sufficient contrast against the header bar color to ensure that users notice it.

![loadingBar.png](ds-images/loadingBar.png)

_The loading bar color should stand out from the header bar color so that users notice it_

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.