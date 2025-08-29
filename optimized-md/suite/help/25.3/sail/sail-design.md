---
source_url: https://docs.appian.com/suite/help/25.3/sail/sail-design.html
original_path: sail/sail-design.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) How to Design with SAIL \[SAIL Design System: Getting Started\]

-   [Overview](/suite/help/25.3/sail/sail-design-system-overview.html)
-   [Benefits of SAIL](/suite/help/25.3/sail/sail-benefits.html)
-   [How to Design with SAIL](#)

SAIL Design System Overview Benefits of SAIL How to Design with SAIL

# How to Design with SAIL

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

## Overview

All components are backed by expressions. This means you have two ways of working with components to design interfaces.

-   **Design mode** ![design mode icon](../images/design-mode-icon.svg) - Simply drag and drop components onto a canvas, then configure them in the configuration pane.
-   **Expression mode** ![expression mode icon](../images/expression-mode-icon.svg) - Switch over to expression mode to add more advanced functionality, such as data integrations and conditional logic.

This page provides a short summary of what this looks like in practice.

**Tip:**  **Using Figma to mock up your interface designs?** While mocking up SAIL UIs directly in Appian will always be the most efficient way to iterate on your designs, teams already using Figma can also leverage the [Appian SAIL Component Library](https://www.figma.com/@appian).

## Working with components and expressions

Here is a simple text field.

![street address text field](ds-images/street_address.png)

The expression to create this field looks like this:

```
1
2
3
a!textField(
    label: "Street Address"
  )
```

If you want to make changes to the text field, simply update the available parameters in the **COMPONENT CONFIGURATION** pane.

![updating component configuration](ds-images/component_configuration_updates.png)

The expression automatically updates with the new parameters.

```
1
2
3
4
5
6
a!textField(
  label: "Street Address",
  instructions: "Enter a street address",
  helpTooltip: "Do not include the city or state",
  placeholder: "123 Main St."
)
```

## Working with data

It isn't very useful to just hard code data into a user input field. That's why SAIL allows you to easily associate the value of a field with application data. For example, you can use local variables to map application data to the text field.

```
1
2
3
4
5
6
7
8
a!textField(
  label: "Street Address",
  instructions: "Enter a street address",
  helpTooltip: "Do not include the city or state",
  placeholder: "123 Main St.",
!  value: local!streetAddress,
!  saveInto: local!streetAddress
)
```

## Working with logic

You can also add dynamic logic to your interfaces. For example, you can use the _showWhen_ parameter to only show the address field when a certain condition is true.

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
a!textField(
  label: "Street Address",
  instructions: "Enter a street address",
  helpTooltip: "Do not include the city or state",
  placeholder: "123 Main St.",
  value: local!streetAddress,
  saveInto: local!streetAddress,
!  showWhen: local!showAddressField=true
)
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.