---
source_url: https://docs.appian.com/suite/help/25.3/function_versions.html
original_path: function_versions.html
version: "25.3"
title: "Function and Component Versions"
page_id: "function_versions"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Function and Component Versions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes how Appian introduces improvements to [functions](Appian_Functions.html) and [Interface Components](SAIL_Components.html) (collectively referred to as "Function(s)" on this page), while preserving backwards compatibility.

Historically, when we wanted to improve a Function, we would wait until we had enough changes to justify introducing them as an entirely new Function. Starting in Appian 17.2, we introduced the concept of Function _versions_, where we add a new version of a Function, but leave the old version in place with a slightly modified name.

### New function vs. new version

When we add a **new Function**, instead of improving an old one, we give it a new name. We do this when there is sufficient difference in usage that it would amount to large changes in design. A great example of this is the new [a!forEach()](fnc_looping_a_foreach.html) Function, which supercedes the capabilities of [apply()](fnc_looping_apply.html) and [a!applyComponents()](fnc_system_a_applycomponents.html), and uses a different design pattern.

When we add a **new version** of a Function, instead of improving the old one, we give it the _same_ name, and change the name of the old Functions. We do this when we want to improve a Function in a way that would not preserve backwards compatibility in all cases, and where we intend for it to take the same place in the Appian paradigm. Otherwise we'd bloat our library of Function options, introducing confusion about when you should use which. The [a!toJson()](fnc_system_a_tojson.html) Function is a great example; we have some solid improvements to the Function, but there are a few cases where it's used in a way that would break if we changed the old Function.

## How Do I Know If I'm Using an Old Version?

You can tell if the Function you're using is an old version by looking at its name to see if it has a suffix in the format of `_XXrX`, where the X's represent the last version of Appian where that Function was used.

For example, if you were using the Dashboard Layout in an interface in Appian 17.1, your interface showed it as: `a!dashboardLayout`. After upgrade to Appian 17.2 or later, if you look at that same interface, you'll see that the name has been changed to `a!dashboardLayout_17r1`.

-   Before: `a!dashboardLayout`
-   After: `a!dashboardLayout_17r1`

## Do I Have to Use the New Version?

No. You may continue to use old versions indefinitely.

However, since new versions of Functions often contain desirable improvements to functionality, design simplicity, performance, and stability, you'll likely want to switch at some point.

## Changes You'll See In Appian

Old versions of Functions will not appear in type-ahead suggestions.

![screenshot of a type-ahead suggestion for a function](images/function_versions_barchartfield.png)

However, you _can_ continue to use old versions without issue, and when using an old version, the documentation pane will provide information specific to the version of the Function you're using.

![screenshot of old version of a function](images/function_versions_barchartfield_21r4.png)

## Changes you'll see in the documentation

Old versions of Functions are not used in examples or interface recipes, and are not listed in category lists.

However, all old versions of Functions still have their reference pages available in the documention. You have a number of options for finding that content:

