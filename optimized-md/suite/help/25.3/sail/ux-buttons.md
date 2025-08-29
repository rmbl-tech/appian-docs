---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-buttons.html
original_path: sail/ux-buttons.html
version: "25.3"
title: "Buttons"
page_id: "sail/ux-buttons"
section: "Styles"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Buttons \[SAIL Design System: Components\]

-   [Components](/suite/help/25.3/sail/components.html)
-   Top-Level Layouts
    -   [Form Layout](/suite/help/25.3/sail/ux-form-layout.html)
    -   [Wizard Layout](/suite/help/25.3/sail/ux-wizard-layout.html)
    -   [Header Content Layout](/suite/help/25.3/sail/ux-header-content-layout.html)
    -   [Pane Layout](/suite/help/25.3/sail/ux-pane-layout.html)
-   Layouts
    -   [Section Layout](/suite/help/25.3/sail/ux-section-layout.html)
    -   [Columns Layout](/suite/help/25.3/sail/ux-columns-layout.html)
    -   [Side by Side Layout](/suite/help/25.3/sail/ux-side-by-side-layout.html)
    -   [Box Layout](/suite/help/25.3/sail/ux-box-layout.html)
    -   [Card Layout](/suite/help/25.3/sail/ux-card-layout.html)
    -   [Billboard Layout](/suite/help/25.3/sail/ux-billboard-layout.html)
-   Display
    -   [Images](/suite/help/25.3/sail/ux-images.html)
    -   [Rich Text](/suite/help/25.3/sail/ux-rich-text.html)
    -   [KPIs](/suite/help/25.3/sail/ux-kpi.html)
    -   [Tags](/suite/help/25.3/sail/ux-tags.html)
    -   [Gauges](/suite/help/25.3/sail/ux-gauge.html)
    -   [Standard Icons](/suite/help/25.3/sail/ux-styled-icons.html)
