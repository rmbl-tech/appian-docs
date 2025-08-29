---
source_url: https://docs.appian.com/suite/help/25.3/card-choices-component.html
original_path: card-choices-component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Card Choices Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-card-layout.html">SAIL Design System guidance available for Card Layout</a><p class="ds-release-notice-p">Reduce clutter and bring balance to your interface designs with cards. Learn how to use cards to organize content in a way that is easier for users to understand and navigate.</p></td></tr></tbody></table>

## Function

**a!cardChoiceField**( _label, labelPosition, instructions, helpTooltip, data, sort, cardTemplate, value, saveInto, maxSelections, align, showShadow, required, requiredMessage, disabled, validations, validationGroup, showWhen, accessibilityText, spacing, marginAbove, marginBelow_ )

Displays a set of cards from which the user may select one or many cards and saves a value based on the selected choice. The card choices component allows you to create a set of choices using data from records, entities, data subsets, a dictionary, a list of data, or a list of mappings.

There are three card choices templates for you to choose from:

-   [Tiles template](card-choices-tiles.html)
-   [Bars (justified text) template](card-choices-bars.html)
-   [Bars (stacked text) template](card-choices-bars-text-stacked.html)

See also: [Cards Layout](card_layout.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Label

 |

`label`

 |

_Text_

 |

Text to display as the field label.

 |
|

Label Position

 |

`labelPosition`

 |

_Text_

 |

Determines where the label appears. Valid values: `"ABOVE"` (default), `"ADJACENT"`, `"JUSTIFIED"`, `"COLLAPSED"`.

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this field.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The help icon does not show when the label position is `"COLLAPSED"`.

 |
|

Data Source

 |

`data`

 |

_List of Variant_

 |

The data to display in cards. Use a record type reference or [`a!recordData()`](fnc_system_recorddata.html) to source your data from records. For other cases, you can use a query, such as [`a!queryEntity()`](fnc_system_a_queryentity.html), a Data Subset, a list of map or dictionary, or a list of data. When using a query that returns a DataSubset, you must specify fetchTotalCount as true.

 |
|

Sort

 |

`sort`

 |

_List of SortInfo_

 |

Array of Sort Info configurations created with [a!sortInfo()](fnc_system_a_sortinfo.html).

 |
|

Card Template

 |

`cardTemplate`

 |

_Any Type_

 |

Determines how a card should be displayed on the interface. Create using:

-   [a!cardTemplateTile()](card-choices-tiles.html)
-   [a!cardTemplateBarTextJustified()](card-choices-bars.html)
-   [a!cardTemplateBarTextStacked()](card-choices-bars-text-stacked.html)

Access data in cards by using `fv!data` with dot notation, such as `fv!data.id`, or other function variables:

-   `fv!index`
-   `fv!identifier`
-   `fv!isFirst`
-   `fv!isLast`

Cards that use record data must use the recordType! domain to reference a record field or related record field. For example, `fv!data[recordType!Case.fields.caseName]`.

 |
|

Display Value

 |

`value`

 |

_List of Variant_

 |

Value of choice card to display as selected.

 |
|

Save Input To

 |

`saveInto`

 |

_List of Save_

 |

One or more variables that are updated when a card is selected. Use a!save() to save a modified or alternative value to a variable.

 |
|

Maximum Selections

 |

`maxSelections`

 |

_Number (Integer)_

 |

Maximum number of allowed selections. For maximum selections greater than 1, a validation message will appear once the number is exceeded.

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the card(s). Valid values: `"START"` (default), `"CENTER"`, `"END"`.

 |
|

Show Shadow

 |

`showShadow`

 |

_Boolean_

 |

Determines whether cards have an outer shadow. Default: false.

 |
|

Required

 |

`required`

 |

_Boolean_

 |

Determines if a value is required to submit the form. Default: false.

 |
|

Required Message

 |

`requiredMessage`

 |

_Text_

 |

Custom message to display when the field's value is required and not provided.

 |
|

Disabled

 |

`disabled`

 |

_Boolean_

 |

Determines if the cards should display as potentially selectable but grayed out. Default: false.

 |
|

Validations

 |

`validations`

 |

_List of Text String_

 |

Validation errors to display below the field when the value is not null.

 |
|

Validation Group

 |

`validationGroup`

 |

_Text_

 |

When present, the requiredness of the field is only evaluated when a button in the same validation group is pressed. The value for this parameter cannot contain spaces. For example, `“validation group”` is not a valid value. You need to add an underscore between words: `“validation_group”`. See the following recipes for more information:

-   [Configure Buttons with Conditional Requiredness](recipe-configure-buttons-with-conditional-requiredness.html)
-   [Validation Groups for Buttons with Multiple Validation Rules](recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html)'

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the cards are displayed on the interface. When set to false, the cards are hidden and are not evaluated. Default: true.

 |
|

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |
|

Spacing

 |

`spacing`

 |

_Text_

 |

Determines the space between the options. Valid values: `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

 |
|

Margin Above

 |

`marginAbove`

 |

_Text_

 |

Determines how much space is added above the component. Valid values: "NONE" (default), "EVEN\_LESS", "LESS", "STANDARD" , "MORE", "EVEN\_MORE".

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the component. Valid values: "NONE", "EVEN\_LESS", "LESS", "STANDARD" (default), "MORE", "EVEN\_MORE".

 |

## Usage considerations

### Mobile support

The card choices component is supported on mobile versions starting with 22.1.

### Displaying data and card choices

-   Use the _sort_ parameter to change the display order of your card choices.
    -   If you're using a query or a data subset, any logic defined in the card choices's _sort_ parameter will evaluate after the query or data subset sorting. Sorting for queries and data subsets happen when the data is initially retrieved.
-   Card choices automatically arrange themselves to take up as many rows as needed to best fit the width of the screen. To control the number of cards in each row, put the card choices component in a [columns layout](Columns_Layout.html) with a specified width.

### Using icons and text

-   Neither icons, primary text, nor secondary text are required. Templates will reallocate the space of any missing value.
    -   For a uniform interface, make sure that you have consistent values for the icon, primary text, and secondary text fields for all card choices on an interface. For example, all card choices should include primary text, or none of them should.
-   If you're using data from records or entities as your source, you can add an icon field in your record type or CDT to easily display icons in your card choices.
-   Both the primary and secondary texts will truncate after two lines each. The tooltip shows the full text.
    -   Spacing and truncation look different in the [bars (justified text) template](card-choices-bars.html). To ensure that all your text has enough space to show properly, keep your secondary text short when using this template.

### Choosing your card choices component's data source

The card choices component provides four options to easily access your data:

-   A record type
-   An expression
-   A rule
-   A variable

These four options allow you to access your data wherever it is, using one of the following methods:

-   A record type, accessing your data using type reference or [`a!recordData()`](fnc_system_recorddata.html).
-   A query, using [`a!queryEntity()`](fnc_system_a_queryentity.html).
-   A data subset.
-   A list of map or dictionary.
-   A list of data.

#### Data in a map, dictionary, data subset, or list of data

To access your data in a map, dictionary, or list of data, you can select either **Expression**, **Variable**, or **Rule** as the data source for your card choices component.

Using **Expressions**, you can create a map, dictionary, or list of data directly in the card choice field _data_ parameter.

Using **Variable**, you can create a map, dictionary, or list of data in a local variable or rule input and call it into the card choices _data_ parameter.

Using **Rule**, you can access a map, dictionary, data subset, or list of data that is stored in an expression rule and call the expression rule into the card choices _data_ parameter.

## Examples

### Using record data as the card choices data source

_Copy and paste an example into an Appian Expression Editor to experiment with it._

Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only.

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
a!localVariables(
  local!save,
  {
    a!sectionLayout(
      label: "Select your company's industry",
      labelSize: "LARGE",
      contents: {
        a!cardChoiceField(
          label: "Select your company's industry",
          labelPosition: "COLLAPSED",
          instructions: "Don't see your company's industry listed? Contact our team to add your industry to our community!",
          data: 'recordType!{41134583-1730-42d9-a32f-be722d9b47b9}Industries',
          sort: {
            a!sortInfo(
              field: 'recordType!{41134583-1730-42d9-a32f-be722d9b47b9}Industries.fields.{4edb6e00-5b39-469f-9527-a5c5019bc1a4}industrytype',
              ascending: true
            )
          },
          cardTemplate: a!cardTemplateBarTextStacked(
            id: fv!data['recordType!{41134583-1730-42d9-a32f-be722d9b47b9}Industries.fields.{3cae152b-3f67-4736-91ef-569469ac657c}id'],
            primaryText: fv!data['recordType!{41134583-1730-42d9-a32f-be722d9b47b9}Industries.fields.{4edb6e00-5b39-469f-9527-a5c5019bc1a4}industrytype'],
            secondaryText: fv!data['recordType!{41134583-1730-42d9-a32f-be722d9b47b9}Industries.fields.{e30ac296-a285-4490-aab4-890fc4346e89}description'],
            icon: fv!data['recordType!{41134583-1730-42d9-a32f-be722d9b47b9}Industries.fields.{0fcc2280-7bef-4205-8ed4-aee913b57b7a}icon'],
            iconAltText: fv!data['recordType!{41134583-1730-42d9-a32f-be722d9b47b9}Industries.fields.{70404539-ab39-42cf-b380-197bb1ae3b73}iconalttext']
          ),
          value: local!save,
          saveInto: local!save,
          maxSelections: 1,
          align: "START",
          showShadow: false,
          validations: {}
        )
      }
    )
  }
)
```

Displays the following:

![screenshot of a card choices component with 8 cards displaying industries](images/card_choices_record_example.png)

### Using a query as the card choices data source

_Copy and paste an example into an Appian Expression Editor to experiment with it._

This example references specific fields in a CDT that you need to replace with your own fields. If you copy and paste this example into your interface, the fields won't evaluate. Use the example as a reference only.

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
a!localVariables(
  local!save,
  {
    a!sectionLayout(
      label: "Select your work location",
      labelSize: "LARGE",
      contents: {
        a!cardChoiceField(
          label: "Select your work location",
          labelPosition: "COLLAPSED",
          data: a!queryEntity(
            entity: cons!WORK_INFO_ENTITY,
            query: a!query(
              selection: a!querySelection(
                columns: {
                  a!queryColumn(field: "id"),
                  a!queryColumn(field: "workLocation"),
                  a!queryColumn(field: "workLocationDescription"),
                  a!queryColumn(field: "locationIcon"),
                  a!queryColumn(field: "locationIconAltText")
                }
              ),
              pagingInfo: a!pagingInfo(startIndex: 1, batchSize: - 1)
            ),
            fetchTotalCount: true
          ),
          cardTemplate: a!cardTemplateTile(
            id: fv!data.id,
            primaryText: fv!data.workLocation,
            secondaryText: fv!data.workLocationDescription,
            icon: fv!data.locationIcon,
            iconAltText: fv!data.locationIconAltText
          ),
          value: local!save,
          saveInto: local!save,
          maxSelections: 1,
          validations: {}
        )
      }
    )
  }
)
```

Displays the following:

![screenshot of a card choices component with 4 cards displaying work locations](images/card_choices_query_example.png)

### Using a map as the card choices data source

Use the interactive editor below to test out the example code.

#### More map configurations

The example above shows how to use a map of data in the card choices component _data_ parameter. If you copy and paste the expression into an interface, you'll see that **Expression** is selected for the **Data Source** in design mode. If you're using expression mode, you can write your expression as you normally would without selecting a data source from design mode.

You can achieve a similar result to the example above using either of the **Variable** or **Rule** data source configurations.

If you want to use a map with a local variable:

1.  Drag and drop the card choices component onto your interface.
2.  In the interface header, click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg).
3.  Create a local variable.
4.  Add a map of your data in the local variable.
5.  In the interface header, click **Design mode** ![design mode icon](images/design-mode-icon.svg).
6.  Go to **Data Source** and select **Variable**.
7.  Select your local variable from the dropdown.
8.  Configure the card choices parameters according to the fields present in your data.

Go ahead and try out using a map with local variables in the interactive expression editor above.

If you want to use a map with a rule input:

1.  Drag and drop the card choices component onto your interface.
2.  Add a rule input of type **Map** and click **Array (multiple values)**.
3.  Click **Test**.
4.  In **Expression**, add a map of your data.
5.  Click **Set as default test values**, then click **TEST INTERFACE**.
6.  Go to **Data Source** and select **Variable**.
7.  Select your rule input from the dropdown.
8.  Configure the card choices parameters according to the fields present in your data.

If you want to use a map with an expression rule:

1.  Drag and drop the card choices component onto your interface.
2.  Go to **Data Source** and select **Rule**.
3.  Select an expression rule that contains a map of your data.
4.  Configure the card choices parameters according to the fields present in your data.

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |
Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Related Patterns

The following patterns include usage of the Card Choices Component.

-   [Cards as Choices Pattern](/suite/help/25.3/cards-as-choices-pattern.html) (_Card Choices, Rich Text_): Use this pattern to display sets of choices that are quick and easy to navigate.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...