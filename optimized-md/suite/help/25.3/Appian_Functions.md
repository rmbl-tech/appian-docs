---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Functions.html
original_path: Appian_Functions.html
version: "25.3"
title: "All Functions"
page_id: "Appian_Functions"
section: "Feedback"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# All Functions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This table is a searchable listing of all Appian functions, including those that render interface components or execute smart services. You can filter by function **category** and/or **feature compatibility** with portals, offline mobile, sync-time custom record fields, real-time custom record fields, process reports, process events, or process autoscaling.

 All Categories Array Base Conversion Connector Conversion Custom Fields Date and Time Evaluation Informational Interface Component Logical Looping Mathematical People Scripting Smart Service Statistical System Text Trigonometry 一Deprecated一 一Old Versions一 and Any Compatibility Incompatible Partially compatible Compatible

with Portals Offline Mobile Sync-Time Custom Record Fields Real-Time Custom Record Fields Process Reports Process Events Process Autoscaling

| Category | Sub Category | CatDesc | SubCatDesc | Name | Description | Syntax | Example | Result | Compatibility |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!dashboardLayoutColumns() \[Deprecated\]](/suite/help/25.3/Columns_Based_Dashboard_Layout.html) |  |  |  |  |
`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!formLayoutColumns() \[Deprecated\]](/suite/help/25.3/Columns_Based_Form_Layout.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sectionLayoutColumns() \[Deprecated\]](/suite/help/25.3/Columns_Based_Section_Layout.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [thread() \[Deprecated\]](/suite/help/25.3/Discussion_Thread_Data_Type.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [message() \[Deprecated\]](/suite/help/25.3/Message_Data_Type.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [a!flatten()](/suite/help/25.3/fnc_array_a_flatten.html) |

Converts an array that contains other arrays into an array of single items.

 |

**a!flatten**(_\[array\]_)

 | `a!flatten(merge({1,2},{11, 12}))` | `{1, 11, 2, 12}` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [a!update()](/suite/help/25.3/fnc_array_a_update.html) |

Inserts new values or replaces existing values at the specified index or field name and returns the resulting updated data.

 |

**a!update**(_\[data\], \[index\], \[value\]_)

 | `a!update(a!map(a: 1, b: 2), "a", 5)` | `a!map(a: 5, b: 2)` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [append()](/suite/help/25.3/fnc_array_append.html) |

Appends a value or values to the given array, and returns the resulting array.

 |

**append**(_\[array\], \[value\]_)

 | `append({10, 20, 30}, 99)` | `{10, 20, 30, 99}` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [index()](/suite/help/25.3/fnc_array_index.html) |

Returns the data\[index\] if it is valid or else returns the default value.

 |

**index**(_\[data\], \[index\], \[default\]_)

 | `index({10, 20, 30}, 2, 1)` | `20` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [insert()](/suite/help/25.3/fnc_array_insert.html) |

Inserts a value into the given array and returns the resulting array.

 |

**insert**(_\[array\], \[value\], \[index\]_)

 | `insert({10, 20, 30, 40}, 99, 1)` | `{99, 10, 20, 30, 40}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [joinarray()](/suite/help/25.3/fnc_array_joinarray.html) |

Concatenates the elements of an array together into one string and inserts a string separator between each element.

 |

**joinarray**(_\[array\], \[separator\]_)

 | `joinarray({1, 2, 3, 4}, "|")` | `1|2|3|4` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [ldrop()](/suite/help/25.3/fnc_array_ldrop.html) |

Drops a given number of values from the left side of an array and returns the resulting array.

 |

**ldrop**(_\[array\], \[number\]_)

 | `ldrop({10, 20, 30}, 1)` | `{20, 30}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [length()](/suite/help/25.3/fnc_array_length.html) |

This function returns the number of elements in an array.

 |

**length**(_\[array\]_)

 | `length({10, 20, 30})` | `3` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [rdrop()](/suite/help/25.3/fnc_array_rdrop.html) |

Drops a given number of values from the right side of an array, and returns the resulting array.

 |

**rdrop**(_\[array\], \[number\]_)

 | `rdrop({10, 20, 30}, 1)` | `{10, 20}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [remove()](/suite/help/25.3/fnc_array_remove.html) |

Removes the value at a given index from an array, and returns the resulting array.

 |

**remove**(_\[array\], \[index\]_)

 | `remove({10, 20, 30}, 2)` | `{10, 30}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [reverse()](/suite/help/25.3/fnc_array_reverse.html) |

Returns an array in reverse order.

 |

**reverse**(_\[array\]_)

 | `reverse({10, 20, 30})` | `{30, 20, 10}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [updatearray()](/suite/help/25.3/fnc_array_updatearray.html)

Replaced by [a!update()](/suite/help/25.3/fnc_array_a_update.html)

 |

Inserts new values or modifies existing values at the specified index of a given array, and returns the resulting array.

 |

**updatearray**(_\[array\], \[index\], \[value\]_)

 | `updatearray({10, 20, 30}, 2, 99)` | `{10, 99, 30}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [where()](/suite/help/25.3/fnc_array_where.html) |

Returns the indexes where the values in the input array are true.

 |

**where**(_\[booleanArray\], \[default\]_)

 | `where({true, false, true})` | `{1, 3}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array |  | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. |  | [wherecontains()](/suite/help/25.3/fnc_array_wherecontains.html) |

Receives one or more values and returns an array of indexes that indicate the position of the values within the array.

 |