-   Action
    -   [Buttons](#)
    -   [Record Actions](/suite/help/25.3/sail/ux-record-actions.html)
-   Grids & Lists
    -   [Grids](/suite/help/25.3/sail/ux-grids.html)
    -   [Event History List](/suite/help/25.3/sail/ux-event-history-list.html)
-   Charts
    -   [Charts](/suite/help/25.3/sail/ux-charts.html)

Components Overview Form Layout Wizard Layout Header Content Layout Pane Layout Section Layout Columns Layout Side by Side Layout Box Layout Card Layout Billboard Layout Images Rich Text KPIs Tags Gauges Standard Icons Buttons Record Actions Grids Event History List Charts

# Buttons

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

See the developer documentation for technical details about the [button component](/suite/help/25.3/Button_Component.html).

## Styles

By default, use "Outline" button styling.

Don't rely on the styling of buttons to convey their meaning. Use text labels that convey sufficient information to users who cannot see the button.

![ds-images/ux_button_styles.gif](ds-images/ux_button_styles.gif)

### Solid

"Solid" button styling draws attention to the most common action on an interface to speed up user interactions.

Assume that many users will be biased toward selecting the solid button; make sure to limit side effects of mistakes.

[![alttext](ds-images/primary_buttons.png)](ds-images/primary_buttons.png)

Don't show more than one solid button on an interface. Don't use "Solid" styling for buttons that delete data or cancel the user's current activity.

### Ghost

"Ghost" style emphasizes interactivity. Initially they look like outline buttons, but on focus they become solid. In cases where the solid style is too visually disruptive, use the ghost to emphasize a key action.

This style can be used in combination with the "Negative" color to emphasize a destructive action.

### Link

Use the "Link" style to de-emphasize less common actions. The "Link" style should be used sparingly.

[![alttext](ds-images/buttons_linkStyle.png)](ds-images/buttons_linkStyle.png)

[![alttext](ds-images/buttons_linkStyle_dont.png)](ds-images/buttons_linkStyle_dont.png)

Avoid having more than one "Link" style button in a group

## Colors

By default, buttons use the configured accent color. The accent color can be defined for a site or portal, which helps create a consistent look.

Most buttons should use the accent color, or one of the other pre-configured colors depending on the action they trigger. Avoid using more than one custom button color on an interface.

Similar to styling, don't rely solely on color of buttons to convey their meaning. Use text labels that convey sufficient information to users who cannot see the button.

![ds-images/ux_button_colors.png](ds-images/ux_button_colors.png)

### Secondary

"Secondary" button styling is gray, it is used for actions that need to be differentiated from form submission buttons or for less common actions on an interface. This color should be used in combination with "Outline" and "Link" styles as they are also more subdued.

[![alttext](ds-images/ux_secondaryButtons.png)](ds-images/ux_secondaryButtons.png)

Use "Secondary" color for inline buttons within the body of a form

[![alttext](ds-images/buttons_secondary_do.png)](ds-images/buttons_secondary_do.png)

Use "Secondary" color, instead of the accent color, for buttons alongside a destructive action

### Negative

"Negative" button color highlights actions that result in loss of persisted data.

This color can be used in combination with the "Ghost" style to emphasize a destructive action.

[![alttext](ds-images/destructive_buttons.png)](ds-images/destructive_buttons.png)

Don't use the "Negative" color for easily-reversible actions or the removal of information entered by the user while viewing the interface.

## Size

By default, use "Standard" size.

Keep in mind that there is only one button size on mobile devices.

![ds-images/buttons_size.png](ds-images/buttons_size.png)

[![alttext](ds-images/buttons_inconsistentSize_dont.png)](ds-images/buttons_inconsistentSize_dont.png)

Don't use more than one size button for a group of buttons

### Small

Use "Small" button size with "Secondary" color to differentiate inline buttons, such as grid toolbars, from form submission buttons.

![ds-images/buttons_gridToolbar.png](ds-images/buttons_gridToolbar.png)

When using buttons in a columns layout or side-by-side layout, use "Small" button size to match the height of other interface components, such as a text box or dropdown.

![ds-images/small_button.png](ds-images/small_button.png)

### Large

Use "Large" button size to draw more attention to the main action on the page.

![ds-images/buttons_largeSize_do.png](ds-images/buttons_largeSize_do.png)

## Width

By default, buttons are "Minimize" width everywhere except for mobile browsers and phones, where they are "Fill" width.

[![screenshot of two buttons displaying the two available widths; minimize and fill](ds-images/button_widths.png)](ds-images/button_widths.png)

Avoid using more than one button width for a group of buttons.

### Minimize

Use the "Minimize" button width when you want the button to be as wide as the content inside.

[![alttext](ds-images/minimizeButtonWidth.gif)](ds-images/minimizeButtonWidth.gif)

[![alttext](ds-images/buttonWidthMinimizeDont.png)](ds-images/buttonWidthMinimizeDont.png)

Avoid using "Minimize" for a list of stacked buttons that have different text widths.

### Fill

Use "Fill" button width to make the buttons as wide as the container that they're in. Use "Fill" with [responsive](../responsive_design.html) interfaces, such as those where the buttons should stack and/or fill their container depending on page size.

You should also use "Fill" to make a list of stacked buttons a uniform width.

[![alttext](ds-images/buttonWidthFill.png)](ds-images/buttonWidthFill.png)

**Note:**  If the buttons that you want to display in a list represent record actions, use the record action component's [sidebar style](ux-record-actions.html#sidebar) to automatically format your buttons in this way.

## Loading indicator

Use the "Loading indicator" parameter on buttons that may trigger longer processing times. For example, data retrievals, integration calls, or large data submissions. The indicator lets users know that their request is loading so that they don't click the button twice or refresh the page.

[![alttext](ds-images/loading_indicator_example.gif)](ds-images/loading_indicator_example.gif)

## Labels

If possible, use a verb that best describes the button action (e.g. "Approve") instead of a generic label (e.g. "Submit").

For wizards, use a "Next" or "Continue" label to indicate that additional steps remain.

## Button shape and capitalization

By default, all buttons have a squared shape and use uppercase capitalization for labels.

Button shape and button label capitalization can be controlled in the **Branding** section of [site](../sites_object.html#branding) and [portal](../portal-object.html#branding) objects. These settings apply to all interfaces that display in the site or portal.

When editing interfaces, use the [Branding preview](../interface_object.html#branding-preview) ![branding preview icon](ds-images/branding-preview-icon.svg) menu to choose the site or portal that your interface will display in. This will update all of the buttons in your interface to use the shape and capitalization configured in the site or portal.

### Button shape

The following are the options for button shape that can be configured in site and portal objects.

| Shape | Example |
| --- | --- |
| Squared (default) | ![button_squared](ds-images/button_squared.png) |
| Semi-rounded | ![button_semi_rounded](ds-images/button_semi_rounded.png) |
| Rounded | ![button_rounded](ds-images/button_rounded.png) |

### Button label capitalization

If you deselect **Use uppercase capitalization for button labels**, you can control button label capitalization in each button component. Be sure to use consistent capitalization across all buttons in your site or portal.

![button_capitalization](ds-images/button_capitalization.png)

## Icons

Icons can be used in buttons to draw attention. If a button contains an icon but no text, be sure to add a label via the accessibility text parameter for non-sighted users.

In most cases, the icon should be positioned at the start of the text. If a button is used to navigate through multiple screens (like the **Next** button in a [wizard](../recipe-build-a-wizard-with-milestone-navigation.html)), the icon can be positioned at the end of the text to better indicate the direction of the user's flow.

Adding an icon to a button isn't always necessary and can lead to a more cluttered interface, especially when there is already text on the button.

## Location

The form footer button group is only for buttons that submit an entire form or navigate away from the form (Cancel, Go Back, etc.).

Use inline button groups within the interface content for buttons that act on part of the content and do not take the user away from the interface (e.g. buttons as a toolbar for selected items in a grid).

[![alttext](ds-images/buttons_location_do.png)](ds-images/buttons_location_do.png)

[![alttext](ds-images/button_location.png)](ds-images/button_location.png)

Don't use "Solid" styling for buttons that delete data or cancel the user's current activity.

## Position

Place all form submission buttons on the right side of the button group. The most commonly-used button should come first (left-most). This button should use the solid style (unless the action deletes persisted data, in which case it should use the ghost style and negative color).

Go back/cancel buttons should be placed on the left side of the button group (back button left-most).

[![alttext](ds-images/button_position.png)](ds-images/button_position.png)

## Availability

Buttons that are temporarily unavailable due to the state of form data should generally be disabled, not hidden.

However, if the availability of a large number of buttons changes as users interact with the form, unavailable buttons should be hidden to reduce clutter and allow users to easily see valid options.

[![alttext](ds-images/button_availability.png)](ds-images/button_availability.png)

## Related actions shortcuts

Use concise titles for related actions to prevent shortcut button label truncation. If additional text is needed to convey the purpose of the action, add descriptive text rather than lengthening the title.

Make only the most relevant related actions to a record view available as shortcuts, no more than 3 if possible.

[![alttext](ds-images/relatedActionsShortcuts_dont.png)](ds-images/relatedActionsShortcuts_dont.png)

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.