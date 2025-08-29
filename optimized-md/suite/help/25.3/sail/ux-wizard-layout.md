---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-wizard-layout.html
original_path: sail/ux-wizard-layout.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Wizard Layout \[SAIL Design System: Components\]

-   [Components](/suite/help/25.3/sail/components.html)
-   Top-Level Layouts
    -   [Form Layout](/suite/help/25.3/sail/ux-form-layout.html)
    -   [Wizard Layout](#)
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
    -   [Buttons](/suite/help/25.3/sail/ux-buttons.html)
    -   [Record Actions](/suite/help/25.3/sail/ux-record-actions.html)
-   Grids & Lists
    -   [Grids](/suite/help/25.3/sail/ux-grids.html)
    -   [Event History List](/suite/help/25.3/sail/ux-event-history-list.html)
-   Charts
    -   [Charts](/suite/help/25.3/sail/ux-charts.html)

Components Overview Form Layout Wizard Layout Header Content Layout Pane Layout Section Layout Columns Layout Side by Side Layout Box Layout Card Layout Billboard Layout Images Rich Text KPIs Tags Gauges Standard Icons Buttons Record Actions Grids Event History List Charts

# Wizard Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

See the developer documentation for technical details about the [wizard layout](/suite/help/25.3/Wizard_Layout.html).

## Introduction

The wizard layout allows you to design pages with built-in features that streamline multi-step form design, including:

-   A title bar that can include a title and instructions for the wizard.
-   A step indicator that can optionally display a horizontal or vertical milestone with the wizard step names.
-   Wizard steps with input fields as well as other components and layouts.
-   A button footer with primary and secondary buttons that allow users to easily navigate between wizard steps.

![wizard layout example](ds-images/wizard-layout-example.png)

Because the wizard layout is a top-level layout, it cannot be nested within other layouts.

This page talks about when to use the wizard layout, how to use its design configurations, and what style guidelines to follow when designing interfaces.

## When to use a wizard layout

Use the wizard layout as your top-level interface to organize long forms into sequential steps. Drag and drop it from the component palette to quickly create a wizard with a title bar, milestone, wizard step area, and button footer for a familiar user experience.

![gif of a user dragging a wizard layout into their interface from the component palette](ds-images/wizard-layout-drag-from-palette.gif)

The wizard layout includes built-in features that help you provide a user-friendly experience:

-   Button footers are automatically fixed to the bottom of record action dialogs.
-   [Primary](#primary-buttons-parameter) and [secondary](#secondary-buttons-parameter) buttons are automatically placed and styled, and Next and Back buttons are configured for you.
-   You can decide whether the wizard should [focus on the first field](#automatically-focus-on-first-input-parameter) when each step loads.
-   You can configure [validations](#validations-parameter) for each step to make sure forms are completed correctly.

You may want to use a [form layout](ux-form-layout.html) instead in the following scenarios:

-   Your form only has a few input fields that don't need to be organized into sections.
-   Users will likely need to skip from one input to another instead of completing the form sequentially.

## Wizard layout usage

This section highlights variations of the wizard layout to help you visualize what's possible for your interface designs.

To use a wizard layout in design view, you must start with a blank interface. For existing interfaces, the **TOP LEVEL LAYOUTS** menu is not visible. To add a wizard layout to an existing page, either remove all existing content or switch to expression mode.

The following sections describe the parameter configurations as they are displayed in the [component configuration pane](../working_in_design_mode.html#component-configuration) of an interface object.

### Title bar configurations

Title bar configurations affect the wizard title bar. They allow you to control the [title bar appearance](#title-bar-parameter), [title bar divider](#show-title-bar-divider-parameter), and whether the title bar is [fixed when scrolling](#fix-title-bar-when-scrolling-parameter).

![wizard_layout_titleBar](ds-images/wizard_layout_titleBar.png)

#### Title Bar parameter

_Related style guidelines: [Form Layout: Title bar guidelines](ux-form-layout.html#title-bar-guidelines)_

Use the **Title Bar** parameter to customize the title bar's main text, optional secondary text, and style. You can configure this parameter using text, a header component ([simple](../Header_Template_Simple.html), [full](../Header_Template_Full.html), [image](../Header_Template_Image.html), or [sidebar](../Sidebar_Template.html)), a single [billboard layout](ux-billboard-layout.html) or [card layout](ux-card-layout.html), or an array of billboard and card layouts.

![header-template-compare](ds-images/header-template-compare.png)

#### Fix title bar when scrolling parameter

_Related style guidelines: [Form Layout: In scrolling dialogs, use a fixed title bar and buttons](ux-form-layout.html#in-scrolling-dialogs-use-a-fixed-title-bar-and-buttons)_

Use the **Fix header when scrolling** parameter to choose if the title bar stays fixed at the top of the wizard while scrolling.

![gif of title bar remaining fixed while scrolling](ds-images/wizard-layout-fixed-title-bar.gif)

#### Show title bar divider parameter

Use the **Show title bar divider parameter** to choose whether to show a divider line below the title bar.

### Design configurations

Design configurations affect the look of the entire wizard. They allow you to control the wizard [style](#style-parameter), [background color](#background-color-parameter), and [when to show the wizard](#show-when-parameter).

#### Background Color parameter

_Related style guidelines: [Form Layout: Form background color guidelines](ux-form-layout.html#form-background-color-guidelines)_

Use the **Background Color** parameter to change the color of the wizard page. Valid values are "White" (default), "Transparent", "Charcoal Scheme", "Navy Scheme", and "Plum Scheme". You can also set a custom color by using a hex code.

If you set the background color to "Transparent", the wizard will use the standard light gray background color that is standard in all sites and portals.

![image comparing white and transparent wizard backgrounds](ds-images/wizard-layout-bg-comparison.png)

#### Style parameter

_Related style guidelines: [Selecting a wizard style](#selecting-a-wizard-style), [Avoid using vertical tab patterns with vertical milestone style](#avoid-using-vertical-tab-patterns-with-vertical-milestone-styles)_

Use the **Style** parameter to choose whether you want to show a vertical milestone, a horizontal milestone, or no milestone. Valid values are "Dot Vertical" (default), "Dot Horizontal", "Chevron Vertical", "Chevron Horizontal", "Line Vertical", "Line Horizontal", and "Minimal".

Vertical and horizontal styles will provide the most information to your users. Vertical styles display a milestone to the left of the wizard step contents, and horizontal styles display a milestone above the wizard step contents. Use vertical milestone styles to balance horizontal white space with narrower content widths.

If you don't want to display the milestone, select `"MINIMAL"` to show the step number above the contents instead (for example, "Step 1 of 2"). Use the minimal style when step progress information is not as important for the user. For example if there are only a few steps in your wizard, users might not need to see the names of each step.

On smaller screens, wizards will responsively display a minimal milestone style.

![gif showing different wizard styles](ds-images/wizard-milestones.gif)

#### Show When parameter

Use the **Show When** parameter to show or hide the entire wizard.

### Steps configurations

Wizard step configurations affect the contents of the wizard's steps. They allow you to specify what to display in the [wizard step contents](#wizard-steps-parameter), specify the [contents width](#contents-width-parameter), decide whether to [show step headings](#show-step-heading-parameter), and decide whether to [focus on the first input](#automatically-focus-on-first-input-parameter) in each step.

#### Wizard Steps parameter

Use the **Wizard Steps** parameter to build each step of the wizard using the [Wizard Step component](../Wizard_Step_Component.html). See [Wizard step usage](#wizard-step-usage) for more information about building wizard steps.

#### Contents Width parameter

_Related style guidelines: [Form Layout: Use "Full" width when displaying forms in dialogs](ux-form-layout.html#use-full-width-when-displaying-forms-in-dialogs), [Form Layout: Use one narrow column for the form content](ux-form-layout.html#use-one-narrow-column-for-the-form-content), [Form Layout: Don't add additional columns to center form content](ux-form-layout.html#dont-add-additional-columns-to-center-form-content)_

Use the **Contents Width** parameter to set the width of the wizard step contents. Valid values are "Full", "Wide", "Medium", "Narrow", and "Extra Narrow".

Select "Full" if you want the wizard step contents to take up the entire width of the screen. If you are displaying the wizard in a record action dialog, we recommend selecting "Full" and configuring the dialog size in the record type to control the width of the wizard.

This parameter only controls the width of the step contents area.

The following example shows the progression of wizard width values from "Full" to "Extra Narrow".

![gif showing different wizard content widths](ds-images/wizard-layout-contents-width.gif)

#### Show step heading parameter

_Related style guidelines: [Show step headings to give users context](#show-step-headings-to-give-users-context), [Choose an appropriate section heading size](#choose-an-appropriate-section-heading-size)_

Use the **Show step heading** to choose whether to show the wizard step labels as headings above the step contents. The step labels will still appear in the wizard milestone, if you choose a [style](#style-parameter) that shows a milestone.

[![wizard layout showing the step heading](ds-images/wizard-layout-step-heading.png)](ds-images/wizard-layout-step-heading.png)

#### Automatically focus on first input parameter

Use the **Automatically focus on first input** parameter to control whether the cursor is automatically placed in the first field when each wizard step loads. When this option is enabled, the first input field will be active by default.

### Button configurations

_Related style guidelines: [Button guidelines](#button-guidelines)_

Button configurations allow you to control the wizard's [primary](#primary-buttons-parameter) and [secondary](#secondary-buttons-parameter) buttons, the [button divider](#show-button-divider-parameter), and whether the buttons are [fixed to the bottom of the wizard](#fix-buttons-to-bottom-of-wizard-parameter).

#### Primary buttons parameter

Use the **Primary Buttons** parameter to add buttons to the bottom of the wizard using the [Button Layout](../Button_Layout.html) component.

When you add more primary buttons, they appear next to the Next button.

The Next button is added automatically and can't be configured. You can use the [**Disable next button** parameter](#disable-next-button-parameter) in the [Wizard Step component](../Wizard_Step_Component.html) to specify when the Next button is disabled for users.

![primary buttons](ds-images/primary-buttons.png)

#### Secondary buttons parameter

Use the **Secondary Buttons** parameter to add buttons to the bottom of the wizard using the [Button Layout](../Button_Layout.html) component.

When you add more secondary buttons, they appear next to the Back button.

The Back button is added automatically and can't be configured. If you drag and drop the wizard layout into an interface, a Cancel button is also added automatically.

![secondary buttons](ds-images/secondary-buttons.png)

#### Fix buttons to bottom of wizard parameter

_Related style guidelines: [Form Layout: In scrolling dialogs, use a fixed title bar and buttons](ux-form-layout.html#in-scrolling-dialogs-use-a-fixed-title-bar-and-buttons)_

Use the **Fix buttons to bottom of wizard** parameter to fix the buttons to the bottom of the wizard.

#### Show button divider parameter

Use the **Show button divider** parameter to show or hide a divider above the wizard buttons.

![button divider](ds-images/wizard-layout-button-divider.png)

## Wizard step usage

When you build a wizard, you use the [Wizard Step](../Wizard_Step_Component.html) component to create each wizard step.

The following sections describe the parameter configurations as they are displayed in the [component configuration pane](../working_in_design_mode.html#component-configuration) of an interface object.

### Step Label parameter

Use the **Step Label** parameter to name the wizard step.

Wizard step names appear in milestones, if you picked a wizard [style](#style-parameter) that shows milestones. The step names also appear at the top of the step contents area, if you choose to [show step headings](#show-step-heading-parameter) in your wizard.

![wizard step labels](ds-images/wizard-step-label.png)

### Instructions parameter

Use the **Instructions** parameter to add optional instructions to the wizard step.

Instructions appear as secondary text below the step label, above the rest of the wizard step. Instructions can help users understand the purpose of a step how to complete it.

![wizard step instructions](ds-images/wizard-instructions.png)

### Contents parameter

Use the **Contents** parameter to create the contents of a wizard step. This will usually be input field components, but you can display any component or layout, as long as it isn't a top-level layout.

Make sure to follow best practices for [responsive design](../responsive_design.html) to ensure that the contents look good and function well on all screen widths.

![example wizard step with contents highlighted](ds-images/wizard-layout-example-contents.png)

### Show When parameter

Use the **Show When** parameter to show or hide a wizard step.

### Disable next button parameter

Use the **Disable next button** parameter to specify when the Next button is disabled for users.

For example, if you want to make sure the user has filled out all fields or made a specific selection before trying to click Next, you could disable the button until those requirements are met.

### Validations parameter

Use the **Validations** parameter to display one or more messages using the [Validation Message](../Validation_Message.html) component.

You can use validations to alert users about problems that aren't specific to one component in the wizard step. For more information about using validations for forms in wizards, see the [Validation configurations](ux-form-layout.html#validation-configurations) for forms.

### Validation Group parameter

Use the validation group parameter to specify which fields to validate when a user clicks a certain button.

See the following recipes for more information about using validation groups:

-   [Configure Buttons with Conditional Requiredness](../recipe-configure-buttons-with-conditional-requiredness.html)
-   [Validation Groups for Buttons with Multiple Validation Rules](../recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html)

## Style guidelines

This section highlights specific design guidelines and recommendations.

In addition to these guidelines, review [Form Layout: Style guidelines](ux-form-layout.html#style-guidelines---form-and-wizard-layouts) for general form best practices that apply to wizards.

### Selecting a wizard style

When you select a wizard [style](#style-parameter), you choose the appearance and location of the milestone. Vertical styles display a milestone to the left of the wizard step contents, and horizontal styles display a milestone above the wizard step contents. The "Minimal" style shows the step number above the contents instead of showing a milestone (for example, "Step 1 of 2").

In general, you should use a vertical style if your wizard has more than five steps, or any time your step labels might be too long for a horizontal style. Otherwise, the horizontal milestone can appear crowded and difficult to read.

If your wizard only has one or two steps, use the "Minimal" style to give your wizard a more compact appearance. If you use a minimal style or you expect users will use the wizard on small screens, make sure to [show step headings](#show-step-heading-parameter) to give users context about their current step.

[![three versions of a wizard showing a vertical, horizontal, and minimal style](ds-images/wizard-layout-step-indicators.png)](ds-images/wizard-layout-step-indicators.png)

### Avoid using vertical tab patterns with vertical milestone styles

If your wizard contents include a vertical tab pattern (for example), don't select a vertical milestone [style](#style-parameter) for your wizard. Vertical milestones with a vertical tab pattern will look crowded and will be difficult for users to navigate.

Instead, if you need to include tabs in a wizard step, use a horizontal or minimal milestone style to avoid competing vertical navigation elements.

[![wizard layout with vertical tabs in a step](ds-images/wizard-layout-with-vertical-tabs.png)](ds-images/wizard-layout-with-vertical-tabs.png)

Avoid combining vertical milestones with step contents that include vertical tab navigcation.

### Avoid using "Auto" height in dialogs

Avoid using "Auto" height in dialogs, since the height will change from step to step depending on the step contents.

### Button guidelines

#### Make sure buttons fit without stacking

When you're configuring the [width](#contents-width-parameter) of your wizard step contents, or the width of the dialog that displays your wizard, make sure the width accommodates all of the buttons in your wizard. If the wizard isn't wide enough for the buttons, they will stack up vertically instead of displaying in a single horizontal row, which can make them difficult to use.

[![wizard layout with stacked buttons](ds-images/wizard-layout-stacked-buttons.png)](ds-images/wizard-layout-stacked-buttons.png)

Don't choose a width that would force your buttons to stack.

#### Use consistent button sizes

Since the Next and Back buttons can't be customized, make sure any additional [primary](#primary-buttons-parameter) or [secondary](#secondary-buttons-parameter) buttons you add have their **Size** set to "Standard" to keep all buttons a consistent size.

[![wizard layout with various button sizes](ds-images/wizard-layout-button-sizes.png)](ds-images/wizard-layout-button-sizes.png)

Don't use different sizes for different buttons in your wizard. Instead, choose one size for all buttons.

#### Make buttons visually distinct

Use consistent styles to clarify the purpose of the different buttons in your wizard. For example, the main button used to progress through the wizard should use the primary style, secondary buttons should all have a similar style, and the Cancel button should have a unique appearance.

Use the solid accent style only for the “Next” button and any Submit buttons on the last step of your wizard. For all other custom primary buttons, use a different style.

### Show step headings to give users context

[Step headings](#step-label-parameter) help users understand which step they're on in the wizard. If you expect users will be viewing your wizard on smaller screens, or if your wizard uses the minimal style, make sure to [show step headings](#show-step-heading-parameter) so viewers have context.

### Choose an appropriate section heading size

If you have section headings in the contents of a step, make sure they are smaller than the [wizard step heading](#step-label-parameter). Otherwise, users might have trouble understanding the hierarchy of elements on the page.

[![wizard layout with small section heading labels](ds-images/wizard-section-headings-small.png)](ds-images/wizard-section-headings-small.png)

Choose a section heading size that is smaller than the wizard step heading to make the page hierarchy easy to understand.

[![wizard layout with large section heading labels](ds-images/wizard-section-headings-large.png)](ds-images/wizard-section-headings-large.png)

Avoid using section headings that are the same size or larger than the wizard step heading.

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.