**wherecontains**(_\[values\], \[array\]_)

 | `wherecontains(20, {10, 20, 30})` | `{2}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [bin2dec()](/suite/help/25.3/fnc_base_conversion_bin2dec.html) |

Converts a Binary number as text to a Decimal number.

 |

**bin2dec**(_\[value\]_)

 | `bin2dec(10000)` | `16` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [bin2hex()](/suite/help/25.3/fnc_base_conversion_bin2hex.html) |

Converts a Binary number as text to a Hex number as text.

 |

**bin2hex**(_\[value\], \[place\]_)

 | `bin2hex(1100100)` | `64` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [bin2oct()](/suite/help/25.3/fnc_base_conversion_bin2oct.html) |

Converts a Binary number as text to an Octal number as text.

 |

**bin2oct**(_\[value\], \[place\]_)

 | `bin2oct(1100100)` | `144` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [dec2bin()](/suite/help/25.3/fnc_base_conversion_dec2bin.html) |

Converts a Decimal number to a Binary number as text.

 |

**dec2bin**(_\[value\], \[place\]_)

 | `dec2bin(16)` | `10000` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [dec2hex()](/suite/help/25.3/fnc_base_conversion_dec2hex.html) |

Converts a Decimal number to a Hex number as text.

 |

**dec2hex**(_\[value\], \[place\]_)

 | `dec2hex(16)` | `10` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [dec2oct()](/suite/help/25.3/fnc_base_conversion_dec2oct.html) |

Converts a Decimal number to an Octal number as text.

 |

**dec2oct**(_\[value\], \[place\]_)

 | `dec2oct(16)` | `20` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [hex2bin()](/suite/help/25.3/fnc_base_conversion_hex2bin.html) |

Converts a Hex number as text to a Binary number as text.

 |

**hex2bin**(_\[value\], \[place\]_)

 | `hex2bin(64)` | `1100100` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [hex2dec()](/suite/help/25.3/fnc_base_conversion_hex2dec.html) |

Converts a Hex number as text to a Decimal number.

 |

**hex2dec**(_\[value\]_)

 | `hex2dec(10)` | `16` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [hex2oct()](/suite/help/25.3/fnc_base_conversion_hex2oct.html) |

Converts a Hex number as text to an Octal number as text.

 |

**hex2oct**(_\[value\], \[place\]_)

 | `hex2oct(64)` | `144` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [oct2bin()](/suite/help/25.3/fnc_base_conversion_oct2bin.html) |

Converts an Octal number as text to a Binary number as text.

 |

**oct2bin**(_\[value\], \[place\]_)

 | `oct2bin(144)` | `1100100` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [oct2dec()](/suite/help/25.3/fnc_base_conversion_oct2dec.html) |

Converts an Octal number as text to a Decimal number.

 |

**oct2dec**(_\[value\]_)

 | `oct2dec(20)` | `16` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Base Conversion |  | Base ConversionUsed within expressions to convert values into other base number formats. |  | [oct2hex()](/suite/help/25.3/fnc_base_conversion_oct2hex.html) |

Converts an Octal number as text to a Hex number as text.

 |

**oct2hex**(_\[value\], \[place\]_)

 | `oct2hex(144)` | `64` |

`~portal+om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!cmiCopyDocumentFromAppian() \[Deprecated\]](/suite/help/25.3/fnc_connector_cmi_a_cmicopydocumentfromappian.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!cmiCopyDocumentToAppian() \[Deprecated\]](/suite/help/25.3/fnc_connector_cmi_a_cmicopydocumenttoappian.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!cmiCopyDocumentToAppianFolder() \[Deprecated\]](/suite/help/25.3/fnc_connector_cmi_a_cmicopydocumenttoappianfolder.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!cmiCreateFolder() \[Deprecated\]](/suite/help/25.3/fnc_connector_cmi_a_cmicreatefolder.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!cmiDelete() \[Deprecated\]](/suite/help/25.3/fnc_connector_cmi_a_cmidelete.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!cmiGetFolderChildren() \[Deprecated\]](/suite/help/25.3/fnc_connector_cmi_a_cmigetfolderchildren.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!cmiGetObjectIdByPath() \[Deprecated\]](/suite/help/25.3/fnc_connector_cmi_a_cmigetobjectidbypath.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!cmiGetProperties() \[Deprecated\]](/suite/help/25.3/fnc_connector_cmi_a_cmigetproperties.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!cmiGetRepoInfo() \[Deprecated\]](/suite/help/25.3/fnc_connector_cmi_a_cmigetrepoinfo.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!dynAssociate() \[Deprecated\]](/suite/help/25.3/fnc_connector_dyn_a_dynassociate.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!dynCreate() \[Deprecated\]](/suite/help/25.3/fnc_connector_dyn_a_dyncreate.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!dynDelete() \[Deprecated\]](/suite/help/25.3/fnc_connector_dyn_a_dyndelete.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!dynDisassociate() \[Deprecated\]](/suite/help/25.3/fnc_connector_dyn_a_dyndisassociate.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!dynRetrieve() \[Deprecated\]](/suite/help/25.3/fnc_connector_dyn_a_dynretrieve.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!dynRetrieveMultiple() \[Deprecated\]](/suite/help/25.3/fnc_connector_dyn_a_dynretrievemultiple.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!dynUpdate() \[Deprecated\]](/suite/help/25.3/fnc_connector_dyn_a_dynupdate.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Connector | Web Service Helper | ConnectorUsed to integrate Appian with popular enterprise software solutions. | Web Service Helper | [a!httpAuthenticationBasic()](/suite/help/25.3/fnc_connector_http_a_httpauthenticationbasic.html) |

Creates an object that contains the information required to perform HTTP Basic authentication.

 |

**a!httpAuthenticationBasic**(_\[username\], \[password\], \[preemptive\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Connector | Web Service Helper | ConnectorUsed to integrate Appian with popular enterprise software solutions. | Web Service Helper | [a!httpFormPart()](/suite/help/25.3/fnc_connector_http_a_httpformpart.html) |

Creates an HTTP form part which can be passed in an integration’s multipart request body.

 |

**a!httpFormPart**(_\[name\], \[contentType\], \[value\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Connector | Web Service Helper | ConnectorUsed to integrate Appian with popular enterprise software solutions. | Web Service Helper | [a!httpHeader()](/suite/help/25.3/fnc_connector_http_a_httpheader.html) |

Creates an HTTP header object which can be passed to an HTTP function.

 |

**a!httpHeader**(_\[name\], \[value\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!httpQuery() \[Deprecated\]](/suite/help/25.3/fnc_connector_http_a_httpquery.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Connector | Web Service Helper | ConnectorUsed to integrate Appian with popular enterprise software solutions. | Web Service Helper | [a!httpQueryParameter()](/suite/help/25.3/fnc_connector_http_a_httpqueryparameter.html) |

Creates an HTTP query parameter object which can be passed to an HTTP function.

 |

**a!httpQueryParameter**(_\[name\], \[value\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!httpWrite() \[Deprecated\]](/suite/help/25.3/fnc_connector_http_a_httpwrite.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Connector | Web Service Helper | ConnectorUsed to integrate Appian with popular enterprise software solutions. | Web Service Helper | [a!scsField()](/suite/help/25.3/fnc_connector_http_a_scsfield.html) |

Creates an object which contains the information required to access data in the Secure Credentials Store.

 |

**a!scsField**(_\[externalSystemKey\], \[fieldKey\], \[usePerUser\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Connector | reCAPTCHA | ConnectorUsed to integrate Appian with popular enterprise software solutions. | reCAPTCHAThe reCAPTCHA connector allows you to connect to Google reCAPTCHA services. | [a!verifyRecaptcha()](/suite/help/25.3/fnc_connector_recaptcha_verifyrecaptcha.html) |

Allows you to verify the reCAPTCHA connection was successful and access reCAPTCHA scores to help protect your [Portal](portals-home.html) against potentially malicious activity.

 |

**a!verifyRecaptcha**(_\[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr~pe+pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sapBapiParameters() \[Deprecated\]](/suite/help/25.3/fnc_connector_sap_a_sapbapiparameters.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sapInvoke() \[Deprecated\]](/suite/help/25.3/fnc_connector_sap_a_sapinvoke.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sapInvokeWriter() \[Deprecated\]](/suite/help/25.3/fnc_connector_sap_a_sapinvokewriter.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sblCreate() \[Deprecated\]](/suite/help/25.3/fnc_connector_sbl_a_sblcreate.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sblDelete() \[Deprecated\]](/suite/help/25.3/fnc_connector_sbl_a_sbldelete.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sblInvoke() \[Deprecated\]](/suite/help/25.3/fnc_connector_sbl_a_sblinvoke.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sblInvokeWriter() \[Deprecated\]](/suite/help/25.3/fnc_connector_sbl_a_sblinvokewriter.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sblQuery() \[Deprecated\]](/suite/help/25.3/fnc_connector_sbl_a_sblquery.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sblUpdateFieldValue() \[Deprecated\]](/suite/help/25.3/fnc_connector_sbl_a_sblupdatefieldvalues.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sfcDelete() \[Deprecated\]](/suite/help/25.3/fnc_connector_sfc_a_sfcdelete.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sfcDescribeGlobal() \[Deprecated\]](/suite/help/25.3/fnc_connector_sfc_a_sfcdescribeglobal.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sfcDescribeSObjects() \[Deprecated\]](/suite/help/25.3/fnc_connector_sfc_a_sfcdescribesobjects.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sfcInsert() \[Deprecated\]](/suite/help/25.3/fnc_connector_sfc_a_sfcinsert.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sfcQuery() \[Deprecated\]](/suite/help/25.3/fnc_connector_sfc_a_sfcquery.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sfcSearch() \[Deprecated\]](/suite/help/25.3/fnc_connector_sfc_a_sfcsearch.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sfcUpdate() \[Deprecated\]](/suite/help/25.3/fnc_connector_sfc_a_sfcupdate.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!shpCopyDocumentFromAppian() \[Deprecated\]](/suite/help/25.3/fnc_connector_shp_a_shpcopydocumentfromappian.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!shpCopyDocumentToAppian() \[Deprecated\]](/suite/help/25.3/fnc_connector_shp_a_shpcopydocumenttoappian.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!shpInvoke() \[Deprecated\]](/suite/help/25.3/fnc_connector_shp_a_shpinvoke.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!shpInvokeWriter() \[Deprecated\]](/suite/help/25.3/fnc_connector_shp_a_shpinvokewriter.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Connector | Web Service Helper | ConnectorUsed to integrate Appian with popular enterprise software solutions. | Web Service Helper | [a!wsConfig()](/suite/help/25.3/fnc_connector_ws_a_wsconfig.html) |

Constructs the _config_ parameter to the `webservicequery()` and `webservicewrite()` functions.

 |

**a!wsConfig**(_\[wsdlUrl\], \[service\], \[port\], \[operation\], \[wsdlCredentials\], \[endpointcredentials\], \[extensions\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Connector | Web Service Helper | ConnectorUsed to integrate Appian with popular enterprise software solutions. | Web Service Helper | [a!wsHttpCredentials()](/suite/help/25.3/fnc_connector_ws_a_wshttpcredentials.html) |

Constructs a WsHttpCredentials object for use with `a!wsConfig`.

 |

**a!wsHttpCredentials**(_\[username\], \[password\], \[domain\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Connector | Web Service Helper | ConnectorUsed to integrate Appian with popular enterprise software solutions. | Web Service Helper | [a!wsHttpHeaderField()](/suite/help/25.3/fnc_connector_ws_a_wshttpheaderfield.html) |

Constructs a WsHttpHeaderField object for use with `a!wsConfig`.

 |

**a!wsHttpHeaderField**(_\[name\], \[name\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Connector | Web Service Helper | ConnectorUsed to integrate Appian with popular enterprise software solutions. | Web Service Helper | [a!wsUsernameToken()](/suite/help/25.3/fnc_connector_ws_a_wsusernametoken.html) |

Constructs a WsUsernameToken object for use with `a!wsConfig`.

 |

**a!wsUsernameToken**(_\[username\], \[password\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Connector | Web Service Helper | ConnectorUsed to integrate Appian with popular enterprise software solutions. | Web Service Helper | [a!wsUsernameTokenScs()](/suite/help/25.3/fnc_connector_ws_a_wsusernametokenscs.html) |

Constructs a WsUsernameTokenScs object for use with `a!wsConfig`.

 |

**a!wsUsernameTokenScs**(_\[systemKey\], \[usePerUser\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [displayvalue()](/suite/help/25.3/fnc_conversion_displayvalue.html) |

Tries to match a value in a given array with a value at the same index in a replacement array and returns either the value at the same index or a default value if the value is not found.

 |

**displayvalue**(_\[value\], \[inArray\], \[replacement\], \[default\]_)

 | `displayvalue( 1, {0, 1, 2}, {"Low", "Medium", "High"}, "Unknown" )` | `Medium` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [externalize()](/suite/help/25.3/fnc_conversion_externalize.html) |

Converts the given value to a string representation so that it can be saved externally.

 |

**externalize**(_\[value\]_)

 | externalize(todocument(1)) |  |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [internalize()](/suite/help/25.3/fnc_conversion_internalize.html) |

Converts the given externalized string representation of a value to the original value.

 |

**internalize**(_\[externalizedText\], \[default\]_)

 | `internalize(externalize(todocument(1)))` | `[Document:1]` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [toboolean()](/suite/help/25.3/fnc_conversion_toboolean.html) |

Converts a value to Boolean.

 |

**toboolean**(_\[value\]_)

 | `toboolean(0)` | `false` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [tocommunity()](/suite/help/25.3/fnc_conversion_tocommunity.html) |

Converts a value to Community.

 |

**tocommunity**(_\[value\]_)

 | `tocommunity(1)` | `[Community:1]` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [todate()](/suite/help/25.3/fnc_conversion_todate.html) |

Converts a value to Date with Timezone.

 |

**todate**(_\[value\]_)

 | `todate(0)` | `1/1/2035` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [todatetime()](/suite/help/25.3/fnc_conversion_todatetime.html) |

Converts a value to Date and Time with Timezone.

 |

**todatetime**(_\[value\]_)

 | `todatetime(date(2005, 12, 13))` | `12/13/05 12:00 AM GMT` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [todecimal()](/suite/help/25.3/fnc_conversion_todecimal.html) |

Converts a value to Decimal (double-precision floating-point number).

 |

**todecimal**(_\[value\]_)

 | `todecimal("3.6")` | `3.6` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [todiscussionthread() \[Deprecated\]](/suite/help/25.3/fnc_conversion_todiscussionthread.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [todocument()](/suite/help/25.3/fnc_conversion_todocument.html) |

Converts a value to Document.

 |

**todocument**(_\[value\]_)

 | `todocument(1)` | `[Document:1]` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [toemailaddress()](/suite/help/25.3/fnc_conversion_toemailaddress.html) |

Converts a value to email address.

 |

**toemailaddress**(_\[value\]_)

 | `toemailaddress("john.doe"&char(64)&"company.com")` | `john.doe@company.com` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [toemailrecipient()](/suite/help/25.3/fnc_conversion_toemailrecipient.html) |

Converts a value to email recipient.

 |

**toemailrecipient**(_\[value\]_)

 | `toemailrecipient(togroup(1))` | `[Group:1]` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [tofolder()](/suite/help/25.3/fnc_conversion_tofolder.html) |

Converts a value to Folder.

 |

**tofolder**(_\[value\]_)

 | `tofolder({"1","2"})` | `[Folder:1], [Folder:2]` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [toforum() \[Deprecated\]](/suite/help/25.3/fnc_conversion_toforum.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [tointeger()](/suite/help/25.3/fnc_conversion_tointeger.html) |

Converts a value to Integer.

 |

**tointeger**(_\[value\]_)

 | `tointeger("3")` | `3` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [tointervalds()](/suite/help/25.3/fnc_conversion_tointervalds.html) |

Converts a value to Interval (Day to Second).

 |

**tointervalds**(_\[value\]_)

 | `tointervalds("11h 10m 30s")` | `111030::00:00:00.000` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [toknowledgecenter()](/suite/help/25.3/fnc_conversion_toknowledgecenter.html) |

Converts a value to Knowledge Center.

 |

**toknowledgecenter**(_\[value\]_)

 | `toknowledgecenter("2")` | `[Knowledge Center:2]` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [tomessage() \[Deprecated\]](/suite/help/25.3/fnc_conversion_tomessage.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [topage() \[Deprecated\]](/suite/help/25.3/fnc_conversion_topage.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [toportlet() \[Deprecated\]](/suite/help/25.3/fnc_conversion_toportlet.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [tostring()](/suite/help/25.3/fnc_conversion_tostring.html) |

Converts a value to Text.

 |

**tostring**(_\[value\]_)

 | `tostring(17)` | `"17"` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [totime()](/suite/help/25.3/fnc_conversion_totime.html) |

Converts a value to Time.

 |

**totime**(_\[value\]_)

 | `totime(datetime(2005, 12, 13, 12, 0, 0))` | `12:00 PM GMT` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [touniformstring()](/suite/help/25.3/fnc_conversion_touniformstring.html) |

Converts a value or list to text, preserving the original scalar or array structure.

 |

**touniformstring**(_\[value\]_)

 | `touniformstring("John Doe 1060 West Addison Chicago", "IL")` | `{"John Doe 1060 West Addison Chicago", "IL"}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Custom Fields |  | Custom FieldsUsed to create custom record fields that evaluate in real time. |  | [a!customFieldConcat()](/suite/help/25.3/fnc_crf_customfieldconcat.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function concatenates the specified values into a single value.

 |

**a!customFieldConcat**(_\[value\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf+rcrf-pr~pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Compatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Custom Fields |  | Custom FieldsUsed to create custom record fields that evaluate in real time. |  | [a!customFieldCondition()](/suite/help/25.3/fnc_crf_customfieldcondition.html) |

Used in the _whenTrue_ parameter of [a!customFieldMatch()](fnc_crf_customfieldmatch.html), this function allows you to create a condition.

 |

**a!customFieldCondition**(_\[field\], \[operator\], \[value\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf+rcrf-pr~pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Compatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Custom Fields |  | Custom FieldsUsed to create custom record fields that evaluate in real time. |  | [a!customFieldDateDiff()](/suite/help/25.3/fnc_crf_customfielddatediff.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns the difference between two dates as a Number (Integer). The difference can be returned in days, hours, minutes, or seconds. Returns null when the `startDate` or `endDate` is null or empty.

 |

**a!customFieldDateDiff**(_\[startDate\], \[endDate\], \[interval\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf+rcrf-pr~pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Compatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Custom Fields |  | Custom FieldsUsed to create custom record fields that evaluate in real time. |  | [a!customFieldDefaultValue()](/suite/help/25.3/fnc_crf_customfielddefaultvalue.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns a _default_ value when the specified _value_ is null or empty. All parameters must be of the same data type. When there are multiple default parameters, each parameter is evaluated in order and the first non-null or non-empty default will be returned.

 |

**a!customFieldDefaultValue**(_\[value\], \[default\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf+rcrf-pr~pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Compatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Custom Fields |  | Custom FieldsUsed to create custom record fields that evaluate in real time. |  | [a!customFieldDivide()](/suite/help/25.3/fnc_crf_customfielddivide.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns the results of dividing two numbers. You can use record fields, related record fields, or literal values of type Number (Integer) or Number (Decimal) in your calculation.

 |

**a!customFieldDivide**(_\[numerator\], \[denominator\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf+rcrf-pr~pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Compatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Custom Fields |  | Custom FieldsUsed to create custom record fields that evaluate in real time. |  | [a!customFieldLogicalExpression()](/suite/help/25.3/fnc_crf_customfieldlogicalexpression.html) |

Used in the _whenTrue_ parameter of [a!customFieldMatch()](fnc_crf_customfieldmatch.html), this function allows you to group multiple logical conditions using the `"AND"` and `"OR"` operators.

 |

**a!customFieldLogicalExpression**(_\[operator\], \[conditions\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf+rcrf-pr~pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Compatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Custom Fields |  | Custom FieldsUsed to create custom record fields that evaluate in real time. |  | [a!customFieldMatch()](/suite/help/25.3/fnc_crf_customfieldmatch.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function evaluates the _value_ parameter against multiple conditions and returns a value based on a match. If no match is found, the _default_ parameter is returned.

 |

**a!customFieldMatch**(_\[value\], \[equals\], \[whenTrue\], \[then\], \[default\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf+rcrf-pr~pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Compatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Custom Fields |  | Custom FieldsUsed to create custom record fields that evaluate in real time. |  | [a!customFieldMultiply()](/suite/help/25.3/fnc_crf_customfieldmultiply.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns the result of multiplying a series of values. You can multiply record fields, related record fields, or literal values of type Number (Integer) or Number (Decimal).

 |

**a!customFieldMultiply**(_\[value\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf+rcrf-pr~pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Compatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Custom Fields |  | Custom FieldsUsed to create custom record fields that evaluate in real time. |  | [a!customFieldSubtract()](/suite/help/25.3/fnc_crf_customfieldsubtract.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns the difference between two numbers. You can subtract record fields, related record fields, or literal values of type Number (Integer) or Number (Decimal).

 |

**a!customFieldSubtract**(_\[value1\], \[value2\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf+rcrf-pr~pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Compatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Custom Fields |  | Custom FieldsUsed to create custom record fields that evaluate in real time. |  | [a!customFieldSum()](/suite/help/25.3/fnc_crf_customfieldsum.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns a sum of values. You can calculate the sum of record fields, related record fields, or literal values of type Number (Integer) or Number (Decimal).

 |

**a!customFieldSum**(_\[value\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf+rcrf-pr~pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Compatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [a!addDateTime()](/suite/help/25.3/fnc_date_and_time_adddatetime.html) |

Adds the specified increments of time to the _startDateTime_ and returns a date and time value. You can select a [process calendar](Process_Calendar_Settings.html) to ensure the return value falls within the specified working days and time.

 |

**a!addDateTime**(_\[startDateTime\], \[years\], \[months\], \[days\], \[hours\], \[minutes\], \[seconds\], \[useProcessCalendar\], \[processCalendarName\]_)

 | `a!addDateTime(startDateTime: datetime(2000,1,1,0,0,0), months: 1, days: 1, hours: 1, minutes: 1, seconds: 1)` | `2/2/2000 1:01 AM GMT+00:00` |

`+portal+om+crf-rcrf-pr~pe~pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [caladddays() \[Deprecated\]](/suite/help/25.3/fnc_date_and_time_caladddays.html) |

This function adds a given number of working days as designated on the process calendar to a Date and Time value, and returns a Date and Time value that falls within the work time defined in the process calendar.

 |

**caladddays**(_\[start\_datetime\], \[number\], \[calendar\_name\]_)

 | `caladddays(datetime(2011, 12, 13, 12, 0, 0), 0)` | `12/13/2011 12:00 PM GMT` |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [caladdhours() \[Deprecated\]](/suite/help/25.3/fnc_date_and_time_caladdhours.html) |

This function adds a given number of hours to a Date and Time plus any non-working hours (as designated on the process calendar) and returns the resulting Date and Time.

 |

**caladdhours**(_\[start\_datetime\], \[number\], \[calendar\_name\]_)

 | `caladdhours(datetime(2011, 12, 13, 12, 0, 0), 12)` | `12/14/2011 4:00 PM GMT` |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [calisworkday()](/suite/help/25.3/fnc_date_and_time_calisworkday.html) |

This returns whether or not the given Date and Time is a work day, according to the calendar defined for the system.

 |

**calisworkday**(_\[datetime\], \[calendar\_name\]_)

 | `calisworkday(datetime(2011, 12, 13, 12, 0, 0))` | `true` |

`+portal-om+crf-rcrf+pr+pe~pa` Compatible Portals
Incompatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Partially compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [calisworktime()](/suite/help/25.3/fnc_date_and_time_calisworktime.html) |

This returns whether or not the given Date and Time is within working hours, according to the calendars defined for the system.

 |

**calisworktime**(_\[datetime\], \[calendar\_name\]_)

 | `calisworktime(datetime(2011, 12, 13, 12, 0, 0))` | `true` |

`+portal-om+crf-rcrf+pr+pe~pa` Compatible Portals
Incompatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Partially compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [calworkdays()](/suite/help/25.3/fnc_date_and_time_calworkdays.html) |

This returns the actual number of work days between two Date and Times (both inclusive), according to the calendar defined for the system.

 |

**calworkdays**(_\[start\_datetime\], \[end\_datetime\], \[calendar\_name\]_)

 | `calworkdays(datetime(2011, 12, 13, 12, 0, 0), datetime(2011, 12, 20, 12, 0, 0))` | `6` |

`+portal-om+crf-rcrf+pr+pe~pa` Compatible Portals
Incompatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Partially compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [calworkhours()](/suite/help/25.3/fnc_date_and_time_calworkhours.html) |

This returns the actual number of work hours between two given Date and Times (both inclusive), according to the calendar defined for the system.

 |

**calworkhours**(_\[start\_datetime\], \[end\_datetime\], \[calendar\_name\]_)

 | `calworkhours(datetime(2011, 12, 12, 12, 0, 0), datetime(2011, 12, 13, 12, 0, 0))` | `8` |

`+portal-om+crf-rcrf+pr+pe~pa` Compatible Portals
Incompatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Partially compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [date()](/suite/help/25.3/fnc_date_and_time_date.html) |

Converts text into data accepted by the date data type and functions that require date parameters.

 |

**date**(_\[year\], \[month\], \[day\]_)

 | `date(2011, 12, 13)` | `12/13/2011` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [datetime()](/suite/help/25.3/fnc_date_and_time_datetime.html) |

Converts the given Date and Time into a serial number that holds the Date and Time data type.

 |

**datetime**(_\[year\], \[month\], \[day\], \[hour\], \[minute\], \[second\]_)

 | `datetime(2011, 12, 13, 12, 0, 0)` | `12/13/2011 12:00 PM GMT` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [datevalue()](/suite/help/25.3/fnc_date_and_time_datevalue.html) |

Converts a value to a date.

 |

**datevalue**(_\[value\]_)

 | `datevalue(0)` | `1/1/2035` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [day()](/suite/help/25.3/fnc_date_and_time_day.html) |

Returns the day of the month from the date specified.

 |

**day**(_\[date\]_)

 | `day(datetime(2011, 12, 13, 12, 0, 0))` | `13` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [dayofyear()](/suite/help/25.3/fnc_date_and_time_dayofyear.html) |

Returns the day number within the year.

 |

**dayofyear**(_\[date\]_)

 | `dayofyear(date(1957, 03, 14))` | `73` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [days360()](/suite/help/25.3/fnc_date_and_time_days360.html) |

Returns the number of days between two dates, based on a 360-day calendar.

 |

**days360**(_\[start\_date\], \[end\_date\], \[method\]_)

 | `days360(today(), today() + 365, 0)` | `360` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [daysinmonth()](/suite/help/25.3/fnc_date_and_time_daysinmonth.html) |

Returns the number of days in the given month in the given year.

 |

**daysinmonth**(_\[month\], \[year\]_)

 | `daysinmonth(2, 1800)` | `28` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [edate()](/suite/help/25.3/fnc_date_and_time_edate.html) |

Returns the date that is the number of months before or after the given starting date.

 |

**edate**(_\[starting\_date\], \[months\]_)

 | `edate(date(2011, 12, 13), -6)` | `6/13/11` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [eomonth()](/suite/help/25.3/fnc_date_and_time_eomonth.html) |

Returns the date for the last day of the month that is the number of months before or after the given starting date.

 |

**eomonth**(_\[starting\_date\], \[months\]_)

 | `eomonth(date(2011, 12, 13), -6)` | `6/30/2011` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [gmt()](/suite/help/25.3/fnc_date_and_time_gmt.html) |

Subtracts a time zone offset from a given Date and Time.

 |

**gmt**(_\[datetime\], \[timezone\]_)

 | `gmt(datetime(2011, 12, 13, 12, 05), "America/New_York")` | `12/13/2011 5:05 PM GMT` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [hour()](/suite/help/25.3/fnc_date_and_time_hour.html) |

Returns the hour from the time specified.

 |

**hour**(_\[time\]_)

 | `hour(time(14, 20, 23))` | `14` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [intervalds()](/suite/help/25.3/fnc_date_and_time_intervalds.html) |

Converts the given time components into an equivalent time duration, an interval expressing days to seconds. This value is treated as a duration (Joe ran the marathon in 3 hours and 23 minutes), not a point in time.

 |

**intervalds**(_\[hour\], \[minute\], \[second\]_)

 | `intervalds(2, 4, 5)` | `0::02:04:05.000` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [isleapyear()](/suite/help/25.3/fnc_date_and_time_isleapyear.html) |

Returns a Boolean value for whether the given year is a leap year.

 |

**isleapyear**(_\[year\]_)

 | `isleapyear(1996)` | `True` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [lastndays()](/suite/help/25.3/fnc_date_and_time_lastndays.html) |

Returns a Boolean value for whether the given date is within the last given number of days.

 |

**lastndays**(_\[date\], \[n\]_)

 | `lastndays(date(2011, 12, 13), 6)` | `False` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [local()](/suite/help/25.3/fnc_date_and_time_local.html) |

This is a Date and Time _addition_ function, adding time zone offset to given Date and Time.

 |

**local**(_\[datetime\], \[timezone\]_)

 | `local(datetime(2011, 12, 13, 12, 05), "America/New_York")` | `12/13/2011 7:05 AM GMT` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [milli()](/suite/help/25.3/fnc_date_and_time_milli.html) |

This function returns the millisecond portion of a timestamp or the decimal number that represents 1 millisecond in days.

 |

**milli**(_\[time\]_)

 | `milli(datetime(2011, 12, 13, 12, 0, 0, 25))` | `25` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [minute()](/suite/help/25.3/fnc_date_and_time_minute.html) |

Returns the minute from the time specified.

 |

**minute**(_\[time\], \[minute\]_)

 | `minute(time(14, 20, 23))` | `20` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [month()](/suite/help/25.3/fnc_date_and_time_month.html) |

Returns the month from the specified date.

 |

**month**(_\[date\]_)

 | `month(date(2011, 12, 13))` | `12` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [networkdays()](/suite/help/25.3/fnc_date_and_time_networkdays.html) |

Returns the number of working days between two specified dates.

 |

**networkdays**(_\[starting\_date\], \[ending\_date\], \[holidays\]_)

 | `networkdays(date(2011, 12, 13), date(2011, 12, 20))` | `6` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [now()](/suite/help/25.3/fnc_date_and_time_now.html) |

Returns the current Date and Time as a serial number.

 |

**now**(_\[\]_)

 | `now()` | `2/2/2022 2:02 PM` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [second()](/suite/help/25.3/fnc_date_and_time_second.html) |

Returns the seconds from the specified time.

 |

**second**(_\[time\]_)

 | `second(time(14, 20, 23))` | `23` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [a!subtractDateTime()](/suite/help/25.3/fnc_date_and_time_subtractdatetime.html) |

Subtracts the specified increments of time from the _startDateTime_ and returns a date and time value. You can select a [process calendar](Process_Calendar_Settings.html) to ensure the return value falls within the specified working days and time.

 |

**a!subtractDateTime**(_\[startDateTime\], \[years\], \[months\], \[days\], \[hours\], \[minutes\], \[seconds\], \[useProcessCalendar\], \[processCalendarName\]_)

 | `a!subtractDateTime(startDateTime: datetime(2001, 1, 1, 0, 0, 0), months: 1, days: 1, hours: 1, minutes: 1, seconds: 1)` | `11/29/2000 10:58 PM GMT+00:00` |

`+portal+om+crf-rcrf-pr~pe~pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [time()](/suite/help/25.3/fnc_date_and_time_time.html) |

Converts the given time into an equivalent time value.

 |

**time**(_\[hour\], \[minute\], \[second\], \[millisecond\]_)

 | `time(14, 20, 23)` | `2:20 PM` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [timevalue()](/suite/help/25.3/fnc_date_and_time_timevalue.html) |

Converts the given time into an equivalent interval.

 |

**timevalue**(_\[time\_text\]_)

 | `timevalue(time(14, 20, 23))` | `2:20 PM` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [timezone()](/suite/help/25.3/fnc_date_and_time_timezone.html) |

Returns the default offset in minutes from GMT, which is generally the process initiator's time zone.

 |

**timezone**(_\[\]_)

 | `timezone()` | `0` |

`+portal-om+crf-rcrf+pr+pe+pa` Compatible Portals
Incompatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [timezoneid()](/suite/help/25.3/fnc_date_and_time_timezoneid.html) |

Returns the time zone ID for the current context.

 |

**timezoneid**(_\[\]_)

 | `timezoneid()` | `GMT` |

`+portal-om+crf-rcrf+pr+pe+pa` Compatible Portals
Incompatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [today()](/suite/help/25.3/fnc_date_and_time_today.html) |

Returns the current day in GMT.

 |

**today**(_\[\]_)

 | `today()` | `2/2/2022` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [weekday()](/suite/help/25.3/fnc_date_and_time_weekday.html) |

Returns the day of the week of the specified date.

 |

**weekday**(_\[date\], \[return\_type\]_)

 | `weekday(date(2011, 12, 13))` | `3` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [weeknum()](/suite/help/25.3/fnc_date_and_time_weeknum.html) |

Returns the week number within the year for the given date using a given methodology.

 |

**weeknum**(_\[date\], \[methodology\]_)

 | `weeknum(date(2011, 12, 13))` | `51` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [workday()](/suite/help/25.3/fnc_date_and_time_workday.html) |

Returns the date the given number of workdays before or after the given date.

 |

**workday**(_\[starting\_date\], \[days\], \[holidays\]_)

 | `workday(date(2011, 12, 13), -6)` | `12/5/2011` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [year()](/suite/help/25.3/fnc_date_and_time_year.html) |

Returns the year for the date specified.

 |

**year**(_\[date\]_)

 | `year(date(2011, 12, 13))` | `2011` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Date and Time |  | Date and TimeUsed within an expressions for date, time, or date and time values. |  | [yearfrac()](/suite/help/25.3/fnc_date_and_time_yearfrac.html) |

Determine the fraction of the year.

 |

**yearfrac**(_\[start\_date\], \[end\_date\], \[method\]_)

 | `yearfrac(today(), today() + 270, 3)` | `0.739726` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 | Document Management | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. | Document Management | [a!docExtractionResult() \[Deprecated\]](/suite/help/25.3/fnc_docManagement_a_docExtractionResult.html) |

Retrieves results from a doc extraction run started by the Start Doc Extraction Smart Service.

 |

**a!docExtractionResult**(_\[docExtractionId\], \[typeNumber\], \[confidenceThreshold\], \[isStructuredDoc\]_)

 | `a!docExtractionResult(docExtractionId:5)` | `ANYTYPEDATACDT` |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 | Document Management | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. | Document Management | [a!docExtractionStatus() \[Deprecated\]](/suite/help/25.3/fnc_docManagement_a_docExtractionStatus.html) |

Retrieves the status of a doc extraction run started by the Start Doc Extraction Smart Service.

 |

**a!docExtractionStatus**(_\[docExtractionId\]_)

 | `a!docExtractionStatus(docExtractionId:5)` | `IN_PROGRESS` |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Evaluation |  | EvaluationUsed in expression to perform complex evaluations. |  | [a!asyncVariable()](/suite/help/25.3/fnc_evaluation_a_asyncvariable.html) |

Use in [a!localVariables()](fnc_evaluation_a_localvariables.html) to load data asynchronously and configure refresh behavior for local variables that take more than 500 ms to load. Components that depend on the local variable will show a placeholder until the data is ready. To control the refresh behavior without loading the data asynchronously, use [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html). When used outside of an interface, the refresh parameters are ignored and the variable doesn’t load asynchronously.

 |

**a!asyncVariable**(_\[value\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[refreshAfter\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Evaluation |  | EvaluationUsed in expression to perform complex evaluations. |  | [a!controlPanelRecords()](/suite/help/25.3/fnc_evaluation_a_controlPanelRecords.html) |

Function that either creates a map or returns the data for an individual record in the base record type for a control panel.

 |

**a!controlPanelRecords**(_\[controlPanel\], \[record\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Evaluation |  | EvaluationUsed in expression to perform complex evaluations. |  | [a!localVariables()](/suite/help/25.3/fnc_evaluation_a_localvariables.html) |

Lets you define one or more local variables for use within an expression. When used within an interface, the value of each variable can be refreshed under a variety of conditions, configured using a!refreshVariable(). When used outside of an interface, all refresh properties configured using a!refreshVariable() are ignored.

 |

**a!localVariables**(_\[localVar1\], \[localVarN\], \[expression\]_)

 | Click on the function name for examples. |  |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Evaluation |  | EvaluationUsed in expression to perform complex evaluations. |  | [a!refreshVariable()](/suite/help/25.3/fnc_evaluation_a_refreshvariable.html) |

The configuration for a specific local variable for use within a!localVariables(). When used within an interface, the value of the variable can be refreshed under a variety of conditions. When used outside of an interface, all refresh properties are ignored.

 |

**a!refreshVariable**(_\[value\], \[refreshAlways\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[refreshAfter\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Evaluation |  | EvaluationUsed in expression to perform complex evaluations. |  | [bind()](/suite/help/25.3/fnc_evaluation_bind.html) |

Use in conjunction with the load function to bind getter and setter functions to a variable. When the variable is read, the getter function or rule will be called. When the variable is saved into, the writer returned by the setter function or rule will be called. The setter function must return a writer.

 |

**bind**(_\[get\], \[set\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Evaluation |  | EvaluationUsed in expression to perform complex evaluations. |  | [load()](/suite/help/25.3/fnc_evaluation_load.html)

Replaced by [a!localVariables()](/suite/help/25.3/fnc_evaluation_a_localvariables.html)

 |

Lets you define local variables within an expression for an interface and evaluate the expression with the new variables, then re-evaluate the function with the local variables' values from the previous evaluation.

 |

**load**(_\[localVar1\], \[localVarN\], \[expression\]_)

 | Click on the function name for examples. |  |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Evaluation |  | EvaluationUsed in expression to perform complex evaluations. |  | [a!save()](/suite/help/25.3/fnc_evaluation_save.html) |

In interface saveInto parameters, updates the target with the given value. Use a!save for each item that you want to modify or alter in a `saveInto` parameter. This function has no effect when called outside of a component's saveInto parameter.

 |

**a!save**(_\[target\], \[value\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Evaluation |  | EvaluationUsed in expression to perform complex evaluations. |  | [with()](/suite/help/25.3/fnc_evaluation_with.html)

Replaced by [a!localVariables()](/suite/help/25.3/fnc_evaluation_a_localvariables.html)

 |

Lets you define local variables within a function and evaluate the expression with the new variables.

 |

**with**(_\[localVar1\], \[localVarN\], \[expression\]_)

 | `with(local!a:10, local!b:20, local!a+local!b)` | `30` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [a!automationId()](/suite/help/25.3/fnc_informational_a_automationid.html) |

Returns the automation identifier for the automation type provided. Use this function to write the automation identifier for record events.

 |

**a!automationId**(_\[automationTypes\]_)

 | `a!automationId("RPA")` | `2` |

`-portal-om-crf-rcrf-pr~pe+pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [a!automationType()](/suite/help/25.3/fnc_informational_a_automationtype.html) |

Returns the automation type for the automation identifier provided, translated according to the user’s language preferences.

 |

**a!automationType**(_\[automationIds\]_)

 | `a!automationType(1)` | `None (User)` |

`-portal-om-crf-rcrf-pr~pe+pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [a!defaultValue()](/suite/help/25.3/fnc_informational_a_defaultvalue.html) |

Returns a default value when the specified value is null or empty. When there are multiple _default_ parameters, each parameter is evaluated in order and the first non-null and non-empty _default_ will be returned. `Null`, `""`, and `{}` are all considered null or empty values.

 |

**a!defaultValue**(_\[value\], \[default\]_)

 | `a!defaultValue( null, date(2021,10,1), null)` | `` `2021-10-01` `` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [a!keys()](/suite/help/25.3/fnc_informational_a_keys.html) |

Returns the keys of the provided map, dictionary, CDT, or record.

 |

**a!keys**(_\[value\]_)

 | `a!keys(value: a!map(a: 1, b: 2))` | `{"a", "b"}` |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [a!listType()](/suite/help/25.3/fnc_informational_a_listtype.html) |

Returns the list type number for a given type number.

 |

**a!listType**(_\[typeNumber\]_)

 | a!listType(typeof(1)) |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [byReference() \[Deprecated\]](/suite/help/25.3/fnc_informational_byreference.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Conversion |  | ConversionUsed to cast data from one data type into another. |  | [cast()](/suite/help/25.3/fnc_informational_cast.html) |

Converts a value from its existing type to the specified type.

 |

**cast**(_\[typeNumber\], \[value\]_)

 | `cast(type!Date,"01-01-2017")` | `1/1/2017` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [error()](/suite/help/25.3/fnc_informational_error.html) |

Raises an error with the given message, used for invalidating execution.This function never returns a value.

 |

**error**(_\[message\]_)

 | `error("This is an error message.")` | `Expression evaluation error at function 'error': This is an error message.` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [infinity()](/suite/help/25.3/fnc_informational_infinity.html) |

Represents a constant number that stands for positive infinity or a negative infinity if you negate the value.

 |

**infinity**(_\[\]_)

 | `infinity()` | `∞` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [isinfinite()](/suite/help/25.3/fnc_informational_isinfinite.html) |

Tests given numbers against positive and negative infinity, returning `true` if the number is infinite, `false` if the number is not infinite.

 |

**isinfinite**(_\[number\]_)

 | `isinfinite(1.5, 1.1)` | `false; false` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [isnegativeinfinity()](/suite/help/25.3/fnc_informational_isnegativeinfinity.html) |

Tests given numbers against negative infinity, returning true if number is negative infinity, false if number is not negative infinity.

 |

**isnegativeinfinity**(_\[number\]_)

 | `isnegativeinfinity(1)` | `false` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [a!isNotNullOrEmpty()](/suite/help/25.3/fnc_informational_isnotnullorempty.html) |

Returns `false` if the value is null, an empty string, or an empty list. Otherwise returns `true`.

 |

**a!isNotNullOrEmpty**(_\[value\]_)

 |  |  |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [isnull()](/suite/help/25.3/fnc_informational_isnull.html) |

Returns true if value is null, false otherwise.

 |

**isnull**(_\[value\]_)

 | `isnull("")` | `true` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [a!isNullOrEmpty()](/suite/help/25.3/fnc_informational_isnullorempty.html) |

Returns `true` if the value is null, an empty string, or an empty list. Otherwise returns `false`.

 |

**a!isNullOrEmpty**(_\[value\]_)

 |  |  |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [ispositiveinfinity()](/suite/help/25.3/fnc_informational_ispositiveinfinity.html) |

Tests given numbers against positive infinity, returning `true` if the numbers are positive infinity, false if the numbers are not positive infinity.

 |

**ispositiveinfinity**(_\[number\]_)

 | `ispositiveinfinity(1)` | `false` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [nan()](/suite/help/25.3/fnc_informational_nan.html) |

Constant number representing Not A Number, generally used for comparison to the result of mathematical operations with invalid inputs. This is equivalent to a decimal (floating point) null, but nan() is provided for more explicit usage in mathematical expressions.

 |

**nan**(_\[\]_)

 | `nan()` | `null` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [null()](/suite/help/25.3/fnc_informational_null.html) |

Returns a null value.

 |

**null**(_\[value\]_)

 | `null()` | `null` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [runtimetypeof()](/suite/help/25.3/fnc_informational_runtimetypeof.html) |

Returns the numerical representation of an Appian system data type when used during process execution.

 |

**runtimetypeof**(_\[value\]_)

 | `runtimetypeof( 12345)` | `9` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [a!submittedOfflineTaskIds()](/suite/help/25.3/fnc_informational_submittedofflinetaskids.html) |

In an offline interface in Appian Mobile, returns a list of offline tasks ids that the user has submitted since their last data sync. If evaluated anywhere else, returns an empty list. Use this to automatically remove tasks from an offline task report after a user submits them.

 |

**a!submittedOfflineTaskIds**(_\[\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr~pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [typename()](/suite/help/25.3/fnc_informational_typename.html) |

Returns the type name of a given type number.

 |

**typename**(_\[typeNumber\]_)

 | `typename(typeof(1))` | `Number (Integer)` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Informational |  | InformationalUsed within expressions to expose system values and translate other information. |  | [typeof()](/suite/help/25.3/fnc_informational_typeof.html) |

Returns the type number of a given value.

 |

**typeof**(_\[value\]_)

 | `typeof("a")` | `3` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Logical |  | LogicalUsed within expressions to derive logical results. |  | [and()](/suite/help/25.3/fnc_logical_and.html) |

Returns `true` if all inputs are `true`; returns `false` if at least one input is false.

 |

**and**(_\[value\]_)

 | `and(true(), false())` | `false` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Logical |  | LogicalUsed within expressions to derive logical results. |  | [choose()](/suite/help/25.3/fnc_logical_choose.html)

Replaced by [a!match()](/suite/help/25.3/fnc_logical_match.html)

 |

Evaluates the `choice` argument at the given `index` and returns the result.

 |

**choose**(_\[key\], \[choice1\], \[choiceN\]_)

 | `choose(2, "a", "b", "c")` | `b` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Logical |  | LogicalUsed within expressions to derive logical results. |  | [false()](/suite/help/25.3/fnc_logical_false.html) |

Returns the Boolean value `false`.

 |

**false**(_\[returns\]_)

 | `false()` | `false` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Logical |  | LogicalUsed within expressions to derive logical results. |  | [if()](/suite/help/25.3/fnc_logical_if.html) |

Returns `valueIfTrue` if `condition` returns `true`; returns `valueIfFalse` otherwise.

 |

**if**(_\[condition\], \[valueIfTrue\], \[valueIfFalse\]_)

 | `if(isleapyear(2021), 1, 2)` | `2` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Logical |  | LogicalUsed within expressions to derive logical results. |  | [a!match()](/suite/help/25.3/fnc_logical_match.html) |

Evaluates the _value_ against multiple conditions and returns a value based on a match. If no match is found, the _default_ is returned. For example, if "a" then "b" else "c".

 |

**a!match**(_\[value\], \[equals\], \[whenTrue\], \[then\], \[default\]_)

 | Click on the function name for examples. |  |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Logical |  | LogicalUsed within expressions to derive logical results. |  | [not()](/suite/help/25.3/fnc_logical_not.html) |

Converts `true` into `false`, and `false` into `true`.

 |

**not**(_\[value\]_)

 | `not(true(), false())` | `false, true` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Logical |  | LogicalUsed within expressions to derive logical results. |  | [or()](/suite/help/25.3/fnc_logical_or.html) |

Returns `true` if any inputs are `true`; returns `false` if all inputs are `false`.

 |

**or**(_\[value\]_)

 | `or(true(), false())` | `true` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Logical |  | LogicalUsed within expressions to derive logical results. |  | [true()](/suite/help/25.3/fnc_logical_true.html) |

Returns the Boolean value `true`.

 |

**true**(_\[returns\]_)

 | `true()` | `true` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Looping |  | LoopingUsed within expressions to perform operations that call a rule or function for each item in an array. |  | [a!forEach()](/suite/help/25.3/fnc_looping_a_foreach.html) |

Evaluates an expression for each item in a list and returns a new array of the results.

 |

**a!forEach**(_\[items\], \[expression\]_)

 | `a!forEach(items: {1, 2, 3}, expression: fv!item + 10)` | `{11, 12, 13}` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Looping |  | LoopingUsed within expressions to perform operations that call a rule or function for each item in an array. |  | [all()](/suite/help/25.3/fnc_looping_all.html) |

Calls a rule or function that returns either true or false for each item in list, asks the question, "Do all items in this list yield true for this rule/function?", and returns true if all items in list evaluates to true.

 |

**all**(_\[predicate\], \[list\], \[context\]_)

 | `all(fn!isnull, {10, null, 30})` | `false` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Looping |  | LoopingUsed within expressions to perform operations that call a rule or function for each item in an array. |  | [any()](/suite/help/25.3/fnc_looping_any.html) |

Calls a rule or function that returns either true or false for each item in list by asking the question, "Do any items in this list yield true for this rule/function?" with the intent to discover if any item(s) yield true.

 |

**any**(_\[predicate\], \[list\], \[context\]_)

 | `any(fn!isnull, {10, null, 30})` | `true` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Looping |  | LoopingUsed within expressions to perform operations that call a rule or function for each item in an array. |  | [apply()](/suite/help/25.3/fnc_looping_apply.html)

Replaced by [a!forEach()](/suite/help/25.3/fnc_looping_a_foreach.html)

 |

Calls a rule or function for each item in a list, and provides any contexts specified.

 |

**apply**(_\[function\], \[list\], \[context\]_)

 | `apply(fn!sum, {-1, 2, 3}, 2)` | `{1, 4, 5}` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Looping |  | LoopingUsed within expressions to perform operations that call a rule or function for each item in an array. |  | [filter()](/suite/help/25.3/fnc_looping_filter.html) |

Calls a predicate for each item in a list and returns any items for which the returned value is true.

 |

**filter**(_\[predicate\], \[list\], \[context\]_)

 | `filter(fn!isleapyear, {2015, 2016, 2017})` | `{2016}` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Looping |  | LoopingUsed within expressions to perform operations that call a rule or function for each item in an array. |  | [merge()](/suite/help/25.3/fnc_looping_merge.html) |

Takes a variable number of lists and merges them into a single list (or a list of lists) that is the size of the largest list provided.

 |

**merge**(_\[list\]_)

 | `merge({10, 20}, {30, 40})` | `{{10, 30}, {20, 40}}` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Looping |  | LoopingUsed within expressions to perform operations that call a rule or function for each item in an array. |  | [none()](/suite/help/25.3/fnc_looping_none.html) |

Calls a rule or function that returns either true or false for each item in list by asking the question, "Do all items in this list yield false for this rule/function?" with the intent to discover if no items will yield true.

 |

**none**(_\[predicate\], \[list\], \[context\]_)

 | `none(fn!isnull, {1, null, 3})` | `false` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Looping |  | LoopingUsed within expressions to perform operations that call a rule or function for each item in an array. |  | [reduce()](/suite/help/25.3/fnc_looping_reduce.html) |

Calls a rule or function for each item in a list, passing the result of each call to the next one, and returns the value of the last computation.

 |

**reduce**(_\[function\], \[initial\], \[list\], \[context\]_)

 | `reduce(fn!sum, 1, {2, 3, 4})` | `10` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Looping |  | LoopingUsed within expressions to perform operations that call a rule or function for each item in an array. |  | [reject()](/suite/help/25.3/fnc_looping_reject.html) |

Calls a predicate for each item in a list, rejects any items for which the returned value is true, and returns all remaining items.

 |

**reject**(_\[predicate\], \[list\], \[context\]_)

 | `reject(fn!isnull, {1, null, 3})` | `{1, 3}` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [abs()](/suite/help/25.3/fnc_mathematical_abs.html) |

Returns the absolute value(s) of the specified number(s).

 |

**abs**(_\[number\]_)

 | `abs(-1)` | `1` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [ceiling()](/suite/help/25.3/fnc_mathematical_ceiling.html) |

Rounds the number up to the nearest multiple of the specified significance.

 |

**ceiling**(_\[number\], \[significance\]_)

 | `ceiling(1.6)` | `2` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [combin()](/suite/help/25.3/fnc_mathematical_combin.html) |

Calculates the number of unique ways to choose m elements from a pool of n elements.

 |

**combin**(_\[n\], \[m\]_)

 | `combin(4, 2)` | `6` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [a!distanceBetween()](/suite/help/25.3/fnc_mathematical_distanceBetween.html) |

Returns the distance between the two locations (in meters) specified by the start and end coordinates. The distance is calculated by tracing a line between the two locations that follows the curvature of the Earth, and measuring the length of the resulting arc.

 |

**a!distanceBetween**(_\[startLatitude\], \[startLongitude\], \[endLatitude\], \[endLongitude\]_)

 | `a!distanceBetween(startLatitude: 38.932290, startLongitude: -77.218490, endLatitude: 38.963058, endLongitude: -77.363701)` | `13015.34` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [e()](/suite/help/25.3/fnc_mathematical_e.html) |

Returns the value of e.

 |

**e**(_\[\]_)

 | `e()` | `2.718282` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [enumerate()](/suite/help/25.3/fnc_mathematical_enumerate.html) |

Returns a list of integer numbers from 0 through n-1.

 |

**enumerate**(_\[n\]_)

 | `enumerate(5)` | `0, 1, 2, 3, 4` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [even()](/suite/help/25.3/fnc_mathematical_even.html) |

Rounds positive numbers up to nearest even integer and negative numbers down to the nearest even integer.

 |

**even**(_\[number\]_)

 | `even(5)` | `6` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [exp()](/suite/help/25.3/fnc_mathematical_exp.html) |

Returns e raised to the specified power.

 |

**exp**(_\[power\]_)

 | `exp(2)` | `7.389056` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [fact()](/suite/help/25.3/fnc_mathematical_fact.html) |

The factorial of specified number.

 |

**fact**(_\[number\]_)

 | `fact(4)` | `24` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [factdouble()](/suite/help/25.3/fnc_mathematical_factdouble.html) |

The double factorial of specified number (mathematically n!!).

 |

**factdouble**(_\[number\]_)

 | `factdouble(3)` | `3` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [floor()](/suite/help/25.3/fnc_mathematical_floor.html) |

Rounds the number down to the nearest multiple of the specified significance.

 |

**floor**(_\[number\], \[significance\]_)

 | `floor(2.8888, .01)` | `2.88` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [int()](/suite/help/25.3/fnc_mathematical_int.html) |

Rounds the specified number down to the nearest integer.

 |

**int**(_\[number\]_)

 | `int(2.8888)` | `2` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [ln()](/suite/help/25.3/fnc_mathematical_ln.html) |

Returns the natural logarithm of the specified number, which is the power that e must be raised to in order to equal the specified number.

 |

**ln**(_\[number\]_)

 | `ln(e())` | `1` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [log()](/suite/help/25.3/fnc_mathematical_log.html) |

Returns the logarithm of the number using the specified base, which is the power that base must be raised to, to equal the number.

 |

**log**(_\[number\], \[base\]_)

 | `log(25, 5)` | `2` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [mod()](/suite/help/25.3/fnc_mathematical_mod.html) |

Returns the remainder of dividend when divided by the divisor.

 |

**mod**(_\[dividend\], \[divisor\]_)

 | `mod(40, 15)` | `10` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [mround()](/suite/help/25.3/fnc_mathematical_mround.html) |

Rounds the number to the specified multiple.

 |

**mround**(_\[number\], \[multiple\]_)

 | `mround(2.8888, .01)` | `2.89` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [multinomial()](/suite/help/25.3/fnc_mathematical_multinomial.html) |

Adds the specified integers and divides the factorial of the sum by the factorial of the individual numbers.

 |

**multinomial**(_\[integer\]_)

 | `multinomial(1, 2, 3)` | `60` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [odd()](/suite/help/25.3/fnc_mathematical_odd.html) |

Rounds positive numbers up to nearest odd integer and negative numbers down to the nearest odd integer.

 |

**odd**(_\[number\]_)

 | `odd(10)` | `11` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [pi()](/suite/help/25.3/fnc_mathematical_pi.html) |

Returns the value of pi.

 |

**pi**(_\[\]_)

 | `pi()` | `3.141593` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [power()](/suite/help/25.3/fnc_mathematical_power.html) |

Returns the base number raised to the specified exponent.

 |

**power**(_\[base\], \[exponent\]_)

 | `power(10, 2)` | `100` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [product()](/suite/help/25.3/fnc_mathematical_product.html) |

Returns the product of the specified numbers.

 |

**product**(_\[factor\]_)

 | `product(10, 2)` | `20` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [quotient()](/suite/help/25.3/fnc_mathematical_quotient.html) |

Returns the quotient when numerator is divided by the denominator, and drops the remainder.

 |

**quotient**(_\[numerator\], \[denominator\]_)

 | `quotient(20, 10)` | `2` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [rand()](/suite/help/25.3/fnc_mathematical_rand.html) |

Returns a random number between 0 and 1 based on an even probability distribution, which is seeded by the transaction time.

 |

**rand**(_\[count\]_)

 | `rand()` | `0.4506349` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [round()](/suite/help/25.3/fnc_mathematical_round.html) |

Rounds off the number to the specified number of digits.

 |

**round**(_\[number\], \[num\_digits\]_)

 | `round(2.8888, 2)` | `2.89` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [rounddown()](/suite/help/25.3/fnc_mathematical_rounddown.html) |

Rounds the number down to the specified digit.

 |

**rounddown**(_\[number\], \[num\_digits\]_)

 | `round(2.8888, 2)` | `2.88` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [roundup()](/suite/help/25.3/fnc_mathematical_roundup.html) |

Rounds the number up to the specified digit.

 |

**roundup**(_\[number\], \[num\_digits\]_)

 | `round(2.8888, 2)` | `2.89` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [sign()](/suite/help/25.3/fnc_mathematical_sign.html) |

Returns the number divided by its absolute value, which is 1 if the number is positive and -1 if the number is negative.

 |

**sign**(_\[number\]_)

 | `sign(-10)` | `-1` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [sqrt()](/suite/help/25.3/fnc_mathematical_sqrt.html) |

Returns the square root(s) of the specified number(s).

 |

**sqrt**(_\[number\]_)

 | `sqrt(25)` | `5` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [sqrtpi()](/suite/help/25.3/fnc_mathematical_sqrtpi.html) |

Multiplies the number by pi, then returns the square root of the product.

 |

**sqrtpi**(_\[number\]_)

 | `sqrtpi(25 / pi())` | `5` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [sum()](/suite/help/25.3/fnc_mathematical_sum.html) |

Returns the sum of the specified numbers.

 |

**sum**(_\[addend\]_)

 | `sum(1, 2, 3)` | `6` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [sumsq()](/suite/help/25.3/fnc_mathematical_sumsq.html) |

Squares each number and then returns the sum of the squares.

 |

**sumsq**(_\[number\]_)

 | `sumsq(2,3)` | `13` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Mathematical |  | MathematicalUsed within expressions to perform mathematical operations. |  | [trunc()](/suite/help/25.3/fnc_mathematical_trunc.html) |

Truncates a decimal number to the specified number of places after the decimal point.

 |

**trunc**(_\[value\], \[numberOfDecimals\]_)

 | `trunc(2.8888, 3)` | `2.888` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [a!doesGroupExist()](/suite/help/25.3/fnc_people_a_doesgroupexist.html) |

Verifies whether a group with the specified group ID already exists in the environment.

 |

**a!doesGroupExist**(_\[groupId\]_)

 | `a!doesGroupExist(6)` | `true` |

`~portal+om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [a!groupMembers()](/suite/help/25.3/fnc_people_a_groupmembers.html) |

Returns a DataSubset of group members of a given group.

 |

**a!groupMembers**(_\[group\], \[direct\], \[memberType\], \[pagingInfo\]_)

 | Click on the function name for examples. |  |

`~portal+om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [a!groupsByName()](/suite/help/25.3/fnc_people_a_groupsbyname.html) |

Returns an array of groups with the given name, or an empty array if no group exists.

 |

**a!groupsByName**(_\[groupName\]_)

 | `a!groupsByName("Case Viewers - " & ri!cvId)` | `{"Group:7"=>nil}` |

`~portal+om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [a!groupsByType()](/suite/help/25.3/fnc_people_a_groupsbytype.html) |

Returns a DataSubset of the groups of a given group type.

 |

**a!groupsByType**(_\[groupType\], \[pagingInfo\]_)

 | Click on the function name for examples. |  |

`~portal+om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [a!groupsForUser()](/suite/help/25.3/fnc_people_a_groupsforuser.html) |

Returns the groups where the user is a member or has Administrator permissions.

 |

**a!groupsForUser**(_\[username\], \[isGroupAdministrator\], \[groupTypes\]_)

 | `a!groupsForUser( username: "jane.doe" )` | `{"7 - Group A (Group)"=>nil, "8 - Group B (Group)"=>nil}` |

`~portal+om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [a!isUserMemberOfGroup()](/suite/help/25.3/fnc_people_a_isusermemberofgroup.html) |

Identifies whether or not a user is a member of the specified groups. By default, this function returns true if the user is in at least one of the specified groups.

 |

**a!isUserMemberOfGroup**(_\[username\], \[groups\], \[matchAllGroups\]_)

 | `a!isUserMemberOfGroup("john.doe", 2)` | `false` |

`~portal+om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [getdistinctusers()](/suite/help/25.3/fnc_people_getdistinctusers.html) |

Retrieves users from a set of users and groups.

 |

**getdistinctusers**(_\[peopleArray\]_)

 | `getdistinctusers(topeople(cons!MY_GROUP))` | `{test.user1, test.user2}` |

`~portal~om-crf-rcrf+pr+pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Partially compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [getgroupattribute()](/suite/help/25.3/fnc_people_getgroupattribute.html) |

Retrieves the value of the specified group attribute for the given group.

 |

**getgroupattribute**(_\[group\], \[attribute\]_)

 | `getgroupattribute(cons!MY_GROUP, "created")` | `12/16/05 6:37 PM GMT` |

`~portal~om-crf-rcrf+pr+pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Partially compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [group()](/suite/help/25.3/fnc_people_group.html) |

Returns information for group.

 |

**group**(_\[groupId\], \[property\]_)

 | `group(2, "created")` | `12/16/05 6:37 PM GMT` |

`~portal~om-crf-rcrf+pr+pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Partially compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [isusermemberofgroup\_21r2()](/suite/help/25.3/fnc_people_isusermemberofgroup_21r2.html) |

Identifies whether or not a user belongs to a group.

 |

**isusermemberofgroup\_21r2**(_\[username\], \[groupId\]_)

 | `isusermemberofgroup_21r2("john.doe", 2)` | `false` |

`~portal+om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [isusernametaken()](/suite/help/25.3/fnc_people_isusernametaken.html) |

Verifies whether a user account with the specified username is already present.

 |

**isusernametaken**(_\[username\]_)

 | `isusernametaken("john.doe")` | `true` |

`~portal~om-crf-rcrf+pr+pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Partially compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [loggedInUser()](/suite/help/25.3/fnc_people_loggedinuser.html) |

Returns the current user logged in to the application.

 |

**loggedInUser**(_\[\]_)

 | `loggedInUser()` | `current.user` |

`~portal+om-crf-rcrf+pr+pe+pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [supervisor()](/suite/help/25.3/fnc_people_supervisor.html) |

Returns the supervisor of the user if they have one.

 |

**supervisor**(_\[userinfo\]_)

 | `supervisor("john.doe")` | `jane.smith` |

`~portal~om-crf-rcrf+pr+pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Partially compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [togroup()](/suite/help/25.3/fnc_people_togroup.html) |

Converts a value to Group.

 |

**togroup**(_\[value\]_)

 | `togroup(1)` | `[Group:1]` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [topeople()](/suite/help/25.3/fnc_people_topeople.html) |

Converts a value to People.

 |

**topeople**(_\[value\]_)

 | `topeople(1, "john.doe")` | `{[Group:1], john.doe}` |

`~portal~om-crf-rcrf+pr+pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [touser()](/suite/help/25.3/fnc_people_touser.html) |

Converts a value to User.

 |

**touser**(_\[value\]_)

 | `touser("john.doe")` | `john.doe` |

`~portal~om-crf-rcrf+pr+pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| People |  | PeopleUsed to perform evaluations and operations on users and groups. |  | [user()](/suite/help/25.3/fnc_people_user.html) |

Returns information for a user.

 |

**user**(_\[username\], \[property\]_)

 | `user("jane.smith", "created")` | `12/20/22 10:36 PM GMT` |

`~portal~om-crf-rcrf+pr+pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Partially compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!aggregationFields()](/suite/help/25.3/fnc_scripting_a_aggregationfields.html) |

Used to define a query against record data that performs an aggregation in [a!queryRecordType()](fnc_system_queryrecordtype.html). Uses [a!grouping()](Grouping_Component.html) and [a!measure()](Measure_Component.html) to define aggregate fields.

 |

**a!aggregationFields**(_\[groupings\], \[measures\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [a!isNativeMobile()](/suite/help/25.3/fnc_scripting_a_isNativeMobile.html) |

Returns true if the interface is being viewed within the Appian for Mobile application. Returns false otherwise.

 |

**a!isNativeMobile**(_\[\]_)

 | `Click on the function name for examples.` | `Boolean` |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [a!isPageWidth()](/suite/help/25.3/fnc_scripting_a_isPageWidth.html) |

Returns true if the interface is being viewed on a page that falls within the specified width ranges. Returns false otherwise. This function checks the width of the content area on the page, which may not be the width of the entire window.

 |

**a!isPageWidth**(_\[pageWidths\]_)

 |  |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [a!urlForTask()](/suite/help/25.3/fnc_scripting_a_urlfortask.html) |

This function returns the URL of a process task given the task ID.

 |

**a!urlForTask**(_\[taskIds\], \[returnTaskPathOnly\]_)

 | `a!urlForTask(taskIds: 12345, returnTaskPathOnly: false)` | `https://<sitename>/suite/tempo/tasks/task/<task_path>` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [averagetaskcompletiontimeforprocessmodel()](/suite/help/25.3/fnc_scripting_averagetaskcompletiontimeforprocessmodel.html) |

Returns the average elapsed time in days between task assignment and task completion for all assigned, accepted, and completed tasks in all processes started from a given process model.

 |

**averagetaskcompletiontimeforprocessmodel**(_\[Id\], \[includeSubProcessData\]_)

 | `averagetaskcompletiontimeforprocessmodel(4)` | `0.6979317434217448` |

`~portal~om-crf-rcrf-pr~pe?pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [averagetasklagtimeforprocessmodel()](/suite/help/25.3/fnc_scripting_averagetasklagtimeforprocessmodel.html) |

Returns the average elapsed time in days between task assignment and task acceptance for all assigned, accepted, and completed tasks in processes for the specified process model.

 |

**averagetasklagtimeforprocessmodel**(_\[Id\], \[includeSubProcessData\]_)

 | `averagetasklagtimeforprocessmodel(4)` | `0.4155682319223637` |

`~portal~om-crf-rcrf-pr~pe?pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [averagetaskworktimeforprocessmodel()](/suite/help/25.3/fnc_scripting_averagetaskworktimeforprocessmodel.html) |

Returns the average elapsed time in days between task acceptance and task completion for all accepted and completed tasks in processes for this process model.

 |

**averagetaskworktimeforprocessmodel**(_\[Id\], \[includeSubProcessData\]_)

 | `averagetaskworktimeforprocessmodel(processModelId)` | `0.00003523892184732956` |

`~portal~om-crf-rcrf-pr~pe?pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [community()](/suite/help/25.3/fnc_scripting_community.html) |

Returns the properties of a given community.

 |

**community**(_\[communityId\], \[property\]_)

 | `community(1, "numberOfDocuments")` | `40` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [datetext()](/suite/help/25.3/fnc_scripting_datetext.html) |

Interprets the date or datetime specified in the user's preferred calendar and returns its string representation using given format.

 |

**datetext**(_\[value\], \[format\]_)

 | `datetext(userdatevalue("8/18/1427"), "yyyy/MM/dd")` | `1427/8/18` |

`+portal-om-crf-rcrf-pr~pe+pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [document()](/suite/help/25.3/fnc_scripting_document.html) |

Returns property information for a document.

 |

**document**(_\[documentId\], \[property\]_)

 | `document(101, "expirationDate")` | `12/21/05 2:28 PM GMT` |

`+portal~om-crf-rcrf-pr~pe~pa` Compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [folder()](/suite/help/25.3/fnc_scripting_folder.html) |

Returns a property of the requested folder.

 |

**folder**(_\[folderId\], \[property\]_)

 | `folder(54, "knowledgeCenterName")` | `System Knowledge Center` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [getprocessemail() \[Deprecated\]](/suite/help/25.3/fnc_scripting_getprocessemail.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [getprocessmodelemail() \[Deprecated\]](/suite/help/25.3/fnc_scripting_getprocessmodelemail.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [isNativePhone() \[Deprecated\]](/suite/help/25.3/fnc_scripting_isNativePhone.html) |  |

**isNativePhone**()

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [isNativeTablet() \[Deprecated\]](/suite/help/25.3/fnc_scripting_isNativeTablet.html) |  |

**isNativeTablet**()

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [isInDaylightSavingTime()](/suite/help/25.3/fnc_scripting_isindaylightsavingtime.html) |

Returns whether the given date and timezone are in daylight saving time.

 |

**isInDaylightSavingTime**(_\[date\], \[timezone\]_)

 | `isInDaylightSavingTime(date(2005,12,13), "America/Los_Angeles")` | `false` |

`~portal+om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [knowledgecenter()](/suite/help/25.3/fnc_scripting_knowledgecenter.html) |

Returns the properties of a knowledge center.

 |

**knowledgecenter**(_\[knowledgeCenterId\], \[property\]_)

 | `knowledgecenter(2, "name")` | `System Knowledge Center` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktocommunity() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktocommunity.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktocommunityinternal() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktocommunityinternal.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktodocument() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktodocument.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktodocumentinternal() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktodocumentinternal.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktofolder() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktofolder.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktofolderinternal() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktofolderinternal.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktogroup() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktogroup.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktogroupinternal() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktogroupinternal.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktoknowledgecenter() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktoknowledgecenter.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktoknowledgecenterinternal() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktoknowledgecenterinternal.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktoprocessdashboard() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktoprocessdashboard.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktoprocessdashboardinternal() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktoprocessdashboardinternal.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktoprocessmodeldashboard() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktoprocessmodeldashboard.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktoprocessmodeldashboardinternal() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktoprocessmodeldashboardinternal.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktouser() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktouser.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [linktouserinternal() \[Deprecated\]](/suite/help/25.3/fnc_scripting_linktouserinternal.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [numontimeprocessesforprocessmodel()](/suite/help/25.3/fnc_scripting_numontimeprocessesforprocessmodel.html) |

This function eturns the number of active and completed processes of the specified process model that are on time (not past the deadline).

 |

**numontimeprocessesforprocessmodel**(_\[processModelId\], \[includeSubProcessData\]_)

 | `numontimeprocessesforprocessmodel(processModelId, true)` | `38` |

`~portal~om-crf-rcrf-pr~pe?pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [numontimetasksforprocessmodel()](/suite/help/25.3/fnc_scripting_numontimetasksforprocessmodel.html) |

Returns the number of tasks in process instances of the specified process model that are currently on time (if the task is still active) or were completed on time.

 |

**numontimetasksforprocessmodel**(_\[processModelId\], \[includeSubProcessData\]_)

 | `numontimetasksforprocessmodel(processModelId, true)` | `147` |

`~portal~om-crf-rcrf-pr~pe?pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [numoverdueprocessesforprocessmodel()](/suite/help/25.3/fnc_scripting_numoverdueprocessesforprocessmodel.html) |

Returns the number of active and completed processes for the specified process model, which are past the deadline.

 |

**numoverdueprocessesforprocessmodel**(_\[processModelId\], \[includeSubProcessData\]_)

 | `numoverdueprocessesforprocessmodel(processModelId)` | `1` |

`~portal~om-crf-rcrf-pr~pe?pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [numoverduetasksforprocessmodel()](/suite/help/25.3/fnc_scripting_numoverduetasksforprocessmodel.html) |

Returns the number of tasks in both active and completed process instances of the specified process model, which are currently overdue (if the task is still active) or were completed past their deadline.

 |

**numoverduetasksforprocessmodel**(_\[processModelId\], \[includeSubProcessData\]_)

 | `numoverduetasksforprocessmodel(processModelId)` | `10` |

`~portal~om-crf-rcrf-pr~pe?pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [numprocessesforprocessmodelforstatus()](/suite/help/25.3/fnc_scripting_numprocessesforprocessmodelforstatus.html) |

Counts and returns the number of process instances with the specified status for the process model.

 |

**numprocessesforprocessmodelforstatus**(_\[processModelId\], \[status\], \[includeSubProcessData\]_)

 | `numprocessesforprocessmodelforstatus(processModelId, "completed")` | `38` |

`~portal~om-crf-rcrf-pr~pe?pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [numtasksforprocessmodelforstatus()](/suite/help/25.3/fnc_scripting_numtasksforprocessmodelforstatus.html) |

Returns the number of tasks with the specified status in process instances of the process model.

 |

**numtasksforprocessmodelforstatus**(_\[processModelId\], \[status\], \[includeSubProcessData\]_)

 | `numtasksforprocessmodelforstatus(processModelId, "completed", true)` | `112` |

`~portal~om-crf-rcrf-pr~pe?pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [offsetFromGMT()](/suite/help/25.3/fnc_scripting_offsetfromgmt.html) |

Returns the offset (in minutes) from GMT of the given date and timezone.

 |

**offsetFromGMT**(_\[date\], \[timezone\]_)

 | `offsetFromGMT(date(2005,12,13), "America/Los_Angeles")` | `-480` |

`~portal+om+crf-rcrf-pr~pe+pa` Partially compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [page() \[Deprecated\]](/suite/help/25.3/fnc_scripting_page.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [a!portalUrlWithLocale()](/suite/help/25.3/fnc_scripting_portalurlwithlocale.html) |

Creates a link that allows users to switch between different locales while on a portal. When used in a portal, returns the URL for the current portal page and URL parameters with the specified locale. For example, `https://myorg.com/myportal/page/home?isActive=true&$locale=en_US`.

 |

**a!portalUrlWithLocale**(_\[locale\]_)

 | `a!portalUrlWithLocale(locale: "en_US")` | `https://myportal.com/?$locale=en_US` |

`+portal-om-crf-rcrf-pr~pe+pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [property()](/suite/help/25.3/fnc_scripting_property.html) |

This function extracts a bean's property under a given key name (the `nameOfProperty` parameter).

 |

**property**(_\[bean\], \[nameOfProperty\], \[valueIfMissing\]_)

 | `property(msg!properties, "name", "no name was sent")` | `no name was sent` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [queryrecord() \[Deprecated\]](/suite/help/25.3/fnc_scripting_queryrecord.html) |  |

**queryrecord**( _recordType_, _query_ )

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [repeat()](/suite/help/25.3/fnc_scripting_repeat.html) |

This function takes an input of Any Type and returns a list with the input repeated a specified number of times.

 |

**repeat**(_\[times\], \[input\]_)

 | `repeat(2, "strawberry")` | `{"strawberry", "strawberry"}` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [todatasubset()](/suite/help/25.3/fnc_scripting_todatasubset.html) |

The function takes an array of values as well as optional paging/sorting configurations and returns a DataSubset value with a subset of the array in a specified sort order and the total count of items in the initial array.

 |

**todatasubset**(_\[arrayToPage\], \[pagingConfiguration\]_)

 | `todatasubset({1, 2, 3})` | `[startIndex=1, batchSize=-1, sort=, totalCount=3, data=1; 2; 3, identifiers=1; 2; 3]` |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [topaginginfo()](/suite/help/25.3/fnc_scripting_topaginginfo.html) |

Returns a PagingInfo value for use with the `todatasubset()` function.

 |

**topaginginfo**(_\[startIndex\], \[batchSize\]_)

 | `topaginginfo(1, 25)` | `[startIndex=1, batchSize=25]` |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [torecord()](/suite/help/25.3/fnc_scripting_torecord.html) |

Converts XML to a value of the given data type.

 |

**torecord**(_\[xml\], \[type\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [toxml()](/suite/help/25.3/fnc_scripting_toxml.html) |

Converts a value to its equivalent XML form.

 |

**toxml**(_\[value\], \[format\], \[name\], \[namespace\]_)

 | `Click on the function name to see examples.` |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [a!urlForPortal()](/suite/help/25.3/fnc_scripting_urlforportal.html) |

Returns a URL for a portal page. [Edit the page](portal-object.html#pages) in the portal object to map the rule inputs to URL parameters, set default values, or opt out of encrypting URL parameters for the page.

 |

**a!urlForPortal**(_\[portalPage\], \[urlParameters\], \[locale\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr~pe+pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [a!urlForRecord()](/suite/help/25.3/fnc_scripting_urlforrecord.html) |

Returns the URL for one or more records in a site page or Tempo. Can also return the URL for a record list in Tempo.

 |

**a!urlForRecord**(_\[recordType\], \[targetLocation\], \[identifier\], \[view\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [urlForRecord\_23r4()](/suite/help/25.3/fnc_scripting_urlforrecord_23r4.html) |

This function allows you to return the URLs for one or more records or a record list view that can then be used in a link component.

 |

**urlForRecord\_23r4**(_\[recordType\], \[recordIds\]_)

 | `urlforrecord(cons!MY_RECORD_TYPE)` | `"https://<sitename>/suite/tempo/records/type/<record_type>/view/all"` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [a!urlForSite()](/suite/help/25.3/fnc_scripting_urlforsite.html) |

Returns a URL for a site page. If the page uses an Interface for the Type, you can optionally use URL parameters to pass values into it. These can be configured in the [site object](sites_object.html#pages).

 |

**a!urlForSite**(_\[sitePage\], \[urlParameters\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [urlwithparameters()](/suite/help/25.3/fnc_scripting_urlwithparameters.html) |

This function allows you to build a URL from an expression, using arrays of process and constant data.

 |

**urlwithparameters**(_\[path\], \[parameterNames\], \[parameterValues\]_)

 | `urlwithparameters("https://example.com", { "a", "b" }, { 1, 2 })` | `https://example.com?a=1&b=2` |

`+portal~om-crf-rcrf-pr~pe+pa` Compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [userdate()](/suite/help/25.3/fnc_scripting_userdate.html) |

Identifies the date represented by year, month, and day and then interprets it in the user preferred calendar, converting it into a serial number.

 |

**userdate**(_\[year\], \[month\], \[day\]_)

 | `datetext(userdate(1427, 8, 18), "mm/dd/yyyy")` | `8/18/1427` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [userdatetime()](/suite/help/25.3/fnc_scripting_userdatetime.html) |

Interprets the given date and time in the user preferred calendar and converts it into a serial number.

 |

**userdatetime**(_\[year\], \[month\], \[day\], \[hour\], \[minute\], \[second\]_)

 | `datetext(userdatetime(1427, 8, 18, 1, 2, 0))` | `08/18/1427 01:02 AM` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [userdatevalue()](/suite/help/25.3/fnc_scripting_userdatevalue.html) |

Interprets the given date in the user preferred calendar and converts it into an equivalent serial number.

 |

**userdatevalue**(_\[date\_text\]_)

 | `datetext(userdatevalue("8/18/1427"), "yyyy/MM/dd") returns` | `38` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [userday()](/suite/help/25.3/fnc_scripting_userday.html) |

Returns the day of the month from the date or datetime specified in the user preferred calendar.

 |

**userday**(_\[date\]_)

 | `userday(11/31/2007)` | `31` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [userdayofyear()](/suite/help/25.3/fnc_scripting_userdayofyear.html) |

Returns the number of day within in a specified date/datetime.

 |

**userdayofyear**(_\[date\]_)

 | `userdayofyear(2/28/2006)` | `58` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [userdaysinmonth()](/suite/help/25.3/fnc_scripting_userdaysinmonth.html) |

Interprets the year/month specified in the user preferred calendar and returns the number of days in a that month.

 |

**userdaysinmonth**(_\[month\], \[year\]_)

 | `userdaysinmonth(04, 2006)` | `30` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [useredate()](/suite/help/25.3/fnc_scripting_useredate.html) |

Returns the date that is the number of months before or after the given starting date in the user preferred calendar.

 |

**useredate**(_\[start\_date\], \[months\]_)

 | `useredate(11/20/2006, -6)` | `05/20/2006` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [usereomonth()](/suite/help/25.3/fnc_scripting_usereomonth.html) |

Returns the date for the last day of the month that is the number of months before or after the given starting date in the user preferred calendar.

 |

**usereomonth**(_\[starting\_date\], \[months\]_)

 | `usereomonth(11/27/06, -6)` | `5/31/06` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [userisleapyear()](/suite/help/25.3/fnc_scripting_userisleapyear.html) |

This functions lets you know if a given year is a leap year in the user preferred calendar.

 |

**userisleapyear**(_\[year\]_)

 | `userisleapyear(2021)` | `false` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [userlocale()](/suite/help/25.3/fnc_scripting_userlocale.html) |

Returns the preferred locale of the given user or the site primary locale if the user doesn't have a preference set.

 |

**userlocale**(_\[user\]_)

 | `userlocale("john.doe")` | `en_US` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [usermonth()](/suite/help/25.3/fnc_scripting_usermonth.html) |

Returns the month from the specified date or datetime in the user preferred calendar.

 |

**usermonth**(_\[date\]_)

 | `usermonth(11/20/2006)` | `11` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [usertimezone()](/suite/help/25.3/fnc_scripting_usertimezone.html) |

Returns the site primary timezone if the application is configured to override user preferences; otherwise it returns the preferred timezone of the given user or the site primary timezone if the user doesn't have a preference set.

 |

**usertimezone**(_\[user\]_)

 | `usertimezone(loggedinuser())` | `GMT` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [userweekday()](/suite/help/25.3/fnc_scripting_userweekday.html) |

Returns the day of the week of the specified date or datetime in the user preferred calendar.

 |

**userweekday**(_\[date\], \[return\_type\]_)

 | `userweekday(07/10/2006, 1)` | `1` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [userweeknum()](/suite/help/25.3/fnc_scripting_userweeknum.html) |

Returns the week number within the year for the given date or datetime in the user preferred calendar, using a given methodology.

 |

**userweeknum**(_\[date\], \[methodology\]_)

 | `userweeknum(02/06/2018, 1)` | `6` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [useryear()](/suite/help/25.3/fnc_scripting_useryear.html) |

Returns the year from the date or datetime specified in the user preferred calendar.

 |

**useryear**(_\[date\]_)

 | `useryear(11/20/2018)` | `2018` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [webservicequery()](/suite/help/25.3/fnc_scripting_webservicequery.html) |

Invokes a web service configured by a WsConfig object with the supplied input data.

 |

**webservicequery**(_\[config\], \[data\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [webservicewrite()](/suite/help/25.3/fnc_scripting_webservicewrite.html) |

Returns a Writer that can be used as the setter of a variable created using the bind() function.

 |

**webservicewrite**(_\[config\], \[data\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [xpathdocument()](/suite/help/25.3/fnc_scripting_xpathdocument.html) |

This function finds information in an XML document stored in Appian's document management system.

 |

**xpathdocument**(_\[docId\], \[expression\], \[prefix\]_)

 | `xpathdocument(cons!my_xml_document, "//temp/text()") & " degrees today"` | `Collab` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Scripting |  | ScriptingUsed within expressions to perform operations on process data and Appian objects. |  | [xpathsnippet()](/suite/help/25.3/fnc_scripting_xpathsnippet.html) |

This function finds information in an XML document provided as Text.

 |

**xpathsnippet**(_\[snippet\], \[expression\], \[prefix\]_)

 | `xpathsnippet("<weather><temp>72.3</temp><sky>Cloudy</sky></weather>", "//temp/text()") & " degrees today"` | `72.3 degrees today` |

`~portal~om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| Array | Set | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. | SetUsed within your expressions to manipulate values from arrays. | [contains()](/suite/help/25.3/fnc_set_contains.html) |

Checks whether an array contains the value.

 |

**contains**(_\[array\], \[value\]_)

 | `contains({10, 20, 30}, 20)` | `true` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array | Set | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. | SetUsed within your expressions to manipulate values from arrays. | [difference()](/suite/help/25.3/fnc_set_difference.html) |

Returns the values in array1 and not in array2.

 |

**difference**(_\[array1\], \[array2\]_)

 | `difference({10, 20, 30, 40}, {30, 40})` | `{10, 20}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array | Set | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. | SetUsed within your expressions to manipulate values from arrays. | [intersection()](/suite/help/25.3/fnc_set_intersection.html) |

Returns only those elements that appear in all of the given arrays.

 |

**intersection**(_\[array1\], \[array2\]_)

 | `intersection({10, 20, 30}, {20, 30, 40})` | `{20, 30}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array | Set | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. | SetUsed within your expressions to manipulate values from arrays. | [symmetricdifference()](/suite/help/25.3/fnc_set_symmetricdifference.html) |

Returns the values from two integer arrays that are not in both arrays.

 |

**symmetricdifference**(_\[array1\], \[array2\]_)

 | `symmetricdifference({10, 20, 30}, {20, 30, 40})` | `{10, 40}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Array | Set | ArrayUsed within your expressions to manipulate, insert, and/or select values from arrays. | SetUsed within your expressions to manipulate values from arrays. | [union()](/suite/help/25.3/fnc_set_union.html) |

Returns all unique elements from the given arrays.

 |

**union**(_\[array1\], \[array2\]_)

 | `union({10, 20, 30}, {20, 30, 40})` | `{10, 20, 30, 40}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [avedev()](/suite/help/25.3/fnc_statistical_avedev.html) |

Returns the average deviation of the specified number(s).

 |

**avedev**(_\[number\]_)

 | `avedev(1, 2, 3, 4)` | `1` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [average()](/suite/help/25.3/fnc_statistical_average.html) |

Returns the average of the specified number(s).

 |

**average**(_\[number\]_)

 | `average(1, 2, 3, 4)` | `2.5` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [count()](/suite/help/25.3/fnc_statistical_count.html) |

Returns the number items in all arrays passed to the function.

 |

**count**(_\[value\]_)

 | `count({1, 2, 3, 4})` | `4` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [frequency()](/suite/help/25.3/fnc_statistical_frequency.html) |

Uses the bin array to create groups bounded by the elements of the array.

 |

**frequency**(_\[data\_array\], \[bins\_array\]_)

 | `frequency({64, 74, 75, 84, 85, 86, 95}, {70, 79, 89})` | `{1, 2, 3, 1}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [gcd()](/suite/help/25.3/fnc_statistical_gcd.html) |

Returns the greatest common denominator of the specified non-negative number(s), which is the largest number that divides all the given numbers without a remainder.

 |

**gcd**(_\[number\]_)

 | `gcd(4, 12, 36)` | `4` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [geomean()](/suite/help/25.3/fnc_statistical_geomean.html) |

Returns the geometric mean of the specified number(s).

 |

**geomean**(_\[number\]_)

 | `geomean(4, 9)` | `6` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [harmean()](/suite/help/25.3/fnc_statistical_harmean.html) |

Returns the harmonic mean of the specified number(s), which is the number of terms divided by the sum of the terms' reciprocals.

 |

**harmean**(_\[number\]_)

 | `harmean(1, 2, 3)` | `1.636364` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [lcm()](/suite/help/25.3/fnc_statistical_lcm.html) |

Returns the least common multiple of the specified non-negative number(s), which is the smallest number that is a multiple of all the given numbers.

 |

**lcm**(_\[number\]_)

 | `lcm(5,10,15)` | `30` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [lookup()](/suite/help/25.3/fnc_statistical_lookup.html) |

Returns location of data within multiple values, or valueIfNotPresent.

 |

**lookup**(_\[multipleValues\], \[dataToLookup\], \[valueIfNotPresent\]_)

 | `lookup({"a", "b", "c", "d"}, "c", -1)` | `3` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [max()](/suite/help/25.3/fnc_statistical_max.html) |

Returns the maximum of the specified number(s).

 |

**max**(_\[number\]_)

 | `max(1, 2, 3, 4)` | `4` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [median()](/suite/help/25.3/fnc_statistical_median.html) |

Returns the median of the specified number(s).

 |

**median**(_\[number\]_)

 | `median(1, 2, 3, 4)` | `2.5` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [min()](/suite/help/25.3/fnc_statistical_min.html) |

Returns the minimum of the specified number(s).

 |

**min**(_\[number\]_)

 | `min(1, 2, 3, 4)` | `1` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [mode()](/suite/help/25.3/fnc_statistical_mode.html) |

Returns the mode of the specified number(s), which is the most commonly repeated element.

 |

**mode**(_\[number\]_)

 | `mode(1, 2, 2, 3, 3, 3, 4)` | `3` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [rank()](/suite/help/25.3/fnc_statistical_rank.html) |

Returns an integer representing the rank of the number in the specified array.

 |

**rank**(_\[number\], \[array\], \[order\]_)

 | `rank(2, {1, 2, 3, 4}, false)` | `3` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [stdev()](/suite/help/25.3/fnc_statistical_stdev.html) |

Returns the standard deviation of the specified number(s).

 |

**stdev**(_\[number\]_)

 | `stdev(1, 2, 3, 4)` | `1.290994` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [stdevp()](/suite/help/25.3/fnc_statistical_stdevp.html) |

Returns the standard deviation of the specified number(s), assuming that the numbers form the entire data set and not just a sample.

 |

**stdevp**(_\[number\]_)

 | `stdevp(1, 2, 3, 4)` | `1.118034` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [var()](/suite/help/25.3/fnc_statistical_var.html) |

Returns the variance of the specified number(s).

 |

**var**(_\[number\]_)

 | `var(1, 2, 3, 4)` | `1.666667` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Statistical |  | StatisticalUsed within expressions to perform statistical operations. |  | [varp()](/suite/help/25.3/fnc_statistical_varp.html) |

Returns the variance of the specified number(s), assuming that the numbers form the entire data set and not just a sample.

 |

**varp**(_\[number\]_)

 | `varp(1, 2, 3, 4)` | `1.25` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!applyValidations()](/suite/help/25.3/fnc_system_a_applyValidations.html) |

This function references pre-configured record field validations and allows you to create additional validations to apply. Additional validations can be used to address less common scenarios that aren't applicable to every use of a record field.

 |

**a!applyValidations**(_\[recordField\], \[context\], \[additionalValidations\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!applyComponents()](/suite/help/25.3/fnc_system_a_applycomponents.html)

Replaced by [a!forEach()](/suite/help/25.3/fnc_looping_a_foreach.html)

 |

Calls a rule or function for each item in a list and supports the preservation of the local state on interfaces.

 |

**a!applyComponents**(_\[function\], \[array\], \[arrayVariable\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!applyValidations()](/suite/help/25.3/fnc_system_a_controlPanelRecordHierarchyMetadata.html) |

Returns relevant information for the specified category or type and its parent(s). This includes record fields and other information associated with the category or type, such as the display name, icon, and color.

 |

**a!applyValidations**(_\[controlPanel\], \[recordUuid\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!dataSubset()](/suite/help/25.3/fnc_system_a_datasubset.html) |

Creates a value of type DataSubset for defining the source of expression-backed records and for use with `a!pickerFieldCustom`, leaving the data as provided. To apply sorting and paging, use `todatasubset()`.

 |

**a!dataSubset**(_\[startIndex\], \[batchSize\], \[sort\], \[totalCount\], \[data\], \[identifiers\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!deployment()](/suite/help/25.3/fnc_system_a_deployment.html) |

Returns a specific property of direct and external deployments.

 |

**a!deployment**(_\[deploymentUuid\], \[property\]_)

 | `` `deployment(101, "reviewedDate")` `` | `` `12/21/05 2:28 PM GMT` `` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!endsWith()](/suite/help/25.3/fnc_system_a_endsWith.html) |

Checks if a text value ends with a specified text value. For example: `endsWith("apple","e")` returns `TRUE`.

 |

**a!endsWith**(_\[text\], \[endsWithText\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!entityData()](/suite/help/25.3/fnc_system_a_entitydata.html) |

Creates an Entity Data for use with [a!writeToMultipleDataStoreEntities()](Write_to_Multiple_Data_Store_Entities_Smart_Service.html)

 |

**a!entityData**(_\[entity\], \[data\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!entityDataIdentifiers()](/suite/help/25.3/fnc_system_a_entitydataidentifiers.html) |

Creates an EntityDataIdentifiers configuration for use with [a!deleteFromDataStoreEntities()](Delete_from_Data_Store_Entities_Smart_Service.html).

 |

**a!entityDataIdentifiers**(_\[entity\], \[identifiers\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!executeStoredProcedureForQuery()](/suite/help/25.3/fnc_system_a_executestoredprocedureforquery.html) |

Executes a stored procedure in a database. Since this function could run more than once, do not use it with stored procedures that modify data to avoid unintentional changes.

 |

**a!executeStoredProcedureForQuery**(_\[dataSource\], \[procedureName\], \[inputs\], \[timeout\], \[autoCommit\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!facet() \[Deprecated\]](/suite/help/25.3/fnc_system_a_facet.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!facetOption() \[Deprecated\]](/suite/help/25.3/fnc_system_a_facetoption.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!fromJson()](/suite/help/25.3/fnc_system_a_fromjson.html) |

Converts a JSON string into an Appian value.

 |

**a!fromJson**(_\[jsonText\]_)

 | `a!fromJson("{""name"":""John Smith"", ""age"":49, ""likes"":[""green"",""dogs"",""long walks""]}")` | `[name:John Smith,age:49,likes:green; dogs; long walks]` |

`-portal-om-crf-rcrf-pr~pe+pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!fromJson\_19r2()](/suite/help/25.3/fnc_system_a_fromjson_19r2.html) |

Converts a JSON string into an Appian value.

 |

**a!fromJson\_19r2**(_\[jsonText\]_)

 | `a!fromJson("{""name"":""John Smith"", ""age"":49, ""likes"":[""green"",""dogs"",""long walks""]}")` | `[name:John Smith,age:49,likes:green; dogs; long walks]` |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!getDataSourceForPlugin()](/suite/help/25.3/fnc_system_a_getDataSourceForPlugin.html) |

Provides capability for plug-ins to connect to [Data Source Connected Systems](data-source-connected-systems.html) and apply corresponding role map security configurations.

 |

**a!getDataSourceForPlugin**(_\[dataSourceConnectedSystem\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!httpResponse()](/suite/help/25.3/fnc_system_a_httpresponse.html) |

Returns an HTTP Response object for use in a Web API.

 |

**a!httpResponse**(_\[statusCode\], \[headers\], \[body\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!httpResponse\_17r4()](/suite/help/25.3/fnc_system_a_httpresponse_17r4.html) |

Returns an HTTP Response object for use in a Web API.

 |

**a!httpResponse\_17r4**(_\[statusCode\], \[headers\], \[body\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!iconIndicator()](/suite/help/25.3/fnc_system_a_iconindicator.html) |

Returns the specified image from a list of standard indicator icons. Indicator icons can be used on interface within a [document image](Document_Image_Component.html).

 |

**a!iconIndicator**(_\[icon\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!iconNewsEvent()](/suite/help/25.3/fnc_system_a_iconnewsevent.html) |

Returns the specified image from a list of standard news event icons in one of six colors: blue, green, gray, orange, purple, or red.

 |

**a!iconNewsEvent**(_\[icon\], \[color\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!integrationError()](/suite/help/25.3/fnc_system_a_integrationerror.html) |

Creates an integration error value. Use when configuring custom error handling for integration objects.

 |

**a!integrationError**(_\[title\], \[message\], \[detail\]_)

 | `Click on the function name for examples.` |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!isBetween()](/suite/help/25.3/fnc_system_a_isBetween.html) |

Checks if a value is within the specified range. The value can be of type date, date and time, number integer, or number decimal.

 |

**a!isBetween**(_\[value\], \[upperLimit\], \[lowerLimit\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!isInText()](/suite/help/25.3/fnc_system_a_isInText.html) |

Checks if a text value contains a specified text value. For example: `isInText("apple","p")` returns `TRUE`.

 |

**a!isInText**(_\[text\], \[subext\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!jsonPath()](/suite/help/25.3/fnc_system_a_jsonpath.html) |

Finds information in a JSON string. JSONPath is used to navigate through elements and attributes in a JSON string.

 |

**a!jsonPath**(_\[value\], \[expression\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!latestHealthCheck()](/suite/help/25.3/fnc_system_a_latesthealthcheck.html) |

Returns the start time, run status, zip file, and report for the latest [Health Check](health-check.html) run.

 |

**a!latestHealthCheck**(_\[\]_)

 | `a!latestHealthCheck()` | `[startDateTime=04/25/2020 16:18:38 GMT+00:00, runStatus=COMPLETED, zip=[Document:1408], report=[Document:1409]]` |

`~portal+om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!listViewItem()](/suite/help/25.3/fnc_system_a_listviewitem.html) |

Creates a value of type ListViewItem for use with record type definitions.

 |

**a!listViewItem**(_\[title\], \[details\], \[image\], \[timestamp\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!pagingInfo()](/suite/help/25.3/fnc_system_a_paginginfo.html) |

Creates a value of type PagingInfo for use with grids, queries, and `todatasubset()`.

 |

**a!pagingInfo**(_\[startIndex\], \[batchSize\], \[sort\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!query()](/suite/help/25.3/fnc_system_a_query.html) |

Creates a `Query` object for use in the `a!queryEntity()` function.

 |

**a!query**(_\[selection\], \[aggregation\], \[logicalExpression\], \[filter\], \[pagingInfo\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryAggregation()](/suite/help/25.3/fnc_system_a_queryaggregation.html) |

Creates an `Aggregation` object for use inside a `Query` object.

 |

**a!queryAggregation**(_\[aggregationColumns\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryAggregationColumn()](/suite/help/25.3/fnc_system_a_queryaggregationcolumn.html) |

Creates an `AggregationColumn` object for use inside an `Aggregation` object.

 |

**a!queryAggregationColumn**(_\[field\], \[alias\], \[visible\], \[isGrouping\], \[aggregationFunction\], \[groupingFunction\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryColumn()](/suite/help/25.3/fnc_system_a_querycolumn.html) |

Creates a `Column` object for use inside a `Selection` object.

 |

**a!queryColumn**(_\[field\], \[alias\], \[visible\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryEntity()](/suite/help/25.3/fnc_system_a_queryentity.html) |

Executes a query on a given data store entity and returns the result.

 |

**a!queryEntity**(_\[entity\], \[query\], \[fetchTotalCount\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!queryEntity\_18r3()](/suite/help/25.3/fnc_system_a_queryentity_18r3.html) |

Executes a query on a given data store entity and returns the result.

 |

**a!queryEntity\_18r3**(_\[entity\], \[query\]_)

 | Click on the function name for examples. |  |

`~portal+om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!queryEntity\_22r2()](/suite/help/25.3/fnc_system_a_queryentity_22r2.html) |

Executes a query on a given data store entity and returns the result.

 |

**a!queryEntity\_22r2**(_\[entity\], \[query\], \[fetchTotalCount\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryFilter()](/suite/help/25.3/fnc_system_a_queryfilter.html) |

Creates a value of type `QueryFilter` for use with [a!pickerFieldRecords()](Record_Picker_Component.html), [a!queryRecordType()](fnc_system_queryrecordtype.html), [a!recordData()](fnc_system_recorddata.html), [a!relatedRecordData()](fnc_system_relatedrecorddata.html), [a!recordFilterListOption()](fnc_system_a_recordfilterlistoption.html), or [a!query()](fnc_system_a_query.html).

 |

**a!queryFilter**(_\[field\], \[operator\], \[value\], \[applyWhen\]_)

 | `a!queryFilter(field: "name", operator: "=", value: 1)` | `[field=name, operator==, valueExpression=, value=1]` |

`+portal~om-crf-rcrf-pr~pe+pa` Compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryLogicalExpression()](/suite/help/25.3/fnc_system_a_querylogicalexpression.html) |

Creates a `LogicalExpression` object that determines the filtration to apply in `Query` object.

 |

**a!queryLogicalExpression**(_\[operator\], \[logicalExpressions\], \[filters\], \[ignoreFiltersWithEmptyValues\]_)

 | Click on the function name for examples. |  |

`+portal~om-crf-rcrf-pr~pe+pa` Compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryProcessAnalytics()](/suite/help/25.3/fnc_system_a_queryprocessanalytics.html) |

Executes process reports and returns the resulting data.

 |

**a!queryProcessAnalytics**(_\[report\], \[query\], \[contextGroups\], \[contextProcessIds\], \[contextProcessModels\], \[contextUsers\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe-pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Incompatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryRecordByIdentifier()](/suite/help/25.3/fnc_system_a_queryrecordbyidentifier.html) |

Executes a query on a given record identifier and returns the record data.

 |

**a!queryRecordByIdentifier**(_\[recordType\], \[identifier\], \[fields\], \[relatedRecordData\]_)

 | Click on the function name for examples. |  |

`+portal~om-crf-rcrf-pr~pe+pa` Compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!querySelection()](/suite/help/25.3/fnc_system_a_queryselection.html) |

Returns a `Selection` object for use inside a `Query` object.

 |

**a!querySelection**(_\[columns\]_)

 | `a!querySelection(columns: a!queryColumn(field: "name"))` | `[columns=[field=name, alias=name, visible=true]]` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!recordFilterChoices()](/suite/help/25.3/fnc_system_a_recordfilterchoices.html) |

Creates choices of a user filter for a [service-backed record type](configure-record-data-source.html#prodlink-web-service).

 |

**a!recordFilterChoices**(_\[choiceLabels\], \[choiceValues\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!recordFilterDateRange()](/suite/help/25.3/fnc_system_a_recordfilterdaterange.html) |

Creates a user filter for a record list.

 |

**a!recordFilterDateRange**(_\[name\], \[field\], \[isVisible\], \[defaultFrom\], \[defaultTo\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!recordFilterDateRange\_20r2()](/suite/help/25.3/fnc_system_a_recordfilterdaterange_20r2.html) |

Creates a user filter for a record list. This is an older version of the `a!recordFilterDateRange()` function, which supports record type field references.

 |

**a!recordFilterDateRange\_20r2**(_\[name\], \[field\], \[defaultFrom\], \[defaultTo\], \[isVisible\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!recordFilterList()](/suite/help/25.3/fnc_system_a_recordfilterlist.html) |

Creates a list user filter that can be used in a [record list](record-list.html) or [records-powered grid](Using_the_Records_Tab.html#read-only-grid).

 |

**a!recordFilterList**(_\[name\], \[options\], \[defaultOption\], \[isVisible\], \[allowMultipleSelections\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!recordFilterListOption()](/suite/help/25.3/fnc_system_a_recordfilterlistoption.html) |

Creates a filter option for the [a!recordFilterList()](fnc_system_a_recordfilterlist.html) function.

 |

**a!recordFilterListOption**(_\[id\], \[name\], \[filter\], \[dataCount\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!sentimentScore()](/suite/help/25.3/fnc_system_a_sentimentscore.html) |

Returns a list of scores representing the emotional or subjective sentiment expressed in each of the provided text values, ranging from 1.0 (positive) to -1.0 (negative).

 |

**a!sentimentScore**(_\[text\]_)

 | `a!sentimentScore({"Hi, I hope you're having a great day"})` | `{0.79}` |

`~portal+om-crf-rcrf-pr~pe~pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Partially compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!sortInfo()](/suite/help/25.3/fnc_system_a_sortinfo.html) |

Creates a value of type SortInfo for use with grids and record queries.

 |

**a!sortInfo**(_\[field\], \[ascending\]_)

 | `a!sortInfo(field: "a", ascending: true())` | `[field=a, ascending=true]` |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!startsWith()](/suite/help/25.3/fnc_system_a_startsWith.html) |

Checks if a text value begins with a specified text value. For example: `startsWith("apple","a")` returns `TRUE`.

 |

**a!startsWith**(_\[text\], \[startsWithText\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!storedProcedureInput()](/suite/help/25.3/fnc_system_a_storedprocedureinput.html) |

Creates an input to be passed to the `a!executeStoredProcedureOnSave` or `a!executeStoredProcedureForQuery` functions.

 |

**a!storedProcedureInput**(_\[name\], \[value\]_)

 | a!storedProcedureInput(name: "integer\_input", value: 2) |  |

`~portal+om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!submitUploadedFiles()](/suite/help/25.3/fnc_system_a_submituploadedfiles.html) |

To upload files outside of a start form or task, use this function in the _saveInto_ parameter of a submit [button](Button_Component.html) or [link](Link_Component.html). This function submits the files uploaded to any [file upload](File_Upload_Component.html) or [signature](Signature_Component.html) components in the interface to their target folder.

 |

**a!submitUploadedFiles**(_\[onSuccess\], \[onError\], \[documents\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr~pe+pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!toJson()](/suite/help/25.3/fnc_system_a_tojson.html) |

Converts a value into a JSON string.

 |

**a!toJson**(_\[value\], \[removeNullOrEmptyFields\]_)

 | `a!toJson(a!pagingInfo(startIndex: 1, batchSize: 10))` | `{"startIndex":1,"batchSize":10}` |

`-portal-om-crf-rcrf-pr~pe+pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!toJson\_17r1()](/suite/help/25.3/fnc_system_a_tojson_17r1.html) |

Converts a value into a JSON string.

 |

**a!toJson\_17r1**(_\[value\]_)

 | `a!toJson_17r1(a!pagingInfo(startIndex: 1, batchSize: 10))` | `{"startIndex":1,"batchSize":10}` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!toRecordIdentifier()](/suite/help/25.3/fnc_system_a_torecordidentifier.html) |

Matches record IDs with their record type to return a value of type Record Identifier for each record ID passed to the function.

 |

**a!toRecordIdentifier**(_\[recordType\], \[identifier\]_)

 | `a!toRecordIdentifier(recordType!<Record Type Name>, 1)` | `0` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!userRecordFacets() \[Deprecated\]](/suite/help/25.3/fnc_system_a_userrecordfacets.html) |  |

**a!userRecordFacets**()

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!userRecordFilterList()](/suite/help/25.3/fnc_system_a_userrecordfilterlist.html) |

Returns the default user filters for the User record type. For use in the User record type only.

 |

**a!userRecordFilterList**(_\[\]_)

 | `0` | `0` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!userRecordFilterList\_22r3()](/suite/help/25.3/fnc_system_a_userrecordfilterlist_22r3.html) |

Returns the default user filters for the User record type. For use in the User record type only.

 |

**a!userRecordFilterList\_22r3**(_\[\]_)

 | `0` | `0` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!userRecordIdentifier()](/suite/help/25.3/fnc_system_a_userrecordidentifier.html) |

Returns a value of type Record Identifier for each user passed to the function.

 |

**a!userRecordIdentifier**(_\[users\]_)

 | `a!userRecordIdentifier("john.smith")` | `0` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!userRecordListViewItem()](/suite/help/25.3/fnc_system_a_userrecordlistviewitem.html) |

Returns the default list view item for the User record type. For use on the User record type only.

 |

**a!userRecordListViewItem**(_\[record\]_)

 | `0` | `0` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!userRecordListViewItem\_22r3()](/suite/help/25.3/fnc_system_a_userrecordlistviewitem_22r3.html) |

Returns the default list view item for the User record type. For use on the User record type only.

 |

**a!userRecordListViewItem\_22r3**(_\[record\]_)

 | `0` | `0` |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!documentFolderForRecordType()](/suite/help/25.3/fnc_system_documentFolderForRecordType.html) |

Returns the [folder](manage-docs-with-records.html#generated-folders) where documents are stored for a record type.

 |

**a!documentFolderForRecordType**(_\[recordType\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!doesUserHaveAccess()](/suite/help/25.3/fnc_system_doesUserHaveAccess.html) |

Determines whether the logged in user has access to view a field based on the [field-level security](field-level-security.html) configured on the record type.

 |

**a!doesUserHaveAccess**(_\[fields\]_)

 | Click on the function name for examples. |  |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!map()](/suite/help/25.3/fnc_system_map.html) |

Creates a map of values (Any Type) with each value stored at the corresponding string key. Values stored in maps are not wrapped in variants.

 |

**a!map**(_\[key1\], \[keyN\]_)

 | `a!map(id: 1, name: "Jane Doe")` | `a!map(id: 1, name: "Jane Doe")` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!pageResponse()](/suite/help/25.3/fnc_system_pageResponse.html) |

Identifies the data in the current integration response, and the path of the next set of data to request. This function should be used to return data in a [record data source expression](configure-record-data-source.html#create-a-record-data-source) when the integration uses a non-integer pagination value.

 |

**a!pageResponse**(_\[data\], \[nextPage\]_)

 | Click on the function name for examples. |  |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryRecordByIdentifier\_25r2()](/suite/help/25.3/fnc_system_queryrecordbyidentifier_25r2.html) |

Executes a query on a given record identifier and returns the record data.

 |

**a!queryRecordByIdentifier\_25r2**(_\[recordType\], \[identifier\], \[fields\], \[relatedRecordData\]_)

 | Click on the function name for examples. |  |

`+portal~om-crf-rcrf-pr~pe+pa` Compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryRecordType()](/suite/help/25.3/fnc_system_queryrecordtype.html) |

Executes a query on a given record type and returns the result.

 |

**a!queryRecordType**(_\[recordType\], \[fields\], \[filters\], \[pagingInfo\], \[fetchTotalCount\], \[relatedRecordData\]_)

 | Click on the function name for examples. |  |

`+portal~om-crf-rcrf-pr~pe+pa` Compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!queryRecordType\_20r4()](/suite/help/25.3/fnc_system_queryrecordtype_20r4.html) |

Executes a query on a given record type and returns the result. This is an older version of the `a!queryRecordType()` function, which has new functionality.

 |

**a!queryRecordType\_20r4**(_\[recordType\], \[selection\], \[filters\], \[pagingInfo\], \[fetchTotalCount\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!queryRecordType\_24r4()](/suite/help/25.3/fnc_system_queryrecordtype_24r4.html) |

Executes a query on a given record type and returns the result. This is an older version of the `a!queryRecordType()` function, which has new functionality.

 |

**a!queryRecordType\_24r4**(_\[recordType\], \[fields\], \[filters\], \[pagingInfo\], \[fetchTotalCount\], \[relatedRecordData\]_)

 | Click on the function name for examples. |  |

`+portal~om-crf-rcrf-pr~pe+pa` Compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!queryRecordType\_25r2()](/suite/help/25.3/fnc_system_queryrecordtype_25r2.html) |

Executes a query on a given record type and returns the result.

 |

**a!queryRecordType\_25r2**(_\[recordType\], \[fields\], \[filters\], \[pagingInfo\], \[fetchTotalCount\], \[relatedRecordData\]_)

 | Click on the function name for examples. |  |

`+portal~om-crf-rcrf-pr~pe+pa` Compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!recordData()](/suite/help/25.3/fnc_system_recorddata.html) |

This function references a set of records from a record type and allows additional filtering in a read-only grid, chart, or selection component that uses a record type as the source. When referencing one-to-many relationships in grid columns, you can filter, sort, and limit that related record set using the _relatedRecordData_ parameter and the `a!relatedRecordData()` function.

 |

**a!recordData**(_\[recordType\], \[filters\], \[relatedRecordData\], \[fields\]_)

 | Click on the function name for examples. |  |

`+portal~om-crf-rcrf-pr~pe+pa` Compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!relatedRecordData()](/suite/help/25.3/fnc_system_relatedrecorddata.html) |

References a one-to-many relationship defined on a record type and allows for additional filtering, sorting, and limiting of the related record set.

 |

**a!relatedRecordData**(_\[relationship\], \[limit\], \[sort\], \[filters\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| System |  | SystemUsed within expressions to perform platform operations and data transformations |  | [a!selectionFields()](/suite/help/25.3/fnc_system_selectionfields.html) |

Returns all fields from a record type and any of its related record types within a query. You can also query specific fields from other record types at the same time.

 |

**a!selectionFields**(_\[allFieldsFromRecordType\], \[selectFields\], \[includeRealTimeCustomFields\], \[includeExtraLongTextFields\]_)

 | Click on the function name for examples. |  |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Testing | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Testing | [a!testRunResultForId()](/suite/help/25.3/fnc_testing_a_testrunresultforid.html) |

Provided a test-run ID, this function returns a TestRunResult data type containing the results of a rule test run. If the status of the test is IN PROGRESS, TestRunResult will contain only results for completed tests; if the status is COMPLETE, TestRunResult contains all test results.

 |

**a!testRunResultForId**(_\[testRunId\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Testing | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Testing | [a!testRunStatusForId()](/suite/help/25.3/fnc_testing_a_testrunstatusforid.html) |

Provided a test-run ID, this function queries for the status of an expression rule test run.

 |

**a!testRunStatusForId**(_\[testRunId\]_)

 | Click on the function name for examples. |  |

`~portal~om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [cents()](/suite/help/25.3/fnc_text_cents.html) |

Converts a number into its value in cents by effectively appending a cent sign to a fixed representation and one comma for every three digits preceding the decimal.

 |

**cents**(_\[number\], \[decimals\]_)

 | `cents( 123412 )` | `123,412.00¢` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [char()](/suite/help/25.3/fnc_text_char.html) |

Converts a number into its Unicode character equivalent.

 |

**char**(_\[number\]_)

 | `char( 65 )` | `A` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [charat()](/suite/help/25.3/fnc_text_charat.html) |

Returns the character at given index within specified string.

 |

**charat**(_\[text\], \[index\]_)

 | `charat( "string", 2 )` | `t` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [clean()](/suite/help/25.3/fnc_text_clean.html) |

Returns the specified text, minus any characters not considered printable. Printable characters are the 95 printable ASCII characters plus three special characters: BACKSPACE (0x08), TAB (0x09), and NEWLINE (0x0a).

 |

**clean**(_\[text\]_)

 | `clean( "Please enter value in £" )` | `Please enter value in` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [cleanwith()](/suite/help/25.3/fnc_text_cleanwith.html) |

Returns the specified text, minus any characters not in the list of valid characters.

 |

**cleanwith**(_\[text\], \[with\]_)

 | `cleanwith( "text string", "xte" )` | `textt` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [code()](/suite/help/25.3/fnc_text_code.html) |

Converts the text into Unicode integers.

 |

**code**(_\[text\]_)

 | `code( "Convert to Unicode" )` | `67, 111, 110, 118, 101, 114, 116, 32, 116, 111, 32, 85, 110, 105, 99, 111, 100, 101` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [concat()](/suite/help/25.3/fnc_text_concat.html) |

Concatenates the specified strings into one string, without a separator.

 |

**concat**(_\[text\]_)

 | `concat( {"a", "b", "c"}, {"d", "e", "f"} )` | `abcdef` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [a!currency()](/suite/help/25.3/fnc_text_currency.html) |

Localizes a currency value based on the given ISO currency code.

 |

**a!currency**(_\[isoCode\], \[value\], \[decimalPlaces\], \[showSeparators\], \[format\], \[indicatorAlignment\]_)

 | `a!currency( "USD", 13213.43 )` | `$13,213.43` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [currency\_22r4()](/suite/help/25.3/fnc_text_currency_22r4.html) |

Converts a decimal number into a generic currency value by effectively adding a generic currency symbol (¤), a decimal point, and one comma for every three digits preceding the decimal.

 |

**currency\_22r4**(_\[number\], \[decimals\]_)

 | `currency_22r4( 13213.43 )` | `¤13,213.43` |

`~portal-om-crf-rcrf+pr+pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [dollar() \[Deprecated\]](/suite/help/25.3/fnc_text_dollar.html) |

Converts a decimal number into a dollar value by effectively adding a dollar sign ($), a decimal point, and optional comma for every three digits preceding the decimal.

 |

**dollar**(_\[number\], \[decimals\], \[no\_commas\]_)

 | `dollar( 13213.43 )` | `$13,213.43` |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [euro() \[Deprecated\]](/suite/help/25.3/fnc_text_euro.html) |

Converts a decimal number into a euro value by effectively adding a euro symbol (€), a decimal point, and optional comma for every three digits preceding the decimal.

 |

**euro**(_\[number\], \[decimals\], \[no\_commas\]_)

 | `euro( 13213.43 )` | `€13,213.43` |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [exact()](/suite/help/25.3/fnc_text_exact.html) |

Compares two given text strings in a case-sensitive manner, returning true only if they are exactly the same.

 |

**exact**(_\[text1\], \[text2\]_)

 | `exact( "Copy of the other", "Copy of the other" )` | `true` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [extract()](/suite/help/25.3/fnc_text_extract.html) |

Returns the value (or values, if the text contains multiple delimited values) between the delimiters from the given text.

 |

**extract**(_\[text\], \[startDelimiter\], \[endDelimiter\]_)

 | `extract( "name: Bob, name: Karen, name: Sam", ":", "," )` | `{"Bob", "Karen"}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [extractanswers()](/suite/help/25.3/fnc_text_extractanswers.html) |

Returns an array of strings that respond to the questions provided.

 |

**extractanswers**(_\[questions\], \[text\]_)

 | `extractanswers( {"What is your name?", "What is your age?"}, "1. What is your name? Ben 2. What is your age? 47 " )` | `{"Ben", "47"}` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [find()](/suite/help/25.3/fnc_text_find.html) |

Searches the text for a particular substring, returning the positional index of the first character of the first match.

 |

**find**(_\[search\_text\], \[within\_text\], \[start\_num\]_)

 | `find( "to", "Boston", 1 )` | `4` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [fixed()](/suite/help/25.3/fnc_text_fixed.html) |

Rounds the specified number off to a certain number of decimals and returns it as text, with optional commas.

 |

**fixed**(_\[number\], \[decimals\], \[no\_commas\]_)

 | `fixed( 7.36819 )` | `7.37` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [a!formatPhoneNumber()](/suite/help/25.3/fnc_text_formatphonenumber.html) |

Returns a formatted phone number based on the _outputFormat_ parameter. The _countryCode_ parameter, or any country code provided in the phone number, will verify that the phone number is valid. If the phone number does not match any provided country code, the phone number will be returned as invalid and unformatted.

 |

**a!formatPhoneNumber**(_\[phoneNumber\], \[countryCode\], \[outputFormat\]_)

 | `a!formatPhoneNumber("703 333 3333", "US", "NATIONAL")` | `(703) 333-3333` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [fromHtml() \[Deprecated\]](/suite/help/25.3/fnc_text_fromhtml.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [initials()](/suite/help/25.3/fnc_text_initials.html) |

Returns only the uppercase characters from within the given text.

 |

**initials**(_\[text\]_)

 | `initials( "John P. Smith" )` | `JPS` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [insertkey()](/suite/help/25.3/fnc_text_insertkey.html) |

Returns the provided text, wrapped with the specified delimiters.

 |

**insertkey**(_\[key\], \[startDelimiter\], \[endDelimiter\]_)

 | `insertKey( "hello", "[", "]" )` | `[hello]` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [insertkeyval()](/suite/help/25.3/fnc_text_insertkeyval.html) |

Returns the provided key-value pairs, wrapped with the specified delimiters.

 |

**insertkeyval**(_\[key\], \[value\], \[startDelimiter\], \[endDelimiter\]_)

 | `insertkeyval( {"hello", "goodbye"}, {"alpha", "beta"}, "[", "]")` | `[hello=alpha][goodbye=beta]` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [insertquestions()](/suite/help/25.3/fnc_text_insertquestions.html) |

Returns an array of questions with a ==EOQ== at the end, returning a single string that can be parsed with `extractanswers()` function after it has been filled in by a user.

 |

**insertquestions**(_\[questions\]_)

 | `insertquestions({"What is your name?", "What is your age?"})` | `1. What is your name? 2. What is your age?` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [a!isPhoneNumber()](/suite/help/25.3/fnc_text_isphonenumber.html) |

Returns _true_ if the _phoneNumber_ parameter contains a valid phone number, otherwise returns _false_. A phone number is considered valid if its area code is valid, the length is appropriate based upon the value of the _countryCode_ parameter, and the number after the area code is not all zeroes. This function supports countries and area codes for international numbers.

 |

**a!isPhoneNumber**(_\[phoneNumber\], \[countryCode\]_)

 | `a!isPhoneNumber("+1 703 555 5555")` | `true` |

`+portal+om+crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [keyval()](/suite/help/25.3/fnc_text_keyval.html) |

Returns the value(s) associated with the given key(s).

 |

**keyval**(_\[text\], \[keys\], \[separators\], \[delimiters\]_)

 | `keyval("[hello=alpha][goodbye=beta]", {"hello"}, "=", "]")` | `alpha` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [left()](/suite/help/25.3/fnc_text_left.html) |

Returns a specified number of characters from the text, starting from the first character.

 |

**left**(_\[text\], \[num\_chars\]_)

 | `left("Boston",3)` | `Bos` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [leftb()](/suite/help/25.3/fnc_text_leftb.html) |

Returns a specified number of bytes from the text, starting from the first byte.

 |

**leftb**(_\[text\], \[num\_bytes\]_)

 | `leftb("Boston",3)` | `Bos` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [len()](/suite/help/25.3/fnc_text_len.html) |

Returns the length in characters of the text.

 |

**len**(_\[text\]_)

 | `len("Boston")` | `6` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [lenb()](/suite/help/25.3/fnc_text_lenb.html) |

Returns the length in bytes of the text.

 |

**lenb**(_\[text\]_)

 | `lenb("Boston")` | `6` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [like()](/suite/help/25.3/fnc_text_like.html) |

Tests whether a string of text is like a given pattern.

 |

**like**(_\[text\], \[with\]_)

 | `like("brian","*ian")` | `true` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [lower()](/suite/help/25.3/fnc_text_lower.html) |

Converts all characters in the text into lowercase (Unicode case folding).

 |

**lower**(_\[text\]_)

 | `lower("BOSTON")` | `boston` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [mid()](/suite/help/25.3/fnc_text_mid.html) |

Returns a substring from the middle of the specified text.

 |

**mid**(_\[text\], \[start\_num\], \[num\_chars\]_)

 | `mid("Boston", 4, 2)` | `to` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [midb()](/suite/help/25.3/fnc_text_midb.html) |

Returns a substring from the middle of the specified text.

 |

**midb**(_\[text\], \[start\_num\], \[num\_bytes\]_)

 | `midb("Boston", 4, 2)` | `to` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [padleft()](/suite/help/25.3/fnc_text_padleft.html) |

Pads text with spaces on the left so that it is a certain length.

 |

**padleft**(_\[text\], \[length\]_)

 | `padleft("Boston", 10)` |     `Boston` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [padright()](/suite/help/25.3/fnc_text_padright.html) |

Pads text with spaces on the right so that it is a certain length.

 |

**padright**(_\[text\], \[length\]_)

 | `padright("Boston", 10)` | `Boston`     |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [pound() \[Deprecated\]](/suite/help/25.3/fnc_text_pound.html) |

Converts the number into pounds by effectively adding a pound symbol (£), a decimal point, and one comma for every three digits preceding the decimal.

 |

**pound**(_\[number\], \[decimals\], \[no\_commas\]_)

 | `pound(3213.43,2)` | `£3,213.43` |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [proper()](/suite/help/25.3/fnc_text_proper.html) |

Converts each character in the text into proper case, meaning it will capitalize the first first letter of every word and convert the rest into lowercase.

 |

**proper**(_\[text\]_)

 | `proper("coNvert eaCH cHaRacter iNTo ProPeR caSe")` | `Convert Each Character Into Proper Case` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [replace()](/suite/help/25.3/fnc_text_replace.html) |

Replaces a piece of the specified text with new text.

 |

**replace**(_\[old\_text\], \[start\_num\], \[num\_chars\], \[new\_text\]_)

 | `replace("oldtext",1,3,"new")` | `newtext` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [replaceb()](/suite/help/25.3/fnc_text_replaceb.html) |

Replaces a piece of the specified text with new text.

 |

**replaceb**(_\[old\_text\], \[start\_num\], \[num\_chars\], \[new\_text\]_)

 | `replaceb("oldtext",1,3,"new")` | `newtext` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [rept()](/suite/help/25.3/fnc_text_rept.html) |

Concatenates the text to itself a specified number of times and returns the result.

 |

**rept**(_\[text\], \[repetitions\]_)

 | `rept("do",3)` | `dododo` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [resource()](/suite/help/25.3/fnc_text_resource.html) |

Retrieves a string of translated text appropriate for the current user, according to their language preference, by matching a given key with text.

 |

**resource**(_\[key\]_)

 | `resource("city")` | `ciudad` |

`~portal~om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Partially compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [right()](/suite/help/25.3/fnc_text_right.html) |

Returns a specified number of characters from the text, starting from the last character.

 |

**right**(_\[text\], \[num\_chars\]_)

 | `right("Boston",3)` | `ton` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [search()](/suite/help/25.3/fnc_text_search.html) |

Searches the text for the given, case insensitive substring. Returns the one-based positional index of the first character of the first match. Returns zero if the substring is not found.

 |

**search**(_\[search\_text\], \[within\_text\], \[start\_num\]_)

 | `search("to","Boston",1)` | `4` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [searchb()](/suite/help/25.3/fnc_text_searchb.html) |

Searches the text for a particular substring, returning the positional index of the first byte of the first match.

 |

**searchb**(_\[search\_text\], \[within\_text\], \[start\_num\]_)

 | `searchb("to","Boston",1)` | `4` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [soundex()](/suite/help/25.3/fnc_text_soundex.html) |

Returns the soundex code, used to render similar sounding names via phonetic similarities into identical four (4) character codes.

 |

**soundex**(_\[text\]_)

 | `soundex("John Smith")` | `J525` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [split()](/suite/help/25.3/fnc_text_split.html) |

Splits text into a list of text elements, delimited by the text specified in the separator.

 |

**split**(_\[text\], \[separator\]_)

 | `split("Smith, John. Smith, Jane",".")` | `Smith, John; Smith, Jane` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [strip()](/suite/help/25.3/fnc_text_strip.html) |

Returns the provided text, minus any characters considered printable. Printable characters are the 95 printable ASCII characters plus three special characters: BACKSPACE (0x08), TAB (0x09), and NEWLINE (0x0a).

 |

**strip**(_\[text\]_)

 | `strip("this text is stripped")` | `[empty result]` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [stripHtml()](/suite/help/25.3/fnc_text_striphtml.html) |

Changes the provided HTML string into a plain text string by converting `<br>`, `<p>`, and `<div>` to line breaks, stripping all other tags, and converting escaped characters into their display values.

 |

**stripHtml**(_\[html\]_)

 | `striphtml("<p>Click <b>Save</b>.</p>")` | `Click Save.` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [stripwith()](/suite/help/25.3/fnc_text_stripwith.html) |

The function returns the provided text, minus any characters on the list of invalid characters.

 |

**stripwith**(_\[text\], \[with\]_)

 | `stripwith("text string","xt")` | `e sring` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [substitute()](/suite/help/25.3/fnc_text_substitute.html) |

Substitutes a specific part of a string with another string.

 |

**substitute**(_\[text\], \[find\], \[replace\_with\]_)

 | `substitute("hello world","hello","my")` | `my world` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [a!swissFranc()](/suite/help/25.3/fnc_text_swissfranc.html) |

Converts the number into a Swiss franc value. Effectively adds a decimal point and an apostrophe for every three digits preceding the decimal. It also adds an optional Swiss franc symbol preceding the value.

 |

**a!swissFranc**(_\[number\], \[decimals\], \[noApostrophes\], \[showPrefixSymbol\]_)

 | `a!swissFranc( 3213.43 )` | `3'213.43` |

`+portal+om-crf-rcrf-pr~pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [text()](/suite/help/25.3/fnc_text_text.html) |

The text() function allows you to format Number, Date, Time, or Date and time values as you convert them into text strings.

 |

**text**(_\[value\], \[format\]_)

 | `text(10.25, "$00.0000")` | `$10.2500` |

`+portal+om-crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [toHtml()](/suite/help/25.3/fnc_text_tohtml.html) |

Converts a string in plain text to the HTML equivalent that displays appropriately in an HTML page, by replacing reserved characters with their escaped counterparts.

 |

**toHtml**(_\[text\]_)

 | `toHtml("Hello <br> World")` | `Hello <br> World` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [trim()](/suite/help/25.3/fnc_text_trim.html) |

Removes all unnecessary spaces from the text.

 |

**trim**(_\[text\]_)

 | `trim(" this text needs trimming ")` | `this text needs trimming` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [upper()](/suite/help/25.3/fnc_text_upper.html) |

Converts all letters in the text into uppercase.

 |

**upper**(_\[text\]_)

 | `upper("Boston")` | `BOSTON` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Text |  | TextUsed within expressions for manipulating text strings of data. |  | [value()](/suite/help/25.3/fnc_text_value.html) |

Converts text representing a number into an actual number or datetime.

 |

**value**(_\[text\], \[separator\]_)

 | `value("1,2,3",",")` | `1; 2; 3` |

`~portal-om+crf-rcrf+pr+pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [yen() \[Deprecated\]](/suite/help/25.3/fnc_text_yen.html) |

Converts the number into yen by effectively adding a yen symbol (¥), a decimal point, and one comma for every three digits preceding the decimal.

 |

**yen**(_\[number\], \[decimals\]_)

 | `yen(3213.43)` | `¥3,213.43` |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [acos()](/suite/help/25.3/fnc_trigonometry_acos.html) |

Returns the arccosine(s) of the specified number(s) in radians.

 |

**acos**(_\[number\]_)

 | `acos(-1)` | `3.141593` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [acosh()](/suite/help/25.3/fnc_trigonometry_acosh.html) |

Returns the hyperbolic arccosine(s) of the specified number(s) in radians.

 |

**acosh**(_\[number\]_)

 | `acosh(2)` | `1.316958` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [asin()](/suite/help/25.3/fnc_trigonometry_asin.html) |

Returns the arcsine(s) of the specified number(s) in radians.

 |

**asin**(_\[number\]_)

 | `asin(1)` | `1.570796` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [asinh()](/suite/help/25.3/fnc_trigonometry_asinh.html) |

Returns the hyperbolic arcsine(s) of the specified number(s) in radians.

 |

**asinh**(_\[number\]_)

 | `asinh(2)` | `1.443635` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [atan()](/suite/help/25.3/fnc_trigonometry_atan.html) |

Returns the arctangent(s) of the specified number(s) in radians.

 |

**atan**(_\[number\]_)

 | `atan(1)` | `0.7853982` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [atanh()](/suite/help/25.3/fnc_trigonometry_atanh.html) |

Returns the hyperbolic arctangent(s) of the specified number(s) in radians.

 |

**atanh**(_\[number\]_)

 | `atanh(.9)` | `1.472219` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [cos()](/suite/help/25.3/fnc_trigonometry_cos.html) |

Returns the cosine(s) of the specified number(s).

 |

**cos**(_\[number\]_)

 | `cos(pi())` | `-1` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [cosh()](/suite/help/25.3/fnc_trigonometry_cosh.html) |

Returns the hyperbolic cosine(s) of the specified number(s).

 |

**cosh**(_\[number\]_)

 | `cosh(1)` | `1.543081` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [degrees()](/suite/help/25.3/fnc_trigonometry_degrees.html) |

Converts the measure(s) of the specified angle(s) from radians to degrees.

 |

**degrees**(_\[angle\_in\_radians\]_)

 | `degrees(pi()/2)` | `90` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [radians()](/suite/help/25.3/fnc_trigonometry_radians.html) |

Converts the measure of the specified angle from degrees to radians.

 |

**radians**(_\[angle\_in\_degrees\]_)

 | `radians(180)` | `3.141593` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [sin()](/suite/help/25.3/fnc_trigonometry_sin.html) |

Returns the sine(s) of the specified number(s).

 |

**sin**(_\[number\]_)

 | `sin(pi()/2)` | `1` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [sinh()](/suite/help/25.3/fnc_trigonometry_sinh.html) |

Returns the hyperbolic sine(s) of the specified number(s).

 |

**sinh**(_\[number\]_)

 | `sinh(1)` | `1.175201` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [tan()](/suite/help/25.3/fnc_trigonometry_tan.html) |

Returns the tangent(s) of the specified number(s).

 |

**tan**(_\[number\]_)

 | `tan(pi()/4)` | `1` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Trigonometry |  | TrigonometryUsed within expressions to perform trigonometry operations. |  | [tanh()](/suite/help/25.3/fnc_trigonometry_tanh.html) |

Returns the hyperbolic tangent(s) of the specified number(s).

 |

**tanh**(_\[number\]_)

 | `tanh(1)` | `0.7615942` |

`+portal+om+crf-rcrf+pr+pe+pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Compatible Process Reports
Compatible Process Events
Compatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!areaChartField()](/suite/help/25.3/Area_Chart_Component.html) |

Displays a series of numerical data as points connected by lines with the area between the line and axis shaded. Use an area chart to visualize trends over time and compare multiple values. If specific values are more important than the trend, consider using a [column chart](Column_Chart_Component.html).

 |

**a!areaChartField**(_\[label\], \[instructions\], \[categories\], \[series\], \[xAxisTitle\], \[yAxisTitle\], \[yAxisMin\], \[yAxisMax\], \[stacking\], \[referenceLines\], \[showLegend\], \[showDataLabels\], \[showTooltips\], \[allowDecimalAxisLabels\], \[labelPosition\], \[helpTooltip\], \[showWhen\], \[connectNulls\], \[accessibilityText\], \[colorScheme\], \[height\], \[xAxisStyle\], \[yAxisStyle\], \[data\], \[config\], \[refreshAlways\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[refreshAfter\], \[allowImageDownload\], \[loadDataAsync\]_)

 | Click on the function name for examples. |  |

`+portal+om+crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!areaChartConfig()](/suite/help/25.3/Area_Chart_Config_Component.html) |

Contains configuration for how to display data in an area chart.

 |

**a!areaChartConfig**(_\[primaryGrouping\], \[secondaryGrouping\], \[measures\], \[sort\], \[dataLimit\], \[link\], \[showIntervalsWithNoData\]_)

 | Click on the function name for examples |  |

`+portal+om+crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!barChartField()](/suite/help/25.3/Bar_Chart_Component.html) |

Displays numerical data as horizontal bars. Use a bar chart to display several values at the same point in time.

 |

**a!barChartField**(_\[label\], \[instructions\], \[categories\], \[series\], \[xAxisTitle\], \[yAxisTitle\], \[yAxisMin\], \[yAxisMax\], \[stacking\], \[referenceLines\], \[showLegend\], \[showDataLabels\], \[showTooltips\], \[allowDecimalAxisLabels\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[colorScheme\], \[height\], \[xAxisStyle\], \[yAxisStyle\], \[data\], \[config\], \[refreshAlways\], \[refreshAfter\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[allowImageDownload\], \[loadDataAsync\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!barChartField\_21r4()](/suite/help/25.3/Bar_Chart_Component_21r4.html) |

Displays numerical data as horizontal bars. Use a bar chart to display several values at the same point in time.

 |

**a!barChartField\_21r4**(_\[label\], \[instructions\], \[categories\], \[series\], \[xAxisTitle\], \[yAxisTitle\], \[yAxisMin\], \[yAxisMax\], \[stacking\], \[referenceLines\], \[showLegend\], \[showDataLabels\], \[showTooltips\], \[allowDecimalAxisLabels\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[colorScheme\], \[height\], \[xAxisStyle\], \[yAxisStyle\], \[data\], \[config\], \[refreshAlways\], \[refreshAfter\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!barChartConfig()](/suite/help/25.3/Bar_Chart_Config_Component.html) |

Contains configuration for how to display data in a bar chart.

 |

**a!barChartConfig**(_\[primaryGrouping\], \[secondaryGrouping\], \[measures\], \[sort\], \[dataLimit\], \[link\], \[showIntervalsWithNoData\]_)

 | Click on the function name for examples |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!barcodeField()](/suite/help/25.3/Barcode_Component.html) |

Displays and allows entry of a barcode value using a barcode scanner or manual input.

 |

**a!barcodeField**(_\[label\], \[labelPosition\], \[instructions\], \[acceptedTypes\], \[value\], \[saveInto\], \[refreshAfter\], \[required\], \[requiredMessage\], \[readOnly\], \[disabled\], \[validations\], \[validationGroup\], \[align\], \[placeholder\], \[helpTooltip\], \[masked\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!billboardLayout()](/suite/help/25.3/Billboard_Layout.html) |

Displays a background color, image, or video with optional overlay content.

 |

**a!billboardLayout**(_\[backgroundMedia\], \[backgroundColor\], \[showWhen\], \[height\], \[marginBelow\], \[overlay\], \[accessibilityText\], \[marginAbove\], \[backgroundMediaPositionHorizontal\], \[backgroundMediaPositionVertical\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!billboardLayout\_19r1()](/suite/help/25.3/Billboard_Layout_19r1.html) |

Displays a background color, image, or video with optional overlay content.

 |

**a!billboardLayout**( \[_backgroundMedia_\], \[_backgroundColor_\], \[_overlayPositionBar_\], \[_overlayPositionColumn_\], \[_overlayColumnWidth_\], \[_overlayStyle_\], \[_overlayContents_\], \[_height_\], \[_showWhen_\] )

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!boxLayout()](/suite/help/25.3/Box_Layout.html) |

Displays any arrangement of layouts and components within a box on an interface.

 |

**a!boxLayout**(_\[label\], \[contents\], \[style\], \[showWhen\], \[isCollapsible\], \[isInitiallyCollapsed\], \[marginBelow\], \[accessibilityText\], \[padding\], \[shape\], \[marginAbove\], \[showBorder\], \[showShadow\], \[labelSize\], \[labelHeadingTag\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!richTextBulletedList()](/suite/help/25.3/Bulleted_List_Component.html) |

Displays a bulleted list within a [rich text display](Rich_Text_Component.html) component.

 |

**a!richTextBulletedList**(_\[items\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!buttonArrayLayout()](/suite/help/25.3/Button_Array_Layout.html) |

Displays a list of buttons in the order they are specified. Use this layout for buttons within interfaces rather than for submission buttons at the bottom of forms

 |

**a!buttonArrayLayout**(_\[buttons\], \[showWhen\], \[align\], \[marginBelow\], \[accessibilityText\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!buttonWidget()](/suite/help/25.3/Button_Component.html) |

Displays a button that can conditionally be used to submit a form.

 |

**a!buttonWidget**(_\[label\], \[style\], \[confirmMessage\], \[value\], \[saveInto\], \[disabled\], \[submit\], \[validate\], \[validationGroup\], \[size\], \[width\], \[confirmHeader\], \[confirmButtonLabel\], \[cancelButtonLabel\], \[showWhen\], \[icon\], \[accessibilityText\], \[tooltip\], \[recaptchaSaveInto\], \[loadingIndicator\], \[iconPosition\], \[color\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!buttonWidget\_23r3()](/suite/help/25.3/Button_Component_23r3.html) |

Displays a button that can conditionally be used to submit a form.

 |

**a!buttonWidget\_23r3**(_\[label\], \[style\], \[confirmMessage\], \[value\], \[saveInto\], \[disabled\], \[submit\], \[validate\], \[validationGroup\], \[size\], \[width\], \[confirmHeader\], \[confirmButtonLabel\], \[cancelButtonLabel\], \[showWhen\], \[icon\], \[accessibilityText\], \[tooltip\], \[recaptchaSaveInto\], \[loadingIndicator\], \[iconPosition\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!buttonLayout()](/suite/help/25.3/Button_Layout.html) |

Displays a list of buttons grouped by prominence. Use this layout in cases where prominence needs to be explicitly specified.

 |

**a!buttonLayout**(_\[primaryButtons\], \[secondaryButtons\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!colorSchemeCustom()](/suite/help/25.3/Chart_Custom_Color_Scheme_Component.html) |

A custom list of colors to apply to any chart.

 |

**a!colorSchemeCustom**(_\[Colors\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!chartReferenceLine()](/suite/help/25.3/Chart_Reference_Line_Component.html) |

Contains the reference line value for each threshold that is defined on a column, bar, line, or area chart.

 |

**a!chartReferenceLine**(_\[label\], \[value\], \[showWhen\], \[color\], \[style\]_)

 | Click on the function name for examples. |  |

`+portal+om+crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!chartSeries()](/suite/help/25.3/Chart_Series_Component.html) |

Defines a series of data for a bar, column, line, area, or pie chart. This component is always used within a chart component.

 |

**a!chartSeries**(_\[label\], \[data\], \[links\], \[color\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om+crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Compatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!checkboxFieldByIndex()](/suite/help/25.3/Checkbox_By_Index_Component.html) |

Displays a limited set of choices from which the user may select none, one, or many items and saves the indices of the selected choices.

 |

**a!checkboxFieldByIndex**(_\[label\], \[instructions\], \[required\], \[disabled\], \[choiceLabels\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[align\], \[labelPosition\], \[helpTooltip\], \[choiceLayout\], \[accessibilityText\], \[showWhen\], \[choiceStyle\], \[choicePosition\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!checkboxField()](/suite/help/25.3/Checkbox_Component.html) |

Displays a limited set of choices from which the user may select none, one, or many items and saves the values of the selected choices.

 |

**a!checkboxField**(_\[label\], \[instructions\], \[required\], \[disabled\], \[choiceLabels\], \[choiceValues\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[align\], \[labelPosition\], \[helpTooltip\], \[choiceLayout\], \[accessibilityText\], \[showWhen\], \[choiceStyle\], \[spacing\], \[data\], \[sort\], \[marginAbove\], \[marginBelow\], \[choicePosition\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!checkboxField\_23r3()](/suite/help/25.3/Checkbox_Component_23r3.html) |

Displays a limited set of choices from which the user may select none, one, or many items and saves the values of the selected choices.

 |

**a!checkboxField\_23r3**(_\[label\], \[instructions\], \[required\], \[disabled\], \[choiceLabels\], \[choiceValues\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[align\], \[labelPosition\], \[helpTooltip\], \[choiceLayout\], \[accessibilityText\], \[showWhen\], \[choiceStyle\], \[spacing\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!columnChartField()](/suite/help/25.3/Column_Chart_Component.html) |

Displays numerical data as vertical bars. Use a column chart to graphically display data that changes over time.

 |

**a!columnChartField**(_\[label\], \[instructions\], \[categories\], \[series\], \[xAxisTitle\], \[yAxisTitle\], \[yAxisMin\], \[yAxisMax\], \[stacking\], \[referenceLines\], \[showLegend\], \[showDataLabels\], \[showTooltips\], \[allowDecimalAxisLabels\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[colorScheme\], \[height\], \[xAxisStyle\], \[yAxisStyle\], \[data\], \[config\], \[refreshAlways\], \[refreshAfter\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[allowImageDownload\], \[loadDataAsync\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!columnChartConfig()](/suite/help/25.3/Column_Chart_Config_Component.html) |

Contains configuration for how to display data in a column chart.

 |

**a!columnChartConfig**(_\[primaryGrouping\], \[secondaryGrouping\], \[measures\], \[sort\], \[dataLimit\], \[link\], \[showIntervalsWithNoData\]_)

 | Click on the function name for examples |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!columnLayout()](/suite/help/25.3/Column_Layout.html) |

Displays a column that can be used within the columns layout.

 |

**a!columnLayout**(_\[contents\], \[width\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!hierarchyBrowserFieldColumns()](/suite/help/25.3/Columns_Browser_Component.html) |

Displays hierarchical data in the form of drillable columns with selectable cells.

 |

**a!hierarchyBrowserFieldColumns**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[firstColumnValues\], \[nodeConfigs\], \[pathValue\], \[pathSaveInto\], \[nextColumnValues\], \[selectionValue\], \[selectionSaveInto\], \[height\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!hierarchyBrowserFieldColumnsNode()](/suite/help/25.3/Columns_Browser_Node_Component.html) |

Returns a Hierarchy Browser Field Columns Node, used in the Node Configurations parameter of the Columns Browser to determine how items in the hierarchy are displayed.

 |

**a!hierarchyBrowserFieldColumnsNode**(_\[id\], \[label\], \[image\], \[link\], \[isSelectable\], \[isDrillable\], \[nextColumnCount\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!columnsLayout()](/suite/help/25.3/Columns_Layout.html) |

Displays any number of columns alongside each other. On narrow screens and mobile devices, columns are stacked.

 |

**a!columnsLayout**(_\[columns\], \[alignVertical\], \[showWhen\], \[marginBelow\], \[stackWhen\], \[showDividers\], \[spacing\], \[marginAbove\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Pickers | Interface ComponentUsed to create Appian interfaces. | Pickers | [a!pickerFieldCustom()](/suite/help/25.3/Custom_Picker_Component.html) |

Displays an autocompleting input for the selection of one or more items from an arbitrary data set. For an example of how to configure the picker, see the Configure an Array Picker SAIL Recipe.

 |

**a!pickerFieldCustom**(_\[label\], \[instructions\], \[required\], \[readOnly\], \[disabled\], \[maxSelections\], \[suggestFunction\], \[selectedLabels\], \[selectedTooltips\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[labelPosition\], \[placeholder\], \[helpTooltip\], \[selectedLinks\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!dashboardLayout() \[Deprecated\]](/suite/help/25.3/Dashboard_Layout.html) |  |

**a!dashboardLayout**(_\[contents\], \[showWhen\]_)

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!dashboardLayout\_17r1() \[Deprecated\]](/suite/help/25.3/Dashboard_Layout_171.html) |  |

**a!dashboardLayout\_17r1**( \[_firstColumnContents_\], \[_secondColumnContents_\] )

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!dataFabricChatField()](/suite/help/25.3/Data-Fabric-Chatbot-Component.html) |

Creates a chatbot for chatting with your data fabric.

 |

**a!dataFabricChatField**(_\[title\], \[instructions\], \[helpTooltip\], \[suggestedQuestions\], \[recordTypes\], \[userNameFormat\], \[showWhen\], \[placeholder\], \[debugMode\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!dateField()](/suite/help/25.3/Date_Component.html) |

Displays and allows entry of a single date (year, month, day). To display a read-only date using a custom format, use a text component.

 |

**a!dateField**(_\[label\], \[instructions\], \[required\], \[readOnly\], \[disabled\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[align\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!dateTimeField()](/suite/help/25.3/Date_and_Time_Component.html) |

Displays and allows entry of a single date and time (year, month, day, hour, minute, second). To display a read-only date and time using a custom format, use a text component.

 |

**a!dateTimeField**(_\[label\], \[instructions\], \[required\], \[readOnly\], \[disabled\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!documentBrowserFieldColumns()](/suite/help/25.3/Document_Browser_Component.html) |

Displays the contents of a folder and allows users to navigate through a series of folders to find and select a document.

 |

**a!documentBrowserFieldColumns**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[rootFolder\], \[navigationValue\], \[navigationSaveInto\], \[selectionValue\], \[selectionSaveInto\], \[showWhen\], \[readOnly\], \[height\], \[accessibilityText\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!documentBrowserFieldColumns\_17r3()](/suite/help/25.3/Document_Browser_Component_173.html) |

Displays the contents of a folder and allows users to navigate through a series of folders to find and download documents.

 |

**a!documentBrowserFieldColumns\_17r3**( \[_label_\], \[_labelPosition_\], \[_instructions_\], \[_helpTooltip_\], \[_folder_\], \[_height_\], \[_knowledgeCenter_\] )

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!documentImage()](/suite/help/25.3/Document_Image_Component.html) |

Displays an image from document management.

 |

**a!documentImage**(_\[document\], \[altText\], \[caption\], \[link\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!documentDownloadLink()](/suite/help/25.3/Document_Link_Component.html) |

Defines a link used to download a document.

 |

**a!documentDownloadLink**(_\[label\], \[document\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Pickers | Interface ComponentUsed to create Appian interfaces. | Pickers | [a!pickerFieldDocuments()](/suite/help/25.3/Document_Picker_Component.html) |

Displays an autocompleting input for the selection of one or more documents.

 |

**a!pickerFieldDocuments**(_\[label\], \[labelPosition\], \[instructions\], \[required\], \[requiredMessage\], \[readOnly\], \[disabled\], \[maxSelections\], \[folderFilter\], \[value\], \[validations\], \[validationGroup\], \[saveInto\], \[placeholder\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!documentViewerField()](/suite/help/25.3/Document_Viewer_Component.html) |

Displays a document from document management on an interface.

 |

**a!documentViewerField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[document\], \[showWhen\], \[height\], \[altText\], \[disabled\], \[accessibilityText\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!documentAndFolderBrowserFieldColumns()](/suite/help/25.3/Document_and_Folder_Browser_Component.html) |

Displays the contents of a folder and allows users to navigate through a series of folders to find and select a folder or document.

 |

**a!documentAndFolderBrowserFieldColumns**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[rootFolder\], \[navigationValue\], \[navigationSaveInto\], \[selectionValue\], \[selectionSaveInto\], \[showWhen\], \[readOnly\], \[height\], \[accessibilityText\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Pickers | Interface ComponentUsed to create Appian interfaces. | Pickers | [a!pickerFieldDocumentsAndFolders()](/suite/help/25.3/Document_and_Folder_Picker_Component.html) |

Displays an autocompleting input for the selection of one or more documents or folders.

 |

**a!pickerFieldDocumentsAndFolders**(_\[label\], \[labelPosition\], \[instructions\], \[required\], \[requiredMessage\], \[readOnly\], \[disabled\], \[maxSelections\], \[folderFilter\], \[value\], \[validations\], \[validationGroup\], \[saveInto\], \[placeholder\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!documentsChatField()](/suite/help/25.3/Documents_Chat_Component.html) |

Creates a chat for users to ask questions about a curated set of documents.

 |

**a!documentsChatField**(_\[label\], \[labelPosition\], \[instructions\], \[showWhen\], \[helpTooltip\], \[documents\], \[height\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!dropdownFieldByIndex()](/suite/help/25.3/Dropdown_By_Index_Component.html) |

Displays a list of choices for the user to select one item and saves the index of the selected choice.

 |

**a!dropdownFieldByIndex**(_\[label\], \[labelPosition\], \[instructions\], \[required\], \[disabled\], \[choiceLabels\], \[placeholder\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[searchDisplay\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!dropdownFieldByIndex\_20r2()](/suite/help/25.3/Dropdown_By_Index_Component_20r2.html) |

Displays a limited set of choices from which the user must select one item and saves the index of the selected choice.

 |

**a!dropdownFieldByIndex\_20r2**(_\[label\], \[labelPosition\], \[instructions\], \[required\], \[disabled\], \[choiceLabels\], \[placeholderLabel\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[helpTooltip\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!dropdownField()](/suite/help/25.3/Dropdown_Component.html) |

Displays a list of choices for the user to select one item and saves a value based on the selected choice.

 |

**a!dropdownField**(_\[label\], \[labelPosition\], \[instructions\], \[required\], \[disabled\], \[choiceLabels\], \[choiceValues\], \[placeholder\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[searchDisplay\], \[data\], \[sort\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!dropdownField\_20r2()](/suite/help/25.3/Dropdown_Component_20r2.html) |

Displays a limited set of choices from which the user must select one item and saves a value based on the selected choice.

 |

**a!dropdownField\_20r2**(_\[label\], \[labelPosition\], \[instructions\], \[required\], \[disabled\], \[choiceLabels\], \[choiceValues\], \[placeholderLabel\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[helpTooltip\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!dynamicLink()](/suite/help/25.3/Dynamic_Link_Component.html) |

Defines a link that triggers updates to one or more variables.

 |

**a!dynamicLink**(_\[label\], \[value\], \[saveInto\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Grids and Lists | Interface ComponentUsed to create Appian interfaces. | Grids and Lists | [a!gridLayout()](/suite/help/25.3/Editable_Grid_Component.html) |

Displays a tabular layout of SAIL components to provide quick inline editing of fields. For an example of how to configure an editable grid, see the Add, Edit, and Remove Data in an Inline Editable Grid SAIL Recipe.

 |

**a!gridLayout**(_\[label\], \[instructions\], \[headerCells\], \[columnConfigs\], \[rows\], \[validations\], \[validationGroup\], \[selectable\], \[selectionDisabled\], \[selectionRequired\], \[selectionValue\], \[selectionSaveInto\], \[addRowLink\], \[totalCount\], \[emptyGridMessage\], \[helpTooltip\], \[labelPosition\], \[showWhen\], \[shadeAlternateRows\], \[spacing\], \[height\], \[borderStyle\], \[selectionStyle\], \[rowHeader\], \[accessibilityText\], \[allowRowReordering\], \[rowOrderTooltip\], \[rowOrderData\], \[rowOrderField\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!encryptedTextField()](/suite/help/25.3/Encrypted_Text_Component.html) |

Allows entry of a single line of text that is encrypted when saved into a variable. The value remains encrypted while on the server and is only decrypted when displayed in the component.

 |

**a!encryptedTextField**(_\[label\], \[instructions\], \[required\], \[readOnly\], \[disabled\], \[value\], \[saveInto\], \[refreshAfter\], \[validationGroup\], \[requiredMessage\], \[align\], \[labelPosition\], \[placeholder\], \[helpTooltip\], \[masked\], \[accessibilityText\], \[showWhen\], \[inputPurpose\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Grids and Lists | Interface ComponentUsed to create Appian interfaces. | Grids and Lists | [a!eventData()](/suite/help/25.3/Event_Data_Component.html) |

This function determines the event data to display for a single record type in the [Event History List component](Event_History_List_Component.html).

 |

**a!eventData**(_\[recordType\], \[filters\], \[timestamp\], \[user\], \[eventTypeName\], \[details\], \[recordTypeForTag\], \[recordIdentifier\], \[comment\], \[allowUsersToComment\], \[baseRecordIdForComment\], \[allowUsersToReply\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Grids and Lists | Interface ComponentUsed to create Appian interfaces. | Grids and Lists | [a!eventHistoryListField()](/suite/help/25.3/Event_History_List_Component.html) |

Displays the event history for one or more record types.

 |

**a!eventHistoryListField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[emptyListMessage\], \[eventData\], \[eventStyle\], \[formatTimestamp\], \[displayUser\], \[displayUserColorScheme\], \[previewListPageSize\], \[pageSize\], \[showWhen\], \[refreshAlways\], \[refreshAfter\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[userFilters\], \[eventFilters\], \[CollapseDetailsByDefault\], \[showSearchBox\], \[showReverseSortButton\], \[commentLayout\], \[mentionableUsers\], \[commentCardColor\], \[notificationUrl\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!fileUploadField()](/suite/help/25.3/File_Upload_Component.html) |

Allows users to upload one or more files. To upload files outside of a [start form](process-model-object.html#process-start-form-tab) or [task](Tasks.html), use [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html) in the _saveInto_ parameter of a submit [button](Button_Component.html) or [link](Link_Component.html). Uploaded documents are not accessible until after form submission.

 |

**a!fileUploadField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[target\], \[fileNames\], \[fileDescriptions\], \[maxSelections\], \[value\], \[saveInto\], \[required\], \[requiredMessage\], \[disabled\], \[validations\], \[validationGroup\], \[buttonStyle\], \[buttonSize\], \[accessibilityText\], \[showWhen\], \[uploadMethods\], \[buttonDisplay\], \[placeholder\], \[showVirusScanMessage\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!fileUploadField\_17r1()](/suite/help/25.3/File_Upload_Component_171.html) |

Allows users to upload a file.

 |

**a!fileUploadField\_17r1**( \[_label_\], \[_labelPosition_\], \[_instructions_\], \[_helpTooltip_\], \[_target_\], \[_documentName_\], \[_documentDescription_\],\[_value_\], \[_saveInto_\], \[_required_\], \[_requiredMessage_\], \[_disabled_\], \[_validations_\], \[_validationGroup_\] )

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!floatingPointField()](/suite/help/25.3/Floating_Point_Component.html) |

Displays and allows entry of a single decimal number, stored with a floating point representation.

 |

**a!floatingPointField**(_\[label\], \[instructions\], \[required\], \[readOnly\], \[disabled\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[align\], \[labelPosition\], \[refreshAfter\], \[placeholder\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!folderBrowserFieldColumns()](/suite/help/25.3/Folder_Browser_Component.html) |

Displays the contents of a folder and allows users to navigate through a series of folders to find and select a folder.

 |

**a!folderBrowserFieldColumns**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[rootFolder\], \[navigationValue\], \[navigationSaveInto\], \[selectionValue\], \[selectionSaveInto\], \[readOnly\], \[showWhen\], \[height\], \[accessibilityText\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Pickers | Interface ComponentUsed to create Appian interfaces. | Pickers | [a!pickerFieldFolders()](/suite/help/25.3/Folder_Picker_Component.html) |

Displays an autocompleting input for selecting one or more folders.

 |

**a!pickerFieldFolders**(_\[label\], \[labelPosition\], \[instructions\], \[required\], \[requiredMessage\], \[readOnly\], \[disabled\], \[maxSelections\], \[folderFilter\], \[value\], \[validations\], \[validationGroup\], \[saveInto\], \[placeholder\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!formLayout()](/suite/help/25.3/Form_Layout.html) |

Displays any arrangement of layouts and components beneath a header and above buttons. Use this as the top-level layout for start and task forms.

 |

**a!formLayout**(_\[titleBar\], \[isTitleBarFixed\], \[showTitleBarDivider\], \[backgroundColor\], \[showWhen\], \[contents\], \[contentsWidth\], \[focusOnFirstInput\], \[buttons\], \[isButtonFooterFixed\], \[showButtonDivider\], \[validations\], \[validationGroup\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!formLayout\_17r1()](/suite/help/25.3/Form_Layout_171.html) |

Displays up to two columns of components beneath a title and above buttons. Use this as the top-level layout of start and task forms.

 |

**a!formLayout\_17r1**( \[_label_\] , \[_instructions_\], \[_firstColumnContents_\], \[_secondColumnContents_\], \[_buttons_\], \[_validations_\], \[_validationGroup_\], \[_skipAutoFocus_\] )

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!formLayout\_25r1()](/suite/help/25.3/Form_Layout_25r1.html) |

Displays any arrangement of layouts and components beneath a header and above buttons. Use this as the top-level layout for start and task forms.

 |

**a!formLayout\_25r1**(_\[backgroundColor\], \[formWidth\], \[showWhen\], \[label\], \[instructions\], \[showHeaderDivider\], \[isHeaderFixed\], \[contents\], \[skipAutoFocus\], \[buttons\], \[showButtonFooterDivider\], \[validations\], \[validationGroup\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!gaugeField()](/suite/help/25.3/Gauge_Component.html) |

Displays completion percentage in a circular style with optional text.

 |

**a!gaugeField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[percentage\], \[primaryText\], \[secondaryText\], \[color\], \[size\], \[align\], \[accessibilityText\], \[showWhen\], \[tooltip\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!gaugeFraction()](/suite/help/25.3/Gauge_Fraction_Component.html) |

Displays text in fractional format for use within the gauge field primary text parameter.

 |

**a!gaugeFraction**(_\[denominator\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!gaugeIcon()](/suite/help/25.3/Gauge_Icon_Component.html) |

Displays an icon for use within the gauge field primary text parameter.

 |

**a!gaugeIcon**(_\[icon\], \[altText\], \[color\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!gaugePercentage()](/suite/help/25.3/Gauge_Percentage_Component.html) |

Displays the configured percentage of the gauge as an integer for use within the gauge field primary text parameter.

 |

**a!gaugePercentage**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[percentage\], \[primaryText\], \[secondaryText\], \[color\], \[size\], \[align\], \[accessibilityText\], \[showWhen\], \[tooltip\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Grids and Lists | Interface ComponentUsed to create Appian interfaces. | Grids and Lists | [a!gridColumn()](/suite/help/25.3/Grid_Column_Component.html) |

Displays a column of data as read-only text, links, images, or rich text within the read-only grid.

 |

**a!gridColumn**(_\[label\], \[sortField\], \[helpTooltip\], \[value\], \[showWhen\], \[align\], \[width\], \[backgroundColor\], \[accessibilityText\], \[exportWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Grids and Lists | Interface ComponentUsed to create Appian interfaces. | Grids and Lists | [a!gridLayoutColumnConfig()](/suite/help/25.3/Grid_Column_Config_Component.html) |

Defines a column configuration for use in an editable grid (a!gridLayout).

 |

**a!gridLayoutColumnConfig**(_\[width\], \[weight\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Grids and Lists | Interface ComponentUsed to create Appian interfaces. | Grids and Lists | [a!gridLayoutHeaderCell()](/suite/help/25.3/Grid_Header_Component.html) |

Defines a column header for use in an editable grid (a!gridLayout).

 |

**a!gridLayoutHeaderCell**(_\[label\], \[helpTooltip\], \[align\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!gridImageColumn() \[Deprecated\]](/suite/help/25.3/Grid_Image_Column_Component.html) |  |

**a!gridImageColumn**(_\[label\], \[field\], \[data\], \[showWhen\], \[size\], \[isThumbnail\], \[style\]_)

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!gridImageColumn\_17r3() \[Deprecated\]](/suite/help/25.3/Grid_Image_Column_Component_17r3.html) |  |

**a!gridImageColumn\_17r3**( \[_label_\], \[_field_\], \[_data_\], \[_size_\] )

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Grids and Lists | Interface ComponentUsed to create Appian interfaces. | Grids and Lists | [a!gridRowLayout()](/suite/help/25.3/Grid_Row_Component.html) |

Displays a row of components within an editable grid (a!gridLayout).

 |

**a!gridRowLayout**(_\[contents\], \[id\], \[selectionDisabled\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!gridSelection() \[Deprecated\]](/suite/help/25.3/Grid_Selection_Component.html) |  |

**a!gridSelection**(_\[pagingInfo\], \[Selected\]_)

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!gridTextColumn() \[Deprecated\]](/suite/help/25.3/Grid_Text_Column_Component.html) |  |

**a!gridTextColumn**(_\[label\], \[field\], \[data\], \[alignment\], \[links\], \[showWhen\]_)

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!groupBrowserFieldColumns()](/suite/help/25.3/Group_Browser_Components.html) |

Displays group membership structure in columns. Users can navigate through the structure and select a single group.

 |

**a!groupBrowserFieldColumns**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[rootGroup\], \[pathValue\], \[pathSaveInto\], \[selectionValue\], \[selectionSaveInto\], \[readOnly\], \[height\], \[hideUsers\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Pickers | Interface ComponentUsed to create Appian interfaces. | Pickers | [a!pickerFieldGroups()](/suite/help/25.3/Group_Picker_Component.html) |

Displays an autocompleting input for selecting one or more groups.

 |

**a!pickerFieldGroups**(_\[label\], \[instructions\], \[required\], \[readOnly\], \[disabled\], \[maxSelections\], \[groupFilter\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[labelPosition\], \[placeholder\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!grouping()](/suite/help/25.3/Grouping_Component.html) |

Determines the fields to group by in a query or chart that uses a record type as the source. The grouping should incorporate a record field or a related record field, an alias, and an optional interval to group by a date.

 |

**a!grouping**(_\[field\], \[interval\], \[alias\], \[formatValue\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!headerContentLayout()](/suite/help/25.3/Header_Layout.html) |

Displays any arrangement of layouts and components beneath a card or billboard flush with the edge of the page.

 |

**a!headerContentLayout**(_\[header\], \[contents\], \[showWhen\], \[backgroundColor\], \[contentsPadding\], \[isHeaderFixed\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!headerTemplateFull()](/suite/help/25.3/Header_Template_Full.html) |

A title bar template that displays a prominent header with a background color at the top of the [form](Form_Layout.html) or [wizard](Wizard_Layout.html). The header spans the full width of the page and can include an optional decorative stamp.

 |

**a!headerTemplateFull**(_\[title\], \[secondaryText\], \[titleColor\], \[secondaryTextColor\], \[backgroundColor\], \[stampIcon\], \[stampColor\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!headerTemplateImage()](/suite/help/25.3/Header_Template_Image.html) |

A title bar template that displays a prominent header with a background color at the top of the [form](Form_Layout.html) or [wizard](Wizard_Layout.html). The header spans the full width of the page and can include a decorative image next to the title.

 |

**a!headerTemplateImage**(_\[title\], \[secondaryText\], \[titleColor\], \[secondaryTextColor\], \[backgroundColor\], \[image\], \[imageSize\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!headerTemplateSimple()](/suite/help/25.3/Header_Template_Simple.html) |

A title bar template that displays a simple text header at the top of the [form](Form_Layout.html) or [wizard](Wizard_Layout.html). The header aligns with the width of the contents and can include an optional decorative stamp.

 |

**a!headerTemplateSimple**(_\[title\], \[secondaryText\], \[titleColor\], \[secondaryTextColor\], \[stampIcon\], \[stampColor\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 | Display | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. | Display | [a!richTextHeader() \[Deprecated\]](/suite/help/25.3/Header_Text_Component.html) |

Displays a header within a [rich text display](Rich_Text_Component.html) component.

 |

**a!richTextHeader**(_\[text\], \[size\], \[link\], \[linkStyle\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!horizontalLine()](/suite/help/25.3/Horizontal_Line_Component.html) |

Displays a horizontal line

 |

**a!horizontalLine**(_\[color\], \[weight\], \[marginAbove\], \[marginBelow\], \[showWhen\], \[style\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!imageField()](/suite/help/25.3/Image_Component.html) |

Displays an image from document management or the web.

 |

**a!imageField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[images\], \[showWhen\], \[size\], \[isThumbnail\], \[style\], \[align\], \[accessibilityText\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!imageField\_17r3()](/suite/help/25.3/Image_Component_173.html) |

Displays an image from document management or the web.

 |

**a!imageField\_17r3**( \[_label_\], \[_labelPosition_\], \[_instructions_\], \[_helpTooltip_\], \[_images_\], \[_size_\] )

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!richTextImage()](/suite/help/25.3/Inline_Image_Component.html) |

Displays an icon-sized image within a [rich text display](Rich_Text_Component.html) component.

 |

**a!richTextImage**(_\[image\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!integerField()](/suite/help/25.3/Integer_Component.html) |

Displays and allows entry of a single integer number.

 |

**a!integerField**(_\[label\], \[instructions\], \[required\], \[readOnly\], \[disabled\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[align\], \[labelPosition\], \[refreshAfter\], \[placeholder\], \[helpTooltip\], \[masked\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!kpiField()](/suite/help/25.3/KPI_Component.html) |

Displays a key performance indicator that can be configured using a record type as the source.

 |

**a!kpiField**(_\[data\], \[primaryMeasure\], \[primaryText\], \[icon\], \[helpTooltip\], \[align\], \[accessibilityText\], \[tooltip\], \[showWhen\], \[secondaryMeasure\], \[trend\], \[trendFormat\], \[trendIcon\], \[trendColor\], \[secondaryText\], \[iconColor\], \[primaryTextColor\], \[primaryMeasureColor\], \[secondaryTextColor\], \[iconStyle\], \[template\], \[refreshAlways\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[refreshAfter\], \[size\], \[primaryTextStyle\], \[loadDataAsync\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!lineChartField()](/suite/help/25.3/Line_Chart_Component.html) |

Displays a series of numerical data as points connected by lines. Use a line chart to visualize trends of data that changes over time.

 |

**a!lineChartField**(_\[label\], \[instructions\], \[categories\], \[series\], \[xAxisTitle\], \[yAxisTitle\], \[yAxisMin\], \[yAxisMax\], \[referenceLines\], \[showLegend\], \[showDataLabels\], \[showTooltips\], \[allowDecimalAxisLabels\], \[labelPosition\], \[helpTooltip\], \[showWhen\], \[connectNulls\], \[accessibilityText\], \[colorScheme\], \[height\], \[xAxisStyle\], \[yAxisStyle\], \[data\], \[config\], \[refreshAlways\], \[refreshAfter\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[allowImageDownload\], \[loadDataAsync\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!lineChartField\_19r1()](/suite/help/25.3/Line_Chart_Component_19r1.html) |

Displays a series of numerical data as points connected by lines. Use a line chart to visualize trends of data that changes over time.

 |

**a!lineChartField\_19r1**(_\[label\], \[instructions\], \[categories\], \[series\], \[xAxisTitle\], \[yAxisTitle\], \[yAxisMin\], \[yAxisMax\], \[referenceLines\], \[showLegend\], \[showDataLabels\], \[showTooltips\], \[allowDecimalAxisLabels\], \[labelPosition\], \[helpTooltip\], \[showWhen\], \[connectNulls\], \[accessibilityText\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!lineChartConfig()](/suite/help/25.3/Line_Chart_Config_Component.html) |

Contains configuration for how to display data in a line chart.

 |

**a!lineChartConfig**(_\[primaryGrouping\], \[secondaryGrouping\], \[measures\], \[sort\], \[dataLimit\], \[link\], \[showIntervalsWithNoData\]_)

 | Click on the function name for examples |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!linkField()](/suite/help/25.3/Link_Component.html) |

Displays one or more links of any link type, including document links, task links, record view links, external web page links, and dynamic links that update variables.

 |

**a!linkField**(_\[label\], \[instructions\], \[links\], \[labelPosition\], \[align\], \[helpTooltip\], \[showWhen\], \[accessibilityText\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!richTextListItem()](/suite/help/25.3/List_Item_Component.html) |

Displays a nested list within a bulleted or numbered list in a [rich text display](Rich_Text_Component.html) component.

 |

**a!richTextListItem**(_\[text\], \[nestedList\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!measure()](/suite/help/25.3/Measure_Component.html) |

Determines the numerical values to display on a query, chart, or KPI. The measure should incorporate a record field or a related record field, the appropriate calculation to run on the field, and an alias. If your record type has data sync enabled, you can also apply filters to determine which values are included in the calculation.

 |

**a!measure**(_\[field\], \[function\], \[alias\], \[label\], \[filters\], \[formatValue\]_)

 | Click on the function name for examples |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!messageBanner()](/suite/help/25.3/Message_Banner.html) |

Displays a message banner that screen readers can announce whenever the component is evaluated. The banner can include primary text, secondary text, accessibility text, an icon, and custom colors.

 |

**a!messageBanner**(_\[primaryText\], \[secondaryText\], \[backgroundColor\], \[highlightColor\], \[icon\], \[showDecorativeBar\], \[shape\], \[marginAbove\], \[marginBelow\], \[showWhen\], \[announceBehavior\], \[accessibilityText\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!milestoneField()](/suite/help/25.3/Milestone_Component.html) |

Displays the completed, current, and future steps of a process or sequence.

 |

**a!milestoneField**(_\[label\], \[instructions\], \[steps\], \[links\], \[active\], \[labelPosition\], \[helpTooltip\], \[showWhen\], \[orientation\], \[accessibilityText\], \[color\], \[marginAbove\], \[marginBelow\], \[stepStyle\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!multipleDropdownFieldByIndex()](/suite/help/25.3/Multiple_Dropdown_By_Index_Component.html) |

Displays a list of choices for the user to select multiple items and saves the indices of the selected choices.

 |

**a!multipleDropdownFieldByIndex**(_\[label\], \[labelPosition\], \[instructions\], \[required\], \[disabled\], \[placeholder\], \[choiceLabels\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[searchDisplay\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!multipleDropdownFieldByIndex\_20r2()](/suite/help/25.3/Multiple_Dropdown_By_Index_Component_20r2.html) |

Displays a long list of choices from which the user may select none, one, or many items and saves the indices of the selected choices.

 |

**a!multipleDropdownFieldByIndex\_20r2**(_\[label\], \[labelPosition\], \[instructions\], \[required\], \[disabled\], \[placeholder\], \[choiceLabels\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[helpTooltip\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!multipleDropdownField()](/suite/help/25.3/Multiple_Dropdown_Component.html) |

Displays a list of choices for the user to select multiple items and saves values based on the selected choices.

 |

**a!multipleDropdownField**(_\[label\], \[instructions\], \[required\], \[disabled\], \[placeholder\], \[choiceLabels\], \[choiceValues\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[searchDisplay\], \[data\], \[sort\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!multipledropdownField\_20r2()](/suite/help/25.3/Multiple_Dropdown_Component_20r2.html) |

Displays a long list of choices from which the user may select none, one, or many items and saves values based on the selected choices.

 |

**a!multipledropdownField\_20r2**(_\[label\], \[instructions\], \[required\], \[disabled\], \[placeholder\], \[choiceLabels\], \[choiceValues\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!newsEntryLink()](/suite/help/25.3/News_Entry_Link_Component.html) |

Defines a link to news entries.

 |

**a!newsEntryLink**(_\[label\], \[entry\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!richTextNumberedList()](/suite/help/25.3/Numbered_List_Component.html) |

Displays a numbered list within a [rich text display](Rich_Text_Component.html) component.

 |

**a!richTextNumberedList**(_\[items\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!orgChartField()](/suite/help/25.3/Org_Chart_Component.html) |

Displays the organizational structure of users within Appian based on the users’ Supervisor field values.

 |

**a!orgChartField**(_\[label\], \[labelPosition\], \[instructions\], \[value\], \[saveInto\], \[showAllAncestors\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[showTotalCounts\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Grids and Lists | Interface ComponentUsed to create Appian interfaces. | Grids and Lists | [a!gridField()](/suite/help/25.3/Paging_Grid_Component.html) |

Displays a grid of data as rich text, links, images, buttons, tags, record actions, or progress bars. This grid component also supports searching, filtering, selecting, sorting, and paging.

 |

**a!gridField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[emptyGridMessage\], \[data\], \[columns\], \[pageSize\], \[initialSorts\], \[secondarySorts\], \[pagingSaveInto\], \[selectable\], \[selectionStyle\], \[selectionValue\], \[selectionSaveInto\], \[selectionRequired\], \[selectionRequiredMessage\], \[disableRowSelectionWhen\], \[validations\], \[validationGroup\], \[showWhen\], \[spacing\], \[height\], \[borderStyle\], \[shadeAlternateRows\], \[rowHeader\], \[accessibilityText\], \[refreshAlways\], \[refreshAfter\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[userFilters\], \[showSearchBox\], \[showRefreshButton\], \[showExportButton\], \[recordActions\], \[openActionsIn\], \[actionsDisplay\], \[actionsStyle\], \[maxSelections\], \[showSelectionCount\], \[loadDataAsync\], \[similarityScoreThreshold\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!gridField\_19r1()](/suite/help/25.3/Paging_Grid_Component_191.html) |

Displays read-only text, links, and images in a grid that supports selecting, sorting, and paging.

 |

**a!gridField**( \[_label_\], \[_labelPostion_\], \[_instructions_\], \[_helpTooltip_\], \[_totalCount_\], \[_emptyGridMessage_\], \[_columns_\], \[_identifiers_\], \[_value_\], \[_saveInto_\], \[_selection_\], \[_requireSelection_\], \[_requiredMessage_\], \[_disabled_\], \[_validations_\], \[_validationGroup_\], \[_showWhen_\], \[_shadeAlternateRows_\], \[_spacing_\], \[_height_\], \[_borderStyle_\], \[_selectionStyle_\], \[_rowHeader_\] )

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!gridField\_23r3()](/suite/help/25.3/Paging_Grid_Component_23r3.html) |

Accepts a set of data and displays it as read-only text, links, images, or rich text in a grid that supports selecting, sorting, and paging.

 |

**a!gridField\_23r3**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[emptyGridMessage\], \[data\], \[columns\], \[pageSize\], \[initialSorts\], \[secondarySorts\], \[pagingSaveInto\], \[selectable\], \[selectionStyle\], \[selectionValue\], \[selectionSaveInto\], \[selectionRequired\], \[selectionRequiredMessage\], \[disableRowSelectionWhen\], \[validations\], \[validationGroup\], \[showWhen\], \[spacing\], \[height\], \[borderStyle\], \[shadeAlternateRows\], \[rowHeader\], \[accessibilityText\], \[refreshAlways\], \[refreshAfter\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[userFilters\], \[showSearchBox\], \[showRefreshButton\], \[showExportButton\], \[recordActions\], \[openActionsIn\], \[actionsDisplay\], \[actionsStyle\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!gridField\_24r3()](/suite/help/25.3/Paging_Grid_Component_24r3.html) |

Accepts a set of data and displays it as read-only text, links, images, or rich text in a grid that supports selecting, sorting, and paging.

 |

**a!gridField\_24r3**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[emptyGridMessage\], \[data\], \[columns\], \[pageSize\], \[initialSorts\], \[secondarySorts\], \[pagingSaveInto\], \[selectable\], \[selectionStyle\], \[selectionValue\], \[selectionSaveInto\], \[selectionRequired\], \[selectionRequiredMessage\], \[disableRowSelectionWhen\], \[validations\], \[validationGroup\], \[showWhen\], \[spacing\], \[height\], \[borderStyle\], \[shadeAlternateRows\], \[rowHeader\], \[accessibilityText\], \[refreshAlways\], \[refreshAfter\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[userFilters\], \[showSearchBox\], \[showRefreshButton\], \[showExportButton\], \[recordActions\], \[openActionsIn\], \[actionsDisplay\], \[actionsStyle\], \[maxSelections\], \[showSelectionCount\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Grids and Lists | Interface ComponentUsed to create Appian interfaces. | Grids and Lists | [a!gridField\_25r2()](/suite/help/25.3/Paging_Grid_Component_25r2.html) |

Displays a grid of data as rich text, links, images, buttons, tags, record actions, or progress bars. This grid component also supports searching, filtering, selecting, sorting, and paging.

 |

**a!gridField\_25r2**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[emptyGridMessage\], \[data\], \[columns\], \[pageSize\], \[initialSorts\], \[secondarySorts\], \[pagingSaveInto\], \[selectable\], \[selectionStyle\], \[selectionValue\], \[selectionSaveInto\], \[selectionRequired\], \[selectionRequiredMessage\], \[disableRowSelectionWhen\], \[validations\], \[validationGroup\], \[showWhen\], \[spacing\], \[height\], \[borderStyle\], \[shadeAlternateRows\], \[rowHeader\], \[accessibilityText\], \[refreshAlways\], \[refreshAfter\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[userFilters\], \[showSearchBox\], \[showRefreshButton\], \[showExportButton\], \[recordActions\], \[openActionsIn\], \[actionsDisplay\], \[actionsStyle\], \[maxSelections\], \[showSelectionCount\], \[loadDataAsync\], \[similarityScoreThreshold\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!pane()](/suite/help/25.3/Pane_Component.html) |

Displays a pane within [a!paneLayout()](Pane_Layout.html).

 |

**a!pane**(_\[contents\], \[width\], \[backgroundColor\], \[showWhen\], \[padding\], \[accessibilityText\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!paneLayout()](/suite/help/25.3/Pane_Layout.html) |

Displays two or three vertical panes, each with independent scrolling. Can be used as a top-level layout, or in the contents parameter of a form or header content layout.

 |

**a!paneLayout**(_\[panes\], \[showWhen\], \[showPaneDividers\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!paragraphField()](/suite/help/25.3/Paragraph_Component.html) |

Displays and allows entry of multiple lines of text.

 |

**a!paragraphField**(_\[label\], \[instructions\], \[required\], \[readOnly\], \[disabled\], \[value\], \[validations\], \[saveInto\], \[refreshAfter\], \[labelPosition\], \[validationGroup\], \[requiredMessage\], \[height\], \[placeholder\], \[helpTooltip\], \[showWhen\], \[accessibilityText\], \[characterLimit\], \[showCharacterCount\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!pieChartField()](/suite/help/25.3/Pie_Chart_Component.html) |

Displays numerical data as slices of a single circle. Use a pie chart to graphically display parts of a whole.

 |

**a!pieChartField**(_\[label\], \[instructions\], \[series\], \[showDataLabels\], \[showTooltips\], \[showAsPercentage\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[colorScheme\], \[style\], \[seriesLabelStyle\], \[height\], \[data\], \[config\], \[refreshAlways\], \[refreshAfter\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[allowImageDownload\], \[loadDataAsync\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!pieChartConfig()](/suite/help/25.3/Pie_Chart_Config_Component.html) |

Contains configuration for how to display data in a pie chart.

 |

**a!pieChartConfig**(_\[primaryGrouping\], \[measures\], \[sort\], \[dataLimit\], \[link\]_)

 | Click on the function name for examples |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!processTaskLink()](/suite/help/25.3/Process_Task_Link_Component.html) |

Defines a link to a process task.

 |

**a!processTaskLink**(_\[label\], \[task\], \[showWhen\], \[openLinkIn\]_)

 | Click on the function name for examples. |  |

`-portal~om-crf-rcrf-pr-pe-pa` Incompatible Portals
Partially compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!progressBarField()](/suite/help/25.3/Progress_Bar_Component.html) |

Displays a completion percentage in bar style.

 |

**a!progressBarField**(_\[label\], \[instructions\], \[percentage\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[color\], \[showWhen\], \[style\], \[showPercentage\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!radioButtonFieldByIndex()](/suite/help/25.3/Radio_Button_By_Index_Component.html) |

Displays a limited set of choices from which the user must select one item and saves the index of the selected choice.

 |

**a!radioButtonFieldByIndex**(_\[label\], \[instructions\], \[required\], \[disabled\], \[choiceLabels\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[labelPosition\], \[choiceLayout\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[choiceStyle\], \[choicePosition\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!radioButtonField()](/suite/help/25.3/Radio_Button_Component.html) |

Displays a limited set of choices from which the user must select one item and saves a value based on the selected choice.

 |

**a!radioButtonField**(_\[label\], \[instructions\], \[required\], \[disabled\], \[choiceLabels\], \[choiceValues\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[labelPosition\], \[choiceLayout\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[choiceStyle\], \[spacing\], \[data\], \[sort\], \[marginAbove\], \[marginBelow\], \[choicePosition\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!radioButtonField\_23r3()](/suite/help/25.3/Radio_Button_Component_23r3.html) |

Displays a limited set of choices from which the user must select one item and saves a value based on the selected choice.

 |

**a!radioButtonField\_23r3**(_\[label\], \[instructions\], \[required\], \[disabled\], \[choiceLabels\], \[choiceValues\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[labelPosition\], \[choiceLayout\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[choiceStyle\], \[spacing\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!recordActionField()](/suite/help/25.3/Record_Action_Component.html) |

Displays a list of record actions with a consistent style. A record action is an end-user action configured within a [record type object](Record_Type_Object.html), such as a related action or record list action.

 |

**a!recordActionField**(_\[actions\], \[style\], \[display\], \[openActionsIn\], \[align\], \[accessibilityText\], \[showWhen\], \[securityOnDemand\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!recordActionField\_23r3()](/suite/help/25.3/Record_Action_Component_23r3.html) |

Displays a list of record actions with a consistent style. A record action is an end-user action configured within a [record type object](Record_Type_Object.html), such as a related action or record list action.

 |

**a!recordActionField\_23r3**(_\[actions\], \[style\], \[display\], \[openActionsIn\], \[align\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!recordActionItem()](/suite/help/25.3/Record_Action_Item_Component.html) |

Displays a record action defined within a record action field or a read-only grid that uses a record type as the data source. A record action is an end-user action configured within a record type object, such as a related action or a record list action.

 |

**a!recordActionItem**(_\[action\], \[identifier\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!recordLink()](/suite/help/25.3/Record_Link_Component.html) |

Defines a link to a record view. Record links must be used in a link parameter of another component, such as the links parameter in the link component.

 |

**a!recordLink**(_\[label\], \[recordType\], \[identifier\], \[dashboard\], \[showWhen\], \[openLinkIn\], \[targetLocation\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Pickers | Interface ComponentUsed to create Appian interfaces. | Pickers | [a!pickerFieldRecords()](/suite/help/25.3/Record_Picker_Component.html) |

Displays an autocompleting input for the selection of one or more records, filtered by a single record type. Suggestions and picker tokens use the title of the record.

 |

**a!pickerFieldRecords**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[placeholder\], \[maxSelections\], \[recordType\], \[filters\], \[value\], \[saveInto\], \[required\], \[requiredMessage\], \[readOnly\], \[disabled\], \[validations\], \[validationGroup\], \[accessibilityText\], \[showWhen\], \[showRecordLinks\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!pickerFieldRecords\_20r2()](/suite/help/25.3/Record_Picker_Component_20r2.html) |

Displays an autocompleting input for the selection of one or more records, filtered by a single record type. Suggestions and picker tokens use the title of the record. This is an older version of `a!pickerFieldRecords()`, which supports record type field references.

 |

**a!pickerFieldRecords\_20r2**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[placeholder\], \[maxSelections\], \[recordType\], \[filters\], \[value\], \[saveInto\], \[required\], \[requiredMessage\], \[readOnly\], \[disabled\], \[validations\], \[validationGroup\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!pickerFieldRecords\_22r1()](/suite/help/25.3/Record_Picker_Component_22r1.html) |

Displays an autocompleting input for the selection of one or more records, filtered by a single record type. Suggestions and picker tokens use the title of the record.

 |

**a!pickerFieldRecords\_22r1**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[placeholder\], \[maxSelections\], \[recordType\], \[filters\], \[value\], \[saveInto\], \[required\], \[requiredMessage\], \[readOnly\], \[disabled\], \[validations\], \[validationGroup\], \[accessibilityText\], \[showWhen\], \[showRecordLinks\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!recordsChatField()](/suite/help/25.3/Records_Chat_Component.html) |

Creates a chatbot for chatting on a record summary view.

 |

**a!recordsChatField**(_\[label\], \[labelPosition\], \[instructions\], \[additionalInstructions\], \[helpTooltip\], \[initialMessage\], \[suggestedQuestions\], \[recordType\], \[identifier\], \[fields\], \[relatedRecordData\], \[showWhen\], \[height\], \[buttonStyle\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!reportLink()](/suite/help/25.3/Report_Link_Component.html) |

Defines a link to a report.

 |

**a!reportLink**(_\[label\], \[report\], \[showWhen\], \[openLinkIn\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!richTextDisplayField()](/suite/help/25.3/Rich_Text_Component.html) |

Displays text in variety of styles, including bold, italics, underline, links, and numbered and bulleted lists.

 |

**a!richTextDisplayField**(_\[label\], \[labelPosition\], \[instructions\], \[align\], \[value\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[preventWrapping\], \[tooltip\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Charts | Interface ComponentUsed to create Appian interfaces. | Charts | [a!scatterChartField()](/suite/help/25.3/Scatter_Chart_Component.html) |

Displays the relationship between two numerical data points. Use a scatter chart to compare multiple values, visualize trends over time, and spot outliers.

 |

**a!scatterChartField**(_\[data\], \[label\], \[instructions\], \[xAxisTitle\], \[yAxisTitle\], \[xAxisMin\], \[xAxisMax\], \[yAxisMin\], \[yAxisMax\], \[referenceLines\], \[showDataLabels\], \[showLegend\], \[showTooltips\], \[allowDecimalAxisLabels\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[colorScheme\], \[height\], \[xAxisStyle\], \[yAxisStyle\], \[refreshAlways\], \[refreshInterval\], \[refreshOnReferencedVarChange\], \[refreshOnVarChange\], \[refreshAfter\], \[primaryGrouping\], \[secondaryGrouping\], \[xAxisMeasure\], \[yAxisMeasure\], \[sort\], \[dataLimit\], \[link\], \[allowImageDownload\], \[loadDataAsync\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!sectionLayout()](/suite/help/25.3/Section_Layout.html) |

This layout requires Appian for Mobile Devices version 17.2 or later. Displays any arrangement of layouts and components beneath a section title on an interface.

 |

**a!sectionLayout**(_\[label\], \[contents\], \[validations\], \[validationGroup\], \[isCollapsible\], \[isInitiallyCollapsed\], \[showWhen\], \[divider\], \[marginBelow\], \[accessibilityText\], \[labelIcon\], \[iconAltText\], \[labelSize\], \[labelHeadingTag\], \[labelColor\], \[dividerColor\], \[dividerWeight\], \[marginAbove\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!sectionLayout\_17r1()](/suite/help/25.3/Section_Layout_171.html) |

Displays one or two columns of related components beneath a section title on an interface.

 |

**a!sectionLayout\_17r1**( \[_label_\] , \[_firstColumnContents_\], \[_secondColumnContents_\], \[_validations_\], \[_validationGroup_\], \[_isCollapsible_\], \[_isInitiallyCollapsed_\] )

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!sideBySideItem()](/suite/help/25.3/Side_By_Side_Item.html) |

Displays one item within a side by side layout.

 |

**a!sideBySideItem**(_\[item\], \[width\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!sideBySideLayout()](/suite/help/25.3/Side_By_Side_Layout.html) |

Displays components alongside each other.

 |

**a!sideBySideLayout**(_\[items\], \[alignVertical\], \[showWhen\], \[spacing\], \[marginBelow\], \[stackWhen\], \[marginAbove\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!sidebarTemplate()](/suite/help/25.3/Sidebar_Template.html) |

A title bar template that displays a sidebar in a [form](Form_Layout.html) or [wizard](Wizard_Layout.html). On narrower screens, the sidebar automatically displays as a header. In wizard layouts with a vertical milestone, the sidebar displays the milestone.

 |

**a!sidebarTemplate**(_\[title\], \[secondaryText\], \[titleColor\], \[secondaryTextColor\], \[backgroundColor\], \[image\], \[imageSize\], \[width\], \[additionalContents\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!signatureField()](/suite/help/25.3/Signature_Component.html) |

Allows users to capture and save a .png signature file. To upload signatures outside of a [start form](process-model-object.html#process-start-form-tab) or [task](Tasks.html), use [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html) in the _saveInto_ parameter of a submit [button](Button_Component.html) or [link](Link_Component.html).

 |

**a!signatureField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[target\], \[fileName\], \[fileDescription\], \[value\], \[saveInto\], \[required\], \[requiredMessage\], \[buttonStyle\], \[buttonSize\], \[readOnly\], \[disabled\], \[validationGroup\], \[marginAbove\], \[marginBelow\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!stampField()](/suite/help/25.3/Stamp_Component.html) |

Displays an icon and/or text on a colored circular background.

 |

**a!stampField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[icon\], \[text\], \[backgroundColor\], \[contentColor\], \[size\], \[align\], \[tooltip\], \[showWhen\], \[accessibilityText\], \[link\], \[marginAbove\], \[marginBelow\], \[shape\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!startProcessLink()](/suite/help/25.3/Start_Process_Link_Component.html) |

Defines a link to start a process and navigates the user through any initial chained forms.

 |

**a!startProcessLink**(_\[label\], \[processModel\], \[processParameters\], \[bannerMessage\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!richTextIcon()](/suite/help/25.3/Styled_Icon_Component.html) |

Displays an icon for use in [rich text display](Rich_Text_Component.html).

 |

**a!richTextIcon**(_\[icon\], \[altText\], \[caption\], \[size\], \[color\], \[link\], \[linkStyle\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!richTextItem()](/suite/help/25.3/Styled_Text_Component.html) |

Displays a text item within a [rich text display](Rich_Text_Component.html) component.

 |

**a!richTextItem**(_\[text\], \[style\], \[size\], \[color\], \[link\], \[linkStyle\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!richTextItem\_18r1()](/suite/help/25.3/Styled_Text_Component_181.html) |

Displays styled text within a rich text component.

 |

**a!richTextItem\_18r1**( \[_Text_\], \[_style_\], \[_link_\], \[_linkStyle_\], \[_showWhen_\] )

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!styledTextEditorField()](/suite/help/25.3/Styled_Text_Editor_Component.html) |

Allows users to enter and view styled text. Text is stored with HTML formatting.

 |

**a!styledTextEditorField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[value\], \[saveInto\], \[readOnly\], \[required\], \[requiredMessage\], \[disabled\], \[validations\], \[validationGroup\], \[showWhen\], \[accessibilityText\], \[height\], \[sizeLimit\], \[placeholder\], \[allowedFormats\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!buttonWidgetSubmit() \[Deprecated\]](/suite/help/25.3/Submit_Button_Component.html) |  |  |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!submitLink()](/suite/help/25.3/Submit_Link_Component.html) |

Defines a link to trigger form submission.

 |

**a!submitLink**(_\[label\], \[confirmMessage\], \[confirmButtonStyle\], \[value\], \[saveInto\], \[skipValidation\], \[validationGroup\], \[confirmHeader\], \[confirmButtonLabel\], \[cancelButtonLabel\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal+om-crf-rcrf-pr-pe-pa` Incompatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!tagField()](/suite/help/25.3/Tag_Component.html) |

Displays a list of short text labels with colored background to highlight important attributes.

 |

**a!tagField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[tags\], \[align\], \[accessibilityText\], \[size\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!tagItem()](/suite/help/25.3/Tag_Item_Component.html) |

Displays a short text label with colored background for use with a!tagField.

 |

**a!tagItem**(_\[text\], \[backgroundColor\], \[textColor\], \[tooltip\], \[showWhen\], \[link\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component |  | Interface ComponentUsed to create Appian interfaces. |  | [a!tagItem\_24r2()](/suite/help/25.3/Tag_Item_Component_24r2.html) |

Displays a short text label with colored background for use with a!tagField.

 |

**a!tagItem\_24r2**(_\[text\], \[backgroundColor\], \[textColor\], \[tooltip\], \[showWhen\], \[recordLink\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Inputs | Interface ComponentUsed to create Appian interfaces. | Inputs | [a!textField()](/suite/help/25.3/Text_Component.html) |

Displays and allows entry of a single line of text.

 |

**a!textField**(_\[label\], \[instructions\], \[required\], \[readOnly\], \[disabled\], \[value\], \[validations\], \[saveInto\], \[refreshAfter\], \[validationGroup\], \[requiredMessage\], \[align\], \[labelPosition\], \[placeholder\], \[helpTooltip\], \[masked\], \[accessibilityText\], \[showWhen\], \[inputPurpose\], \[characterLimit\], \[showCharacterCount\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!timeDisplayField()](/suite/help/25.3/Time_Component.html) |

Displays a single time (hour, minute, second) but cannot take input.

 |

**a!timeDisplayField**(_\[label\], \[instructions\], \[value\], \[labelPosition\], \[helpTooltip\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!hierarchyBrowserFieldTree()](/suite/help/25.3/Tree_Browser_Component.html) |

Displays hierarchical data in the form of drillable tree.

 |

**a!hierarchyBrowserFieldTree**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[pathValue\], \[pathSaveInto\], \[nodeConfigs\], \[nextLevelValues\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!hierarchyBrowserFieldTreeNode()](/suite/help/25.3/Tree_Browser_Node_Component.html) |

Returns a Tree Node, used in the Node Configurations parameter of the Tree Browser Component to determine how items in the hierarchy are displayed.

 |

**a!hierarchyBrowserFieldTreeNode**(_\[id\], \[label\], \[description\], \[details\], \[image\], \[link\], \[isDrillable\], \[nextLevelCount\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!userBrowserFieldColumns()](/suite/help/25.3/User_Browser_Components.html) |

Displays group membership structure in columns. Users can navigate through the structure and select a single user.

 |

**a!userBrowserFieldColumns**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[rootGroup\], \[pathValue\], \[pathSaveInto\], \[selectionValue\], \[selectionSaveInto\], \[readOnly\], \[height\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!userImage()](/suite/help/25.3/User_Image_Component.html) |

Displays the profile photo of the user.

 |

**a!userImage**(_\[user\], \[altText\], \[caption\], \[link\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Pickers | Interface ComponentUsed to create Appian interfaces. | Pickers | [a!pickerFieldUsers()](/suite/help/25.3/User_Picker_Component.html) |

Displays an autocompleting input for the selection of one or more users.

 |

**a!pickerFieldUsers**(_\[label\], \[instructions\], \[required\], \[requiredMessage\], \[readOnly\], \[disabled\], \[maxSelections\], \[groupFilter\], \[value\], \[validations\], \[validationGroup\], \[saveInto\], \[labelPosition\], \[placeholder\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!userRecordLink()](/suite/help/25.3/User_Record_Link_Component.html) |

Defines a link to a user record. User record links must be used in a link parameter of another component, such as the links parameter in the link component.

 |

**a!userRecordLink**(_\[label\], \[user\], \[view\], \[showWhen\], \[openLinkIn\], \[targetLocation\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Browsers | Interface ComponentUsed to create Appian interfaces. | Browsers | [a!userAndGroupBrowserFieldColumns()](/suite/help/25.3/User_and_Group_Browser_Components.html) |

Displays group membership structure in columns. Users can navigate through the structure and select a single user or group.

 |

**a!userAndGroupBrowserFieldColumns**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[rootGroup\], \[pathValue\], \[pathSaveInto\], \[selectionValue\], \[selectionSaveInto\], \[readOnly\], \[height\], \[accessibilityText\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Pickers | Interface ComponentUsed to create Appian interfaces. | Pickers | [a!pickerFieldUsersAndGroups()](/suite/help/25.3/User_and_Group_Picker_Component.html) |

Displays an autocompleting input for selecting one or more users or groups.

 |

**a!pickerFieldUsersAndGroups**(_\[label\], \[instructions\], \[required\], \[readOnly\], \[disabled\], \[maxSelections\], \[groupFilter\], \[value\], \[validations\], \[saveInto\], \[validationGroup\], \[requiredMessage\], \[labelPosition\], \[placeholder\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!validationMessage()](/suite/help/25.3/Validation_Message.html) |

Configures a validation message for forms, sections, grids, and wizard steps.

 |

**a!validationMessage**(_\[message\], \[validateAfter\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!videoField()](/suite/help/25.3/Video_Component.html) |

Creates a Video component.

 |

**a!videoField**(_\[label\], \[labelPosition\], \[instructions\], \[videos\], \[helpTooltip\], \[accessibilityText\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!webContentField()](/suite/help/25.3/Web_Content_Component.html) |

Displays content inline from an external source.

 |

**a!webContentField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[showWhen\], \[source\], \[showBorder\], \[height\], \[altText\], \[disabled\], \[accessibilityText\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!webImage()](/suite/help/25.3/Web_Image_Component.html) |

Displays an image from the web.

 |

**a!webImage**(_\[source\], \[altText\], \[caption\], \[link\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!safeLink()](/suite/help/25.3/Web_Link_Component.html) |

Defines a link to an external web page.

 |

**a!safeLink**(_\[label\], \[uri\], \[showWhen\], \[openLinkIn\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr-pe-pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!webVideo()](/suite/help/25.3/Web_Video_Component.html) |

Displays a video from the web for use in a [video](Video_Component.html) component.

 |

**a!webVideo**(_\[source\], \[tooltip\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!wizardLayout()](/suite/help/25.3/Wizard_Layout.html) |

Displays a multi-step form with a step indicator. Use this as the top-level layout for complex forms to organize inputs into steps. Reference information about wizard steps using `fv!activeStepIndex`, `fv!isFirstStep`, and `fv!isLastStep`.

 |

**a!wizardLayout**(_\[titleBar\], \[isTitleBarFixed\], \[showTitleBarDivider\], \[backgroundColor\], \[style\], \[showWhen\], \[steps\], \[contentsWidth\], \[showStepHeadings\], \[focusOnFirstInput\], \[primaryButtons\], \[secondaryButtons\], \[showButtonDivider\], \[isButtonFooterFixed\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!wizardStep()](/suite/help/25.3/Wizard_Step_Component.html) |

Displays the components and layouts of a single wizard step within the Wizard Layout.

 |

**a!wizardStep**(_\[label\], \[instructions\], \[contents\], \[showWhen\], \[disableNextButton\], \[validations\], \[validationGroup\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Action | Interface ComponentUsed to create Appian interfaces. | Action | [a!authorizationLink()](/suite/help/25.3/authorization_link_component.html) |

Defines a link to authorize a user for a connected system that uses OAuth 2.0 Authorization Code grant.

 |

**a!authorizationLink**(_\[label\], \[connectedSystem\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!barOverlay()](/suite/help/25.3/bar-overlay.html) |

Displays a horizontal bar overlay for use in billboard layout.

 |

**a!barOverlay**(_\[position\], \[contents\], \[showWhen\], \[style\], \[padding\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!cardTemplateBarTextStacked()](/suite/help/25.3/card-choices-bars-text-stacked.html) |

Displays a bar card template with an icon and stacked primary text and secondary text. For use in the [Card Choice Field](card-choices-component.html) _cardTemplate_ parameter.

 |

**a!cardTemplateBarTextStacked**(_\[id\], \[primaryText\], \[secondaryText\], \[icon\], \[iconColor\], \[iconAltText\], \[tooltip\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!cardTemplateBarTextJustified()](/suite/help/25.3/card-choices-bars.html) |

Displays a bar card template with an icon, primary text, and secondary text justified on either side of the card. For use in the [Card Choice Field](card-choices-component.html) _cardTemplate_ parameter.

 |

**a!cardTemplateBarTextJustified**(_\[id\], \[primaryText\], \[secondaryText\], \[icon\], \[iconColor\], \[iconAltText\], \[tooltip\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!cardChoiceField()](/suite/help/25.3/card-choices-component.html) |

Displays a set of cards from which the user may select one or many cards and saves a value based on the selected choice.

 |

**a!cardChoiceField**(_\[label\], \[labelPosition\], \[instructions\], \[helpTooltip\], \[data\], \[sort\], \[cardTemplate\], \[value\], \[saveInto\], \[maxSelections\], \[align\], \[showShadow\], \[required\], \[requiredMessage\], \[disabled\], \[validations\], \[validationGroup\], \[showWhen\], \[accessibilityText\], \[spacing\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Selection | Interface ComponentUsed to create Appian interfaces. | Selection | [a!cardTemplateTile()](/suite/help/25.3/card-choices-tiles.html) |

Displays a tile card template with a stacked icon, primary text, and secondary text. For use in the [Card Choice Field](card-choices-component.html) _cardTemplate_ parameter.

 |

**a!cardTemplateTile**(_\[id\], \[primaryText\], \[secondaryText\], \[icon\], \[iconColor\], \[iconAltText\], \[tooltip\], \[showWhen\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!cardGroupLayout()](/suite/help/25.3/card-group-layout.html) |

Displays an arrangement of cards, with the same width and height.

 |

**a!cardGroupLayout**(_\[label\], \[labelPosition\], \[helpTooltip\], \[cards\], \[spacing\], \[cardWidth\], \[fillContainer\], \[cardHeight\], \[showWhen\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!cardLayout()](/suite/help/25.3/card_layout.html) |

Displays any arrangement of layouts and components within a card on an interface. Can be styled or linked.

 |

**a!cardLayout**(_\[contents\], \[link\], \[height\], \[style\], \[showBorder\], \[showShadow\], \[tooltip\], \[showWhen\], \[marginBelow\], \[accessibilityText\], \[padding\], \[shape\], \[marginAbove\], \[decorativeBarPosition\], \[decorativeBarColor\], \[borderColor\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!columnOverlay()](/suite/help/25.3/column-overlay.html) |

Displays a vertical column overlay for use in billboard layout.

 |

**a!columnOverlay**(_\[alignVertical\], \[position\], \[width\], \[contents\], \[showWhen\], \[style\], \[padding\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Layouts | Interface ComponentUsed to create Appian interfaces. | Layouts | [a!fullOverlay()](/suite/help/25.3/full-overlay.html) |

Displays an overlay that covers the entire billboard layout.

 |

**a!fullOverlay**(_\[alignVertical\], \[contents\], \[showWhen\], \[style\], \[padding\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Interface Component | Display | Interface ComponentUsed to create Appian interfaces. | Display | [a!headingField()](/suite/help/25.3/heading-component.html) |

Displays a heading with configurations for the color, size, and font weight. Also supports heading accessibility tags, which are used by screen readers and produce no visible change.

 |

**a!headingField**(_\[text\], \[size\], \[headingTag\], \[color\], \[fontWeight\], \[Link\], \[showWhen\], \[align\], \[marginAbove\], \[marginBelow\]_)

 | Click on the function name for examples. |  |

`+portal+om-crf-rcrf-pr-pe-pa` Compatible Portals
Compatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!addAdminsToGroup()](/suite/help/25.3/Add_Group_Admins_Smart_Service.html) |

The Add Group Admins node allows you to give users the right to be the administrator of a group.

 |

**a!addAdminsToGroup**(_\[group\], \[newAdministrators\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!addMembersToGroup()](/suite/help/25.3/Add_Group_Members_Smart_Service.html) |

The Add Group Members smart service allows you to add a user (or users) to a group as a step in your process.

 |

**a!addMembersToGroup**(_\[group\], \[newMembers\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!createUser()](/suite/help/25.3/Add_User_Smart_Service.html) |

The Create User Node allows you to create new users on the system while executing your process application.

 |

**a!createUser**(_\[username\], \[firstName\], \[nickname\], \[middleName\], \[lastName\], \[email\], \[sendAccountCreationEmail\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Process Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Process Management | [a!cancelProcess()](/suite/help/25.3/Cancel_Process_Smart_Service.html) |

The Cancel Process Smart Service allows you to halt all process flow and cancel all tasks associated with a process.

 |

**a!cancelProcess**(_\[processId\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!cancelProcess\_17r3()](/suite/help/25.3/Cancel_Process_Smart_Service_17r3.html) |

The Cancel Process Smart Service allows you to halt all process flow and cancel all tasks associated with a process.

 |

**a!cancelProcess\_17r3**(_\[processId\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!updateUserType()](/suite/help/25.3/Change_User_Type_Smart_Service.html) |

The Change User Type Smart Service allows you to select a user and change the user's type from a Basic User to a System Administrator or from a System Administrator back to a Basic User.

 |

**a!updateUserType**(_\[user\], \[newUserType\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Process Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Process Management | [a!completeTask()](/suite/help/25.3/Complete_Task_Smart_Service.html) |

The Complete Task Smart Service allows you to complete a task belonging to another process from your current process.

 |

**a!completeTask**(_\[taskId\], \[taskInputs\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!createFolder()](/suite/help/25.3/Create_Folder_Smart_Service.html) |

The Create Folder smart service allows you to create a folder to store files within the Appian file system.

 |

**a!createFolder**(_\[name\], \[parentFolder\], \[parentKnowledgeCenter\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!createGroup()](/suite/help/25.3/Create_Group_Smart_Service.html) |

The Create Group smart service allows you to add new groups at runtime via process model.

 |

**a!createGroup**(_\[name\], \[description\], \[groupType\], \[delegatedCreation\], \[parent\], \[membershipPolicy\], \[securityType\], \[groupPrivacy\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!createKnowledgeCenter()](/suite/help/25.3/Create_Knowledge_Center_Smart_Service.html) |

A knowledge center is a second-level container in Appian Document Management (below Communities).

 |

**a!createKnowledgeCenter**(_\[name\], \[description\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!createKnowledgeCenter\_17r4()](/suite/help/25.3/Create_Knowledge_Center_Smart_Service_17r4.html) |

A knowledge center is a second-level container in Appian Document Management (below Communities).

 |

**a!createKnowledgeCenter\_17r4**(_\[name\], \[description\], \[securityLevel\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!deactivateUser()](/suite/help/25.3/Deactivate_User_Smart_Service.html) |

The Deactivate User smart service allows you to select an existing user and disable them from the system.

 |

**a!deactivateUser**(_\[user\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!deleteDocument()](/suite/help/25.3/Delete_Document_Smart_Service.html) |

The Delete Document node allows you to select a document and then completely remove it from a Knowledge Center or Folder, as well as the server file system.

 |

**a!deleteDocument**(_\[document\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!deleteFolder()](/suite/help/25.3/Delete_Folder_Smart_Service.html) |

The Delete Folder node allows you to select a folder and then completely remove it from the system, along with its sub-folders.

 |

**a!deleteFolder**(_\[folder\], \[deleteSubfolders\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!deleteGroup()](/suite/help/25.3/Delete_Group_Smart_Service.html) |

The Delete Group smart service allows you to select a group and remove it from the system.

 |

**a!deleteGroup**(_\[group\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!deleteKnowledgeCenter()](/suite/help/25.3/Delete_KC_Smart_Service.html) |

The Delete KC node allows you to select a Knowledge Center and then completely remove it from the system, along with any child folders.

 |

**a!deleteKnowledgeCenter**(_\[knowledgeCenter\], \[deleteSubfolders\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Data Services | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Data Services | [a!deleteRecords()](/suite/help/25.3/Delete_Records_Smart_Service.html) |

The Delete Records smart service is a powerful tool that allows you to easily delete data from the source system and then automatically sync the changes in Appian.

 |

**a!deleteRecords**(_\[records\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!deleteRecords\_23r3()](/suite/help/25.3/Delete_Records_Smart_Service_23r3.html) |

The Delete Records (23.3) smart service is a powerful tool that allows you to easily delete data from the source system and then automatically sync the changes in Appian.

 |

**a!deleteRecords\_23r3**(_\[records\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Data Services | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Data Services | [a!deleteFromDataStoreEntities()](/suite/help/25.3/Delete_from_Data_Store_Entities_Smart_Service.html) |

The Delete from Data Store Entities Smart Service lets you delete data in multiple data store entities within the same data store based on your input.

 |

**a!deleteFromDataStoreEntities**(_\[dataToDelete\], \[deletionComment\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!editDocumentProperties()](/suite/help/25.3/Edit_Document_Properties_Smart_Service.html) |

The Edit Document Properties node allows you to update the name and description of a selected document.

 |

**a!editDocumentProperties**(_\[document\], \[name\], \[description\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!editGroup()](/suite/help/25.3/Edit_Group_Smart_Service.html) |

The Edit Group smart service allows you to select a group and update any of its available fields, including its name, description, and parent group.

 |

**a!editGroup**(_\[group\], \[name\], \[description\], \[delegatedCreation\], \[parent\], \[membershipPolicy\], \[securityType\], \[groupPrivacy\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!editKnowledgeCenterProperties()](/suite/help/25.3/Edit_KC_Smart_Service.html) |

The Edit KC node lets you update the name, description and/or expiration date of a selected Knowledge Center.

 |

**a!editKnowledgeCenterProperties**(_\[knowledgeCenter\], \[name\], \[description\], \[expirationDays\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Data Services | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Data Services | [a!executeStoredProcedureOnSave()](/suite/help/25.3/Execute_Stored_Procedure_Smart_Service.html) |

The Execute Stored Procedure smart service lets you execute a stored procedure that is defined on any of the Appian supported relational databases that you have connected to.

 |

**a!executeStoredProcedureOnSave**(_\[dataSource\], \[procedureName\], \[inputs\], \[timeout\], \[autoCommit\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Generation | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Generation | [a!exportProcessReportToCsv()](/suite/help/25.3/Export_Process_Report_CSV_Smart_Service.html) |

The Export Process Reports to CSV Smart Service allows designers to safely export large datasets.

 |

**a!exportProcessReportToCsv**(_\[report\], \[filters\], \[context\], \[documentName\], \[documentDescription\], \[saveInFolder\], \[documentToUpdate\], \[includeHeader\], \[csvDelimiter\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Generation | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Generation | [a!exportProcessReportToExcel()](/suite/help/25.3/Export_Process_Report_Excel_Smart_Service.html) |

The Export Process Report to Excel Smart Service allows designers to safely export large amounts of data from process reports.

 |

**a!exportProcessReportToExcel**(_\[report\], \[filters\], \[context\], \[documentName\], \[documentDescription\], \[saveInFolder\], \[documentToUpdate\], \[includeHeader\], \[sheetName\], \[sheetNumber\], \[startingCell\], \[customCellPositions\], \[customCellValues\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Generation | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Generation | [a!exportDataStoreEntityToCsv()](/suite/help/25.3/Export_To_CSV_Smart_Service.html) |

The Export Data Store Entity to CSV Smart Service allows designers to safely export large datasets.

 |

**a!exportDataStoreEntityToCsv**(_\[entity\], \[selection\], \[aggregation\], \[filters\], \[documentName\], \[documentDescription\], \[saveInFolder\], \[documentToUpdate\], \[includeHeader\], \[csvDelimiter\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Generation | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Generation | [a!exportDataStoreEntityToExcel()](/suite/help/25.3/Export_To_Excel_Smart_Service.html) |

The Export Data Store Entity to Excel Smart Service allows designers to safely export large datasets.

 |

**a!exportDataStoreEntityToExcel**(_\[entity\], \[selection\], \[aggregation\], \[filters\], \[documentName\], \[documentDescription\], \[saveInFolder\], \[documentToUpdate\], \[includeHeader\], \[sheetName\], \[sheetNumber\], \[startingCell\], \[customCellPositions\], \[customCellValues\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Deprecated一 |  | \[Deprecated\]These functions have been deprecated and will be removed in a future release of Appian. |  | [a!sapInvokeWithCommit() \[Deprecated\]](/suite/help/25.3/Invoke_SAP_BAPI_Smart_Service.html) |

The Invoke SAP BAPI Smart Service allows designers to safely invoke BAPIs with side effects in process.

 |

**a!sapInvokeWithCommit**(_\[scsExternalSystemKey\], \[usePerUserCredentials\], \[hostname\], \[clientNumber\], \[systemNumber\], \[bapi\], \[importParameters\], \[tableParameters\], \[connectionProperties\], \[commitTransaction\], \[onSuccess\], \[onError\]_)

 |  |  |

`-portal-om-crf-rcrf-pr-pe-pa` Incompatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!lockDocument()](/suite/help/25.3/Lock_Document_Smart_Service.html) |

The Lock Document node allows you to select and check out a document so that no one else can upload a new version until it has been unlocked.

 |

**a!lockDocument**(_\[document\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!modifyFolderSecurity()](/suite/help/25.3/Modify_Folder_Security_Smart_Service.html) |

The Modify Folder Security smart service allows you to select a user to be added to a specified folder as a reader, author, and/or administrator.

 |

**a!modifyFolderSecurity**(_\[folder\], \[readers\], \[authors\], \[administrators\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!modifyKnowledgeCenterSecurity()](/suite/help/25.3/Modify_KC_Security_Smart_Service.html) |

The Modify KC Security node allows you to select users and groups to be added to a Knowledge Center with one of a specific set of security roles.

 |

**a!modifyKnowledgeCenterSecurity**(_\[knowledgeCenter\], \[readers\], \[authors\], \[administrators\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!modifyUserSecurity()](/suite/help/25.3/Modify_User_Security_Smart_Service.html) |

This smart service allows you to overwrite a specific user's entire role map with different users and groups.

 |

**a!modifyUserSecurity**(_\[group\], \[administrators\], \[editors\], \[viewers\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!moveDocument()](/suite/help/25.3/Move_Document_Smart_Service.html) |

The Move Document smart service allows you to select a document and move it to a different [document folder](folder-object.html#document-folders) or [Knowledge Center](folder-object.html#knowledge-centers).

 |

**a!moveDocument**(_\[document\], \[destination\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!moveFolder()](/suite/help/25.3/Move_Folder_Smart_Service.html) |

The Move Folder node allows you to select a folder and move it to a new Knowledge Center or folder (which must already exist).

 |

**a!moveFolder**(_\[folder\], \[destinationFolder\], \[destinationKC\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!reactivateUser()](/suite/help/25.3/Reactivate_User_Smart_Service.html) |

The Reactivate User smart service allows you to select a user whose access to the system was previously disabled and re-enable the user account.

 |

**a!reactivateUser**(_\[user\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!removeGroupAdmins()](/suite/help/25.3/Remove_Group_Admins_Smart_Service.html) |

The Remove Group Admins node allows you to select one or more users within a group who have administrative rights over the group, and remove those rights.

 |

**a!removeGroupAdmins**(_\[group\], \[administratorsToRemove\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!removeGroupMembers()](/suite/help/25.3/Remove_Group_Members_Smart_Service.html) |

The Remove Group Members node allows you to select a user within a group, and remove that user from the group.

 |

**a!removeGroupMembers**(_\[group\], \[members\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!editFolderProperties()](/suite/help/25.3/Rename_Folder_Smart_Service.html) |

The Rename Folder node allows you to select a folder and rename it.

 |

**a!editFolderProperties**(_\[folder\], \[name\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!renameUsers()](/suite/help/25.3/Rename_Users_Smart_Service.html) |

The Rename Users Node allows you to rename existing users on the system while executing your process application.

 |

**a!renameUsers**(_\[oldUsernames\], \[newUsernames\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Communication | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Communication | [a!sendPushNotification()](/suite/help/25.3/Send_Push_Notification_Smart_Service.html) |

The Send Push Notification smart service is used to send notifications to one or more Appian for Mobile Devices application users

 |

**a!sendPushNotification**(_\[recipients\], \[title\], \[body\], \[link\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr-pe-pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Incompatible Process Events
Incompatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!setGroupAttributes()](/suite/help/25.3/Set_Group_Attributes_Smart_Service.html) |

The Set Group Attributes smart service allows you to modify attribute values for the selected group.

 |

**a!setGroupAttributes**(_\[group\], \[attributes\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Process Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Process Management | [a!startProcess()](/suite/help/25.3/Start_Process_Smart_Service.html) |

The Start Process Smart Service allows you to initiate a process from another process, a web API, or an interface.

 |

**a!startProcess**(_\[processModel\], \[processParameters\], \[isSynchronous\], \[onSuccess\], \[onError\], \[onIncomplete\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr~pe+pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Process Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Process Management | [a!startProcess\_24r3()](/suite/help/25.3/Start_Process_Smart_Service_24r3.html) |

The Start Process Smart Service (24.3) allows you to initiate a process from another process, a web API, or an interface.

 |

**a!startProcess\_24r3**(_\[processModel\], \[processParameters\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`+portal-om-crf-rcrf-pr~pe+pa` Compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Testing | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Testing | [a!startRuleTestsAll()](/suite/help/25.3/Start_Rule_Tests_All_Smart_Service.html) |

Executes test cases configured for all expression rules within an Appian system from web APIs and Interfaces

 |

**a!startRuleTestsAll**(_\[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Testing | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Testing | [a!startRuleTestsApplications()](/suite/help/25.3/Start_Rule_Tests_Applications_Smart_Service.html) |

Executes the test cases configured for all expression rules in the specified Appian application(s) from web APIs and interfaces.

 |

**a!startRuleTestsApplications**(_\[applications\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Data Services | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Data Services | [a!syncRecords()](/suite/help/25.3/Sync_Records_Smart_Service.html) |

The Sync Records smart service allows you to sync a record or set of records in the specified record type.

 |

**a!syncRecords**(_\[recordType\], \[identifiers\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!syncRecords\_22r2()](/suite/help/25.3/Sync_Records_Smart_Service_22r2.html) |

The Sync Records smart service allows you to sync a record or set of records in the specified record type.

 |

**a!syncRecords\_22r2**(_\[recordType\], \[identifiers\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Document Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Document Management | [a!unlockDocument()](/suite/help/25.3/Unlock_Document_Smart_Service.html) |

The Unlock Document node allows you to select a document that has previously been locked and alter the settings so that it becomes accessible.

 |

**a!unlockDocument**(_\[document\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Identity Management | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Identity Management | [a!updateUserProfile()](/suite/help/25.3/Update_User_Profile_Smart_Service.html) |

The Update User Profile Service Node allows you to update a selected user's personal data, including their name, address, phone number, supervisor and title.

 |

**a!updateUserProfile**(_\[group\], \[overwriteAllFields\], \[firstName\], \[middleName\], \[lastName\], \[nickname\], \[supervisor\], \[title\], \[email\], \[officePhone\], \[mobilePhone\], \[homePhone\], \[address1\], \[address2\], \[address3\], \[city\], \[state\], \[province\], \[zipCode\], \[country\], \[locale\], \[timeZone\], \[calendar\], \[customField1\], \[customField2\], \[customField3\], \[customField4\], \[customField5\], \[customField6\], \[customField7\], \[customField8\], \[customField9\], \[customField10\], \[onSuccess\], \[onError\*\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Data Services | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Data Services | [a!writeRecords()](/suite/help/25.3/Write_Records_Smart_Service.html) |

The Write Records smart service is a powerful tool that allows you to easily insert or update data in your source system and then automatically sync those changes in Appian.

 |

**a!writeRecords**(_\[records\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!writeRecords\_23r2()](/suite/help/25.3/Write_Records_Smart_Service_23r2.html) |

The Write Records smart service is a powerful tool that allows you to easily insert or update data in your source system and then automatically sync those changes in Appian.

 |

**a!writeRecords\_23r2**(_\[records\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| 一Old Versions一 |  | \[Old Versions\]These are older functions that have been replaced by newer versions. |  | [a!writeRecords\_23r4()](/suite/help/25.3/Write_Records_Smart_Service_23r4.html) |

The Write Records smart service is a powerful tool that allows you to easily insert or update data in your source system and then automatically sync those changes in Appian.

 |

**a!writeRecords\_23r4**(_\[records\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Data Services | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Data Services | [a!writeToDataStoreEntity()](/suite/help/25.3/Write_to_Data_Store_Entity_Smart_Service.html) |

The Write to Data Store Entity Smart Service adds process data to an entity in a Data Store.

 |

**a!writeToDataStoreEntity**(_\[dataStoreEntity\], \[valueToStore\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |
| Smart Service | Data Services | Smart ServiceUsed within an interface component or Web API to execute a particular Appian Smart Service. | Data Services | [a!writeToMultipleDataStoreEntities()](/suite/help/25.3/Write_to_Multiple_Data_Store_Entities_Smart_Service.html) |

The Write to Multiple Data Store Entities Smart Service writes multiple CDT values to multiple entities within the same data store based on your input.

 |

**a!writeToMultipleDataStoreEntities**(_\[valuesToStore\], \[onSuccess\], \[onError\]_)

 | Click on the function name for examples. |  |

`~portal-om-crf-rcrf-pr~pe+pa` Partially compatible Portals
Incompatible Offline Mobile
Incompatible Sync-Time Custom Record Fields
Incompatible Real-Time Custom Record Fields
Incompatible Process Reports
Partially compatible Process Events
Compatible Process Autoscaling

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...