-   **Search** the docs. For example, just search for: `barChartField_21r4` and you should quickly see it in the type-ahead results.
-   Find it in the [**Appian Functions Page**](Appian_Functions.html).
-   From the **latest version's page**, in the section titled "Old Versions." For example: [Bar Chart Component](Bar_Chart_Component.html).
-   Or from [**the table below**](#oldvertable) that lists all Functions that have been changed this way.

## All updated functions as of 25.3

The following table lists all Functions that have older versions, the updates made to that Function, and all associated older versions as links to their reference pages.

| Latest | Reason for Update | Old Versions |
| --- | --- | --- |
| [Bar Chart Component](/suite/help/25.3/Bar_Chart_Component.html)
`a!barChartField` |
Fixed existing behavior in stacked bar charts so that the values in the stacked bars display in the same order as the items in the legend.

 | [a!barChartField\_21r4](/suite/help/25.3/Bar_Chart_Component_21r4.html) |
| [Billboard Layout](/suite/help/25.3/Billboard_Layout.html)
`a!billboardLayout` |

Replaced multiple parameters with a new parameter that allows the designer to choose between a bar, column, or full overlay style. Added the full overlay style. Added the alignVertical parameter for the column and full overlay styles.

 | [a!billboardLayout\_19r1](/suite/help/25.3/Billboard_Layout_19r1.html) |
| [Button Component](/suite/help/25.3/Button_Component.html)
`a!buttonWidget` |

Added more flexible options for button styling with a new color parameter and updated style parameter. You can now control button color and style separately.

 | [a!buttonWidget\_23r3](/suite/help/25.3/Button_Component_23r3.html) |
| [Cancel Process Smart Service](/suite/help/25.3/Cancel_Process_Smart_Service.html)
`a!cancelProcess` |

This function was updated to handle scenarios where the selected process has already been canceled or completed. Instead of throwing an error in these cases, a new function variable, fv!alreadyClosed, will be set to true and available for use in your logic.

 | [a!cancelProcess\_17r3](/suite/help/25.3/Cancel_Process_Smart_Service_17r3.html) |
| [Checkbox Component](/suite/help/25.3/Checkbox_Component.html)
`a!checkboxField` |

Added the ability to use record field values as checkbox choices.

 | [a!checkboxField\_23r3](/suite/help/25.3/Checkbox_Component_23r3.html) |
| [Create Knowledge Center Smart Service](/suite/help/25.3/Create_Knowledge_Center_Smart_Service.html)
`a!createKnowledgeCenter` |

The securityLevel has been removed in the Appian 18.1 release. Knowledge center security is managed completely by normal object security.

 | [a!createKnowledgeCenter\_17r4](/suite/help/25.3/Create_Knowledge_Center_Smart_Service_17r4.html) |
| [a!currency() Function](/suite/help/25.3/fnc_text_currency.html)
`a!currency` |

Expanded currency localization capabilities. Now supports hundreds of currencies by accepting an ISO code and outputs a formatted currency value based on locale.

 | [currency\_22r4](/suite/help/25.3/fnc_text_currency_22r4.html) |
| [Delete Records Smart Service](/suite/help/25.3/Delete_Records_Smart_Service.html)
`a!deleteRecords` |

Allow deleting records and related records at the same time.

 | [a!deleteRecords\_23r3](/suite/help/25.3/Delete_Records_Smart_Service_23r3.html) |
| [Document Browser Component](/suite/help/25.3/Document_Browser_Component.html)
`a!documentBrowserFieldColumns` |

Now supports selection in addition to browsing.

 | [a!documentBrowserFieldColumns\_17r3](/suite/help/25.3/Document_Browser_Component_173.html) |
| [Dropdown Component](/suite/help/25.3/Dropdown_Component.html)
`a!dropdownField` |

Added an optional search box and renamed the placeholderLabel parameter to placeholder.'

 | [a!dropdownField\_20r2](/suite/help/25.3/Dropdown_Component_20r2.html) |
| [Dropdown By Index Component](/suite/help/25.3/Dropdown_By_Index_Component.html)
`a!dropdownFieldByIndex` |

Added an optional search box and renamed the placeholderLabel parameter to placeholder.

 | [a!dropdownFieldByIndex\_20r2](/suite/help/25.3/Dropdown_By_Index_Component_20r2.html) |
| [File Upload Component](/suite/help/25.3/File_Upload_Component.html)
`a!fileUploadField` |

Multiple file upload is now supported directly within the component. This removes the need to generate many individual file upload fields.

 | [a!fileUploadField\_17r1](/suite/help/25.3/File_Upload_Component_171.html) |
| [Form Layout](/suite/help/25.3/Form_Layout.html)
`a!formLayout` |

Added support for title bar templates and added dynamic defaults for _contentsWidth_, _showTitleBarDivider_, and _showButtonDivider_ parameters. These parameters now automatically adapt based on if the form is displayed in a dialog or not.

 | [a!formLayout\_25r1](/suite/help/25.3/Form_Layout_25r1.html) |
|  |

Replaced _firstColumnContents_ and _secondColumnContents_ with `contents`. Now supports greater than two-column layout.

 | [a!formLayout\_17r1](/suite/help/25.3/Form_Layout_171.html) |
| [a!fromJson() Function](/suite/help/25.3/fnc_system_a_fromjson.html)
`a!fromJson` |

Now automatically converts date and datetime fields to the appropriate Date and Date and Time data types instead of a string. Also converts 64-bit integers to string instead of returning null.

 | [a!fromJson\_19r2](/suite/help/25.3/fnc_system_a_fromjson_19r2.html) |
| [Read-Only Grid Column Component](/suite/help/25.3/Grid_Column_Component.html)
`a!gridColumn` |

Now supports multiple interface components.

 | [a!gridTextColumn](/suite/help/25.3/Grid_Text_Column_Component.html) |
| [Read-Only Grid Component](/suite/help/25.3/Paging_Grid_Component.html)
`a!gridField` |

Enhanced [records-powered grids](Using_the_Records_Tab.html#interface-components) so the _relatedRecordData_ parameter can accept a limit of up to 100 related records.

 | [a!gridField\_25r2](/suite/help/25.3/Paging_Grid_Component_25r2.html) |
|  |

Enhanced [records-powered grids](Using_the_Records_Tab.html#interface-components) so they can automatically detect if fields have been queried from a different relationship and skip any redundant queries. Additionally, updated the grid's default border style and shading.

 | [a!gridField\_24r3](/suite/help/25.3/Paging_Grid_Component_24r3.html) |
|  |

Enhanced read-only grids that use a record type as the source so they only query the record fields specified in the _columns_, _pagingSaveInto_, and _selectionSaveInto_ parameters. This allows for more optimal grid performance. Additionally, if your grid includes dynamic behavior, you can configure the _fields_ parameter in [a!recordData()](fnc_system_recorddata.html) to specify when to query fields in the grid.

 | [a!gridField\_23r3](/suite/help/25.3/Paging_Grid_Component_23r3.html) |
|  |

Now supports embedded queries, columns widths, and rich text.

 | [a!gridField\_19r1](/suite/help/25.3/Paging_Grid_Component_191.html) |
| [a!httpResponse() Function](/suite/help/25.3/fnc_system_a_httpresponse.html)
`a!httpResponse` |

Can now return documents through Web APIs so that other systems can access Appian documents.

 | [a!httpResponse\_17r4](/suite/help/25.3/fnc_system_a_httpresponse_17r4.html) |
| [Image Component](/suite/help/25.3/Image_Component.html)
`a!imageField` |

Now supports a style parameter, a separate configuration for thumbnail functionality, and more sizes.

 | [a!imageField\_17r3](/suite/help/25.3/Image_Component_173.html) |
| [a!isUserMemberOfGroup() Function](/suite/help/25.3/fnc_people_a_isusermemberofgroup.html)
`a!isUserMemberOfGroup` |

Now accepts multiple groups and can check whether the user is a member of any or all groups. Also moved to the a! domain.

 | [isusermemberofgroup\_21r2](/suite/help/25.3/fnc_people_isusermemberofgroup_21r2.html) |
| [Line Chart Component](/suite/help/25.3/Line_Chart_Component.html)
`a!lineChartField` |

Added ability to display thousands of data points without scrolling. When the chart shows date or date and time fields, the x-axis labels are formatted to match the end user's time zone and resized to avoid clutter.

 | [a!lineChartField\_19r1](/suite/help/25.3/Line_Chart_Component_19r1.html) |
| [Multiple Dropdown Component](/suite/help/25.3/Multiple_Dropdown_Component.html)
`a!multipleDropdownField` |

Added an optional search box.

 | [a!multipledropdownField\_20r2](/suite/help/25.3/Multiple_Dropdown_Component_20r2.html) |
| [Multiple Dropdown By Index Component](/suite/help/25.3/Multiple_Dropdown_By_Index_Component.html)
`a!multipleDropdownFieldByIndex` |

Added an optional search box.

 | [a!multipleDropdownFieldByIndex\_20r2](/suite/help/25.3/Multiple_Dropdown_By_Index_Component_20r2.html) |
| [Record Picker Component](/suite/help/25.3/Record_Picker_Component.html)
`a!pickerFieldRecords` |

Updated the _filters_ parameter so it can now accept a single [logical expression](fnc_system_a_querylogicalexpression.html) or a list of [query filters](fnc_system_a_queryfilter.html) to determine which records appear in the picker

 | [a!pickerFieldRecords\_22r1](/suite/help/25.3/Record_Picker_Component_22r1.html) |
|  |

Supports updated record types that use record type field references.

 | [a!pickerFieldRecords\_20r2](/suite/help/25.3/Record_Picker_Component_20r2.html) |
| [a!queryEntity() Function](/suite/help/25.3/fnc_system_a_queryentity.html)
`a!queryEntity` |

Fixed an incorrect sorting behavior so that a sort is now automatically applied on the primary key field when there is no other sort applied. In previous versions of this function, a sort was applied on the last field in the query when there was no sort or selection specified, or when there was no sort and at least one `a!queryColumn()` specified as a selection.

 | [a!queryEntity\_22r2](/suite/help/25.3/fnc_system_a_queryentity_22r2.html) |
|  |

Added the _fetchTotalCount_ parameter, which, by default, avoids running the query that retrieves the total number of rows in the `totalCount` parameter of the resulting datasubset.

 | [a!queryEntity\_18r3](/suite/help/25.3/fnc_system_a_queryentity_18r3.html) |
| [a!queryRecordByIdentifier() Function](/suite/help/25.3/fnc_system_a_queryrecordbyidentifier.html)
`a!queryRecordByIdentifier` |

Changed the _fields_ parameter behavior so when the parameter is null or empty, only the primary key field from the base record type is returned. Likewise, only referencing a relationship will return the primary key fields from both the base and related record types. Additionally, the evolution allows for the _relatedRecordData_ parameter to accept a limit of up to 250 related records.

 | [a!queryRecordByIdentifier\_25r2](/suite/help/25.3/fnc_system_queryrecordbyidentifier_25r2.html) |
| [a!queryRecordType() Function](/suite/help/25.3/fnc_system_queryrecordtype.html)
`a!queryRecordType` |

Changed the _fields_ parameter behavior so when the parameter is null or empty, only the primary key field from the base record type is returned. Likewise, only referencing a relationship will return the primary key fields from both the base and related record types. Additionally, the evolution allows for the _relatedRecordData_ parameter to accept a limit of up to 100 related records.

 | [a!queryRecordType\_25r2](/suite/help/25.3/fnc_system_queryrecordtype_25r2.html) |
|  |

Changed the default value for the _fetchTotalCount_ parameter to `false` to improve performance.

 | [a!queryRecordType\_24r4](/suite/help/25.3/fnc_system_queryrecordtype_24r4.html) |
|  |

Replaced _selection_ with _fields_, which now allows for both selection and aggregation of record data when querying a given record type.

 | [a!queryRecordType\_20r4](/suite/help/25.3/fnc_system_queryrecordtype_20r4.html) |
| [Radio Button Component](/suite/help/25.3/Radio_Button_Component.html)
`a!radioButtonField` |

Added the ability to use record field values as radio button choices.

 | [a!radioButtonField\_23r3](/suite/help/25.3/Radio_Button_Component_23r3.html) |
| [Record Action Component](/suite/help/25.3/Record_Action_Component.html)
`a!recordActionField` |

Added the _securityOnDemand_ parameter to determine when record action security is evaluated for the `"MENU"` `and` "MENU\_ICON"\` action styles. By default, security for the menu styles is evaluated when the user clicks the button.

 | [a!recordActionField\_23r3](/suite/help/25.3/Record_Action_Component_23r3.html) |
| [a!recordFilterDateRange() Function](/suite/help/25.3/fnc_system_a_recordfilterdaterange.html)
`a!recordFilterDateRange` |

Supports updated record types that use record type field references.

 | [a!recordFilterDateRange\_20r2](/suite/help/25.3/fnc_system_a_recordfilterdaterange_20r2.html) |
| [Rich Text Item](/suite/help/25.3/Styled_Text_Component.html)
`a!richTextItem` |

New version supports multiple values in the style parameter, as well as custom hex colors.

 | [a!richTextItem\_18r1](/suite/help/25.3/Styled_Text_Component_181.html) |
| [Section Layout](/suite/help/25.3/Section_Layout.html)
`a!sectionLayout` |

Replaced _firstColumnContents_ and _secondColumnContents_ with `contents`. Now supports greater than two-column layout.

 | [a!sectionLayout\_17r1](/suite/help/25.3/Section_Layout_171.html) |
| [Start Process Smart Service](/suite/help/25.3/Start_Process_Smart_Service.html)
`a!startProcess` |

This function was evolved to be compatible with autoscale and to allow processes to start synchronously.

 | [a!startProcess\_24r3](/suite/help/25.3/Start_Process_Smart_Service_24r3.html) |
| [Sync Records Smart Service](/suite/help/25.3/Sync_Records_Smart_Service.html)
`a!syncRecords` |

This function was evolved to [automatically refresh record data](Sync_Records_Smart_Service.html#automatic-refresh-on-record-views) in any record view where the function is used.

 | [a!syncRecords\_22r2](/suite/help/25.3/Sync_Records_Smart_Service_22r2.html) |
| [Tag Item](/suite/help/25.3/Tag_Item_Component.html)
`a!tagItem` |

Added the ability to use any [link type](SAIL_Components.html#link-types) in a tag.

 | [a!tagItem\_24r2](/suite/help/25.3/Tag_Item_Component_24r2.html) |
| [a!toJson() Function](/suite/help/25.3/fnc_system_a_tojson.html)
`a!toJson` |

Improved support for datetime values. This removes the need to create a supporting conversion rule.

 | [a!toJson\_17r1](/suite/help/25.3/fnc_system_a_tojson_17r1.html) |
| [a!urlForRecord() Function](/suite/help/25.3/fnc_scripting_urlforrecord.html)
`a!urlForRecord` |

You can now specify a site page to open your record when using both a!urlForRecord and a!recordLink.

 | [urlForRecord\_23r4](/suite/help/25.3/fnc_scripting_urlforrecord_23r4.html) |
| [a!userRecordFilterList() Function](/suite/help/25.3/fnc_system_a_userrecordfilterlist.html)
`a!userRecordFilterList` |

The latest version of this function is compatible with the [updated User record type](Configure_Tempo_Users.html#update-the-user-record-type), which has data sync enabled.

 | [a!userRecordFilterList\_22r3](/suite/help/25.3/fnc_system_a_userrecordfilterlist_22r3.html) |
| [a!userRecordListViewItem() Function](/suite/help/25.3/fnc_system_a_userrecordlistviewitem.html)
`a!userRecordListViewItem` |

The latest version of this function is compatible with the [updated User record type](Configure_Tempo_Users.html#update-the-user-record-type), which has data sync enabled.

 | [a!userRecordListViewItem\_22r3](/suite/help/25.3/fnc_system_a_userrecordlistviewitem_22r3.html) |
| [Write Records Smart Service](/suite/help/25.3/Write_Records_Smart_Service.html)
`a!writeRecords` |

The Records Updated output was changed to return the input data and the primary keys of any newly created records.

 | [a!writeRecords\_23r4](/suite/help/25.3/Write_Records_Smart_Service_23r4.html) |
|  |

Allow writing records and related records at the same time. For faster node execution, the `Records Updated` output was changed to only list the primary keys of affected records and related records.

 | [a!writeRecords\_23r2](/suite/help/25.3/Write_Records_Smart_Service_23r2.html) |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...