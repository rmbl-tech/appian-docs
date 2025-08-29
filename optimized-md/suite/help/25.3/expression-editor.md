---
source_url: https://docs.appian.com/suite/help/25.3/expression-editor.html
original_path: expression-editor.html
version: "25.3"
title: "Expression Editor"
page_id: "expression-editor"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Expression Editor

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Expression Editor allows you to write [expressions](Expressions.html) for your Appian design objects.

This editor is available within a variety of objects, including [expression rule objects](Expression_Rules.html), [interface objects](interface_object.html), and [process model objects](#process-model-elements).

## Elements

The following image highlights the elements that make up the Expression Editor:

![Expression Editor](images/expression-editor-annotated_23_2.png)

|
#

 |

Element

 |

Available Actions

 |
| --- | --- | --- |
|

1

 |

Toolbar

 |

Learn more about [toolbar actions](#toolbar-actions).

 |
|

2

 |

Editing pane

 |

-   [Edit an expression](#edit-an-expression).

-   [Use auto-suggestions](#auto-suggestions).

-   [View design guidance](#design-guidance).

 |
|

3

 |

Documentation pane

 |

[View documentation](#documentation) for a specific function or expression object.

 |

### Process model elements

In a [process model](process-model-object.html), the Expression Editor offers standard editor capabilities like the [toolbar actions](#toolbar-actions) and auto-suggestions, but this editor also displays key expression elements in the **DATA** and **FUNCTIONS** tabs.

#### DATA tab

The **DATA** tab allows you to quickly add variables, parameters, and properties from your process model into your expression.

These include:

-   Process variables.
-   Activity class parameters.
-   Task properties.
-   Process properties.
-   Process model properties.
-   Message properties.

![screenshot of the DATA tab in the Expression Editor in process model](images/expression-editor-data-tab_23_2.png)

#### FUNCTIONS tab

The **FUNCTIONS** tab allows you to quickly search, browse, and add [functions](Appian_Functions.html) to your expression.

![screenshot of the FUNCTIONS tab in the Expression Editor in process model](images/expression-editor-functions-tab_23_2.png)

## Edit an expression

To edit the expression, place your cursor in the editing pane. Begin typing to view [auto-suggestions](#auto-suggestions), or select an appropriate [toolbar action](#toolbar-actions).

As you edit the expression, the Expression Editor displays [design guidance](#design-guidance) when it becomes relevant.

## Toolbar actions

The Expression Editor toolbar provides you with a list of common actions that can be used when interacting with the Expression Editor:

-   ![format icon](images/expression-editor-icons/fa-magic.png) Format expression
-   ![outdent icon](images/expression-editor-icons/fa-outdent.png) Decrease Indent
-   ![indent icon](images/expression-editor-icons/fa-indent.png) Increase Indent
-   ![indent guide icon](images/expression-editor-icons/indent-guide-on.png) Show/Hide Indent Guide
-   ![comment icon](images/expression-editor-icons/comment-code.png) Comment
-   ![search icon](images/expression-editor-icons/fa-search.png) Find
-   ![replace icon](images/expression-editor-icons/fa-random.png) Replace
-   ![domain icon](images/expression-editor-icons/domain.png) View [Domains](domain_prefixes.html)
-   ![function icon](images/expression-editor-icons/functions.png) View [Functions](Appian_Functions.html)
-   ![view icons icon](images/expression-editor-icons/view-icons.png) View [Icons](Appian_Icons.html)
-   ![create_constant icon](images/expression-editor-icons/create-constant.png) [Create Constant](#create-constant)
-   ![save_expression_as icon](images/expression-editor-icons/save-expression-as.png) [Save Selected Expression As…](#save-selected-expression-as)
-   ![query editor icon](images/expression-editor-icons/visual-query.png) Launch the [Query Editor](query-editor.html)

The following sections give additional information about some of these actions.

### Create constant

The **Create Constant** action allows you to easily create constants directly from within an Expression Editor.

To create a constant:

1.  Click ![create_constant icon](images/expression-editor-icons/create-constant.png) in the toolbar. The **Create Constant** dialog appears.
2.  Configure the [constant properties](Constants.html#elements-of-this-object).
3.  Click **CREATE**. The new constant will appear in your expression at your cursor's current position.

### Save selected expression as

The **Save Selected Expression As…** action allows you to quickly move parts of an expression into a new expression rule or interface.

To use this action:

1.  In the Expression Editor, highlight the part of the expression you want to save.
2.  Click ![save_expression_as icon](images/expression-editor-icons/save-expression-as.png).

    **Note:**  This action is only available when the expression you have selected contains no syntax errors and returns one output (for example, lists are surrounded by braces {}).

3.  In the **Save Expression As** dialog, configure and review the following properties:

    [![images/expression_editor_save_expression_as_interface_24_1.png](images/expression_editor_save_expression_as_interface_24_1.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img305)

    [![](images/expression_editor_save_expression_as_interface_24_1.png)](#_)

    | Property | Description |
    | --- | --- |
    | **Save As** | Determines whether to save the expression as a new expression rule or interface. |
    | **Name** | The name of the new object. |
    | **Description** | A short description for the new object. |
    | **Application** | The application where the object should be created. |
    | **Save In** | The folder where the object should be saved. |
    | **Include in the design library** | When saving an expression as an interface, makes the interface available in the **Design Library** tab of the design mode palette for easy access. For more information, see [Using the design library](working_in_design_mode.html#using-the-design-library). |
    | **Display Name** | The name that displays for an interface you included in the **Design Library** tab of the design mode palette. |
    | **Rule Inputs** | Displays a grid of the new object's rule inputs. All variables that are used but are not declared in the selected expression are automatically converted into rule inputs. This section is hidden if an expression has no rule inputs. |
    | **Expression Preview** | Displays a preview of the expression that will be moved to the new object. |

4.  Click **SAVE**.

Once the new object is saved, the previously selected expression is replaced with a reference to the new expression rule or interface, and rule inputs are automatically inserted.

## Auto-suggestions

As you modify an expression in the editing pane, suggestions are offered based on what you type. The Expression Editor suggests functions, rules, keywords, constants, data types, or variables that contain the characters you type and match the domain, as follows:

| Suggestion | Context | Example |
| --- | --- | --- |
| Functions | `fn!`, `a!`, or no domain |   |
| Function variables | `fv!` in a function input that has at least one available | The [a!createUser()](Add_User_Smart_Service.html#acreateuser) function uses the _fv!user_ variable in its _onSuccess_ parameter. |
| Rules | `rule!` |   |
| Data types | `type!` |   |
| Keywords of a rule, function, or data type | Inside a rule, function, or data type | When configuring `a!textField()`, typing `lab` will suggest `label` and `labelPosition` as keywords if typing a keyword at your current cursor position would be valid expression syntax. |
| Variables | `local!`, `ri!` (interfaces and expression rules), or `rv!` (record type) |   |
| Valid values | Inside a parameter that accepts a text value | For the `style` parameter of the [Button Component](Button_Component.html), the suggested values include "NORMAL", "PRIMARY", "SECONDARY", etc.  |

When you highlight a suggested option, [documentation](#documentation) for that option appears in a tooltip.

![SAIL_Expression_Editor_Doc_Tooltip](images/SAIL_Expression_Editor_Doc_Tooltip_23_2.png)

Selecting a suggested option from the list inserts it into your expression.

## Documentation

To view documentation for any object used in the editing pane, place your cursor inside the matching parentheses of a valid expression object (or, for constants, after the object name).

![SAIL_Expression_Editor_Doc_Pane](images/SAIL_Expression_Editor_Doc_Pane_23_2.png)

For [functions](Appian_Functions.html), documentation includes the name of the object, its description, all of its available parameters, and their data types.

For other objects, documentation includes the name of the object and any available object properties. For example, for rule inputs (`ri!`), documentation consists of the name, data type, and description of the rule input.

## Design guidance

**Note:**  The Expression Editor displays design guidance for all objects except process models and process reports.

While writing your expressions, you may encounter [expression design guidance](appian-recommendations.html#expression-design-guidance), which are best practice design patterns that you should implement in your expressions. This guidance is calculated in real-time while editing expressions in your objects and when an object's [precedents](Trace_Relationships_for_Impact_Analysis.html) are updated.

Within the Expression Editor, guidance is indicated with a warning ![warning_icon](images/appian-design-guidance-warning-icon.png) or recommendation ![recommendation_icon](images/appian-design-guidance-lightbulb-icon.png) icon. When possible, the affected part of the expression is also underlined. To see more details about the guidance, hover over the icons within the Expression Editor, or click on the guidance icon within the [object header](appian-recommendations.html).

See [Appian design guidance](appian-recommendations.html) to learn more about warnings and recommendations, and how to address or dismiss them.

![/Expression Editor recommendations](images/expression_editor_recommendations_23_2.png)

If your expression contains a syntax error, such as a misplaced comma or unmatched parenthesis, a red warning icon is displayed in the top left-hand corner of the Expression Editor. Hover over the warning icon to display a tooltip with details about the syntax error.

![SAIL_Expression_Editor_Syntax_Error](images/SAIL_Expression_Editor_Syntax_Error_23_2.png)

## Keyboard shortcuts

The following keyboard shortcuts are available when interacting with the Expression Editor:

| Action | Windows | Mac |
| --- | --- | --- |
| Close find/replace dialog | ESC | ESC |
| Collapse/Expand code block | ALT+L | COMMAND+OPTION+L |
| Comment code block | CTRL+/ | COMMAND+/ |
| Copy | CTRL+C | COMMAND+C |
| Create constant | CTRL+Click on new constant name | COMMAND+Click on new constant name |
| Create constant dialog | ALT+O | COMMAND+OPTION+O |
| Cut | CTRL+X | COMMAND+X |
| Delete group before cursor | CTRL+Backspace | OPTION+Backspace |
| Decrease indent | CTRL+\[ | COMMAND+\[ |
| Delete line | CTRL+D | COMMAND+D |
| Format expression | CTRL+SHIFT+F | CTRL+SHIFT+F |
| Highlight all occurrences | Double-click word | Double-click word |
| Highlight all text inside | Double-click parenthesis | Double-click parenthesis |
| Increase indent | CTRL+\] | COMMAND+\] |
| Launch the Query Editor | ALT+V | COMMAND+OPTION+V |
| Move cursor before group | CTRL+Left | OPTION+Left |
| Move cursor after group | CTRL+Right | OPTION+Right |
| Move cursor to line start | Home | COMMAND+Left |
| Move cursor to line end | End | COMMAND+Right |
| Open find dialog | CTRL+F | COMMAND+F |
| Open find and replace dialog | CTRL+H | COMMAND+H |
| Open object definition | CTRL+Click on object name | COMMAND+Click on object name |
| Paste | CTRL+V | COMMAND+V |
| Redo | CTRL+Y | COMMAND+Y, COMMAND+SHIFT+Z |
| Select all | CTRL+A | COMMAND+A |
| Save Selected Expression As… | ALT+SHIFT+E | COMMAND+SHIFT+E |
| Select group before cursor | CTRL+SHIFT+Left | OPTION+SHIFT+Left |
| Select group after cursor | CTRL+SHIFT+Right | OPTION+SHIFT+Right |
| Select previous occurrence | SHIFT+ALT+Left | CTRL+OPTION+Left |
| Select next occurrence | SHIFT+ALT+Right | CTRL+OPTION+Right |
| Show/Hide indent guide | CTRL+G | COMMAND+G |
| Undo | CTRL+Z | COMMAND+Z |
| View domains | SHIFT+ALT+D | COMMAND+SHIFT+D |
| View functions | SHIFT+ALT+F | COMMAND+SHIFT+F |
| View icons | CTRL+I | CTRL+I |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...