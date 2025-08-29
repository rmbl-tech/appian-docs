---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-inputs.html
original_path: sail/ux-inputs.html
version: "25.3"
title: "Inputs, Selection, and Pickers"
page_id: "sail/ux-inputs"
section: "Radio buttons and check boxes"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Inputs, Selection, and Pickers \[SAIL Design System: Guidelines\]

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
    -   [Inputs, Selection, and Pickers](#)
    -   [Buttons vs. Links](/suite/help/25.3/sail/ux-buttons-vs-links.html)
-   Site & Portal Best Practices
    -   [Portal Design Guidelines](/suite/help/25.3/sail/ux-portals.html)
    -   [Designing Sites and Portals](/suite/help/25.3/sail/ux-site-branding.html)
-   General Guidelines
    -   [Accessibility](/suite/help/25.3/sail/ux-accessibility.html)
    -   [Avoiding Clutter](/suite/help/25.3/sail/ux-avoiding-clutter.html)
    -   [Formatting and Punctuation](/suite/help/25.3/sail/ux-formatting-and-punctuation.html)
    -   [Mobile Considerations](/suite/help/25.3/sail/ux-mobile-considerations.html)
    -   [Progressive Disclosure](/suite/help/25.3/sail/ux-progressive-disclosure.html)
    -   [Using Colors](/suite/help/25.3/sail/ux-color-overview.html)

Guidelines Overview Designing for Your Users Presenting Information Clearly Example Walk-Through Page Width Columns vs. Side by Side Labels Inputs, Selection, and Pickers Buttons vs. Links Portal Design Guidelines Designing Sites and Portals Accessibility Avoiding Clutter Formatting and Punctuation Mobile Considerations Progressive Disclosure Using Colors

# Inputs, Selection, and Pickers

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

## Radio buttons and check boxes

[Radio buttons](#radio-buttons) and [checkboxes](#checkboxes) display a short list of choices for users to select from. They are best used for displaying less than 5 choices.

### Radio buttons

Use a [radio button component](../Radio_Button_Component.html) when only one option can be selected.

For lists with more than five choices, use a [dropdown](../Dropdown_Component.html) component.

One option should always be selected by default, preferably the most desired or frequently selected.

### Checkboxes

Use a [checkbox component](../Checkbox_Component.html) when one, none, or many choices can be selected.

For [boolean toggles](../recipe-configure-a-boolean-checkbox.html), use a single checkbox.

For lists with more than five options, use a [multiple dropdown](../Multiple_Dropdown_Component.html) component.

Always include a choice label.

### Choice best practices

You can configure the look of your radio buttons and checkboxes using the [Choice layout](#choice-layout), [Choice style](#choice-style), or [Choice position](#choice-position) parameters.

This section outlines the best practices for configuring these parameters.

#### Choice layout

The **Choice Layout** parameter determines whether the choice labels should be stacked on top of each other ("Stacked") or adjacent to each other ("Compact").

Use the "Compact" layout only for short radio button labels that aren't likely to wrap onto the next line, such as "Yes", "No", or "Maybe". For longer labels that are likely to wrap, use the "Stacked" layout.

Labels longer than two lines will be truncated.

![ds-images/ux_checkboxes.png](ds-images/ux_checkboxes.png)

_Examples of checkboxes using both "Compact" and "Stacked" layouts_

#### Choice style

The **Choice Style** parameter determines whether the choice labels should display as text only ("Standard") or in a card ("Card").

Use the "Cards" style to give your choices more visual prominence and your users a larger click target.

![Example of radio buttons with the "Cards" style](ds-images/radio_buttons_cards_style_both_layouts.png)

_Example of radio buttons with the "Cards" style_

![ds-images/checkboxes_cards_style_both_layouts.png](ds-images/checkboxes_cards_style_both_layouts.png)

_Example of checkboxes with the "Cards" style_

#### Choice position

The **Choice Position** parameter determines the placement of radio buttons or checkboxes relative to their labels.

The default choice position works best for most cases and should only be changed for specific circumstances.

Default choice position:

-   **"Standard" Choice Style**: "Start" (left in left-to-right locales).
-   **"Cards" Choice Style**: "End" (right in left-to-right locales).

Generally, you will want to try to use the same choice position for all radio buttons and checkboxes in an interface. This is especially important for "Card" choice style, since the bolder styling will make mismatched choice positions stand out more.

The "Standard" [choice style](#choice-style) with the "End" choice position works best for something like a filter pane. Avoid using it for form inputs.

When using this combination, be sure to constrain the width using [pane](../Pane_Layout.html), [columns](../Columns_Layout.html), or [side by side](../Side_By_Side_Layout.html) layouts.

[![alttext](ds-images/inputs_choiceposition_filterexample.png)](ds-images/inputs_choiceposition_filterexample.png)

_In this example, the pane constrains the width of the checkbox filters so using the "Standard" choice style with "End" choice position works._

[![alttext](ds-images/inputs_choiceposition_dontexample.png)](ds-images/inputs_choiceposition_dontexample.png)

Using the "Standard" choice style with "End" choice position in this form makes it difficult for users to locate the correct radio button because they are too far away from the label.

When you are using the "Card" style and have long labels, consider using "Start" alignment to make the selection more clear and visible.

[![alttext](ds-images/radio_choice_position_do.png)](ds-images/radio_choice_position_do.png)

## Dropdowns

Use a dropdown to create moderately long lists of choices from which users can select [one](../Dropdown_Component.html) or [many](../Multiple_Dropdown_Component.html).

Use radio button groups, checkbox groups, or card choices for shorter lists, so that the user can easily see all choices.

Sort dropdown lists in a logical order, such as alphabetical.

If your dropdown list is too long to easily browse, use pickers so that users can search.

![ds-images/ux_input_dropdown.png](ds-images/ux_input_dropdown.png)

## Card choices

Use card choices as a more visually engaging alternative to other input choices, like radio buttons or checkbox fields.

Use card choices to create a short list of choices from which users can select one or many. If your list of card choices is too long to easily browse, consider using a picker or dropdown.

Sort card choices in a logical order. For lists of response options (like yes, no, no opinion), sort or group them in order of intention. Otherwise, sort lists in a logical order, such as alphabetical order.

For a uniform and professional UI, make sure that you have consistent values for the icon, primary text, and secondary text fields for all card choices on an interface. For example, all card choices should include primary text, or none of them should.

[![alttext](ds-images/card-choices-same-values.png)](ds-images/card-choices-same-values.png)

Use consistent parameters for all card choices options

[![alttext](ds-images/card-choices-partial-values.png)](ds-images/card-choices-partial-values.png)

Don't mix data so that some have values for all parameters and others don't

Our templates are designed so that you can quickly and easily make visually impressive and well organized interfaces. Use the template that best fits your data and will best capture your users' attention. Each template fits data differently and works best in different UIs. The card tile template works best for a simple form or wizard step where you are completing one question at a time. The card bar templates are denser and work better inline on forms.

## Text inputs

### Choosing which text input to use

When designing interfaces that require text inputs, it's important to choose the right component for the specific use case. There are three types of text input components, each suited for different needs:

-   **For short text inputs**: Use the [text field](../Text_Component.html) for more concise entries, such as names, addresses, or single-line answers.
-   **For longer text inputs**: Use the [paragraph field](../Paragraph_Component.html) where users would need to enter more text, like descriptions, comments, or multi-line responses.
-   **If users might want to format their text**: Use the [styled text editor](../Styled_Text_Editor_Component.html) to allow users to format their text, such as applying bold, italics, or lists.

If users don't need to style their text, using a styled text editor component may introduce unnecessary complexity and clutter to an interface. If you know users will not need to style their text, use a paragraph component to help maintain a clean and simple page design.

If you know you will need to eventually display a longer text input value in the grid, instead of a styled text editor component, consider using a paragraph component to collect the user's input. By default, displaying the value from a styled text editor component in a grid includes the HTML tags used for formatting. In order to display the value in a grid, you need strip the HTML using [stripHtml()](../fnc_text_striphtml.html). This removes all formatting so the text will display as one string with no line breaks or list items, which could affect the readability of the content. See the [Styled Text Editor Component](../Styled_Text_Editor_Component.html#displaying-the-value-in-a-grid) page for details.

### Paragraph and styled text editor height

For the paragraph and styled text editor components, select the appropriate height based on the expected length of user inputs. Avoid heights that exceed the visible area, particularly in shorter dialogs.

For the styled text editor, ensure the bottom-right corner of the editor is visible. This helps users keep the [size limit validation](../Styled_Text_Editor_Component.html#size-limit-validations) in view.

For the paragraph component, in editable grids use the "Short" paragraph height to align the paragraph with the inputs in adjacent columns.

![ds-images/ux_paragraph_fields.png](ds-images/ux_paragraph_fields.png)

### Show character limit count

When using a character limit on a text or paragraph component, hide the character count if it is unlikely that users will exceed the character limit. This reduces clutter and distractions on the interface.

[![alttext](ds-images/ux_characterCount_hidden.png)](ds-images/ux_characterCount_hidden.png)

In this example, the Name, Street Address, City and ZIP fields all use the "Character Limit" parameter with "Show Character Limit Count" set to false. Users will see a validation when the character limit is reached, but will not see the character count in the text fields so that they are not distracted while filling out the form.

[![alttext](ds-images/ux_characterCount_shown.png)](ds-images/ux_characterCount_shown.png)

### Displaying read-only styled text editor values

Consider distinguishing read-only styled text editor values from other formatted text, like component labels. The bold text in these values can be confused with component labels or bold [rich text items](../Styled_Text_Component.html).

[![interface that sets apart Issue Description in a separate card](ds-images/stef_readonly_do.png)](ds-images/stef_readonly_do.png)

Set read-only styled text editor values apart from other bold text elements on interfaces. This example uses a section and card layout, but you could also use something like white space or divider lines.

## Input shape

By default, all input, selection, and picker components have a squared shape.

Input shape can be controlled in the **Branding** section of [site](../sites_object.html#branding) and [portal](../portal-object.html#branding) objects. These settings apply to all interfaces that display in the site or portal.

When editing interfaces, use the [Branding preview](../interface_object.html#branding-preview) ![branding preview icon](ds-images/branding-preview-icon.svg) menu to choose the site or portal that your interface will display in. This will update all of the inputs in your interface to use the shape configured in the site or portal.

The following are the options for many of the input shapes that can be configured in site and portal objects.

| Shape | Squared (Default) | Semi-Rounded |
| --- | --- | --- |
| Checkboxes | ![checkboxes squared](ds-images/checkboxes_squared.png) | ![checkboxes semi-rounded](ds-images/checkboxes_semi_rounded.png) |
| Card choices | ![Card choices squared](ds-images/cardchoices_squared.png) | ![card choices semi-rounded](ds-images/cardchoices_semi_rounded.png) |
| Picker | ![Picker squared](ds-images/picker_squared.png) | ![picker semi-rounded](ds-images/picker_semi_rounded.png) |
| Dropdown | ![dropdown squared](ds-images/dropdown_squared.png) | ![dropdown semi-rounded](ds-images/dropdown_semi_rounded.png) |
| Input | ![input squared](ds-images/input_squared.png) | ![input semi-rounded](ds-images/input_semi_rounded.png) |
| Styled text editor | ![stef squared](ds-images/stef_squared.png) | ![stef semi-rounded](ds-images/stef_semi_rounded.png) |
| File upload | ![file squared](ds-images/file_squared.png) | ![file semi-rounded](ds-images/file_semi_rounded.png) |
| Date | ![date squared](ds-images/date_squared.png) | ![date semi-rounded](ds-images/date_semi_rounded.png) |

## Help tooltips

Consider using a help tooltip instead of instructions for content that does not need be to read each time a user views the form.

For example, a help tooltip is appropriate for showing instructions that are most useful to new users.

![ds-images/ux_help_tooltip.png](ds-images/ux_help_tooltip.png)

## Placeholder text

Use placeholder text to describe the correct input format or provide a brief hint to assist with value input.

Placeholder text should not replace field labels.

Note that whether placeholder text clears on focus or input varies by device and browser.

[![placeholder text do](ds-images/placeholder_text_do.png)](ds-images/placeholder_text_do.png)

[![alttext](ds-images/placeholder_text_dont.png)](ds-images/placeholder_text_dont.png)

### Picker placeholder text

Use placeholder text for picker components to provide a distinction from regular text inputs.

In general, use sentence case capitalization and keep the message as short as possible.

[![alttext](ds-images/picker_placeholder_do.png)](ds-images/picker_placeholder_do.png)

[![alttext](ds-images/picker_placeholder_dont.png)](ds-images/picker_placeholder_dont.png)

### File upload placeholder text

The default placeholder text is "Drop files here." Use custom placeholder text to provide more detailed guidance to users.

In general, use sentence case capitalization and keep the message as short as possible.

[![alttext](ds-images/ux_fileuploadplaceholder.png)](ds-images/ux_fileuploadplaceholder.png)

[![alttext](ds-images/ux_fileuploadplaceholderdont.png)](ds-images/ux_fileuploadplaceholderdont.png)

## Alignment

In left-to-right languages, use left alignment for inputs.

[![alttext](ds-images/inputs_alignment_do.png)](ds-images/inputs_alignment_do.png)

[![alttext](ds-images/inputs_alignment_dont.png)](ds-images/inputs_alignment_dont.png)

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.