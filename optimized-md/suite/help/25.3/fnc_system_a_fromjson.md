---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_fromjson.html
original_path: fnc_system_a_fromjson.html
version: "25.3"
title: "a!fromJson() Function"
page_id: "fnc_system_a_fromjson"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!fromJson() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!fromJson**( _jsonText_ )

Converts a JSON string into an Appian value.

**See also:** [Appian Data Types](Appian_Data_Types.html#date-and-time)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`jsonText`

 |

_Text_

 |

The text to convert from a JSON string to an Appian value.

 |

## Returns

One of:

-   Dictionary
-   List of Integer
-   List of Decimal
-   List of Text
-   List of Dictionary
-   List of Boolean
-   List of Variant

## Usage considerations

### Automatic casting

Certain JSON formats will be converted to [Appian Data Types](Appian_Data_Types.html). See the following table for a list of the JSON formats and their associated data types.

| JSON Format | Appian Date Type |
| --- | --- |
| String | Date (when [supported date format](#date-and-datetime-formats) is found)
Date and Time (when [supported datetime format](#date-and-datetime-formats) is found)
Text (when no supported date or datetime format is found) |
| Number | Decimal (when number is a decimal)
Integer (when number is an integer that fits in a signed 32-bit integer)
Text (when number is an integer that doesn’t fit in a signed 32-bit integer, such as 64-bit integers) |
| Object | Dictionary |
| Array | List of Variant |
| Boolean | Boolean |
| Null | null (Text) |

See the [example](#example) below for an example of how these values are converted.

### Cast to a record type

This example shows how to cast a JSON string to the Address record type. When casting JSON data to a record type, Appian automatically matches the keys to the record type's fields. Any non-matching key names are ignored.

```
1
2
3
4
5
6
7
cast(
  recordType!Address,
  a!fromJson(
      "{""addressId"":301,""addressLine"":""7950 Jones Branch Dr"",
      ""city"":""McLean"",""stateProvinceId"":75,""postalCode"":""22102""}"
  )
)
```

### Date and datetime formats

If the JSON text includes fields that match the following date and datetime formats, they will be automatically detected and converted to the appropriate Date or Date and Time data type. The following table lists the supported date and datetime formats that will be converted to Appian data types.

| Supported Format | Example |
| --- | --- |
| ISO Date | 2019-03-25 |
| Date with UTC Timezone | 2019-03-25Z |
| Datetime without Timezone | 2019-03-25T20:17:46 |
| UTC Datetime | 2019-03-25T20:17:46Z |
| UTC Datetime without Seconds | 2019-03-25T20:17Z |
| UTC Datetime with Decimal Fraction of a Second | 2019-03-25T20:17:46.384Z |
| Offset Datetime | 2019-03-25T20:17:46+01:00 |
| Offset Datetime Hour Only | 2019-03-25T20:17:46+01 |
| Offset Datetime No Colon | 2019-03-25T20:17:46+0100 |
| Offset Datetime with ZoneId | 2019-03-25T20:17:46+01:00\[Europe/Paris\] |

Note that the Appian Date and Time data type does not include seconds. If the JSON field includes seconds, it will be ignored.

Also, if a timezone is not explicitly stated, it is assumed to be in Universal Time Coordinated (UTC)/Greenwich Mean Time (GMT). However, it is adjusted to the logged in user's time zone (accounting for daylight saving time) when displayed.

For example **2019-03-25T20:17:46** displays as **3/25/2019 4:17 PM EDT** for a user whose time zone is set to **(UTC-05:00) Eastern Time (America/New\_York)** and **3/25/2019 8:17 PM GMT+00:00** for a user whose time zone is set to **Use system default: (UTC) Greenwich Mean Time (GMT)**.

## Example

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
a!fromJson("[{
  ""transId"":9223372036854775807,
  ""submitTimeUTC"":""2019-07-16T14:52:26Z"",
  ""submitTimeLocal"":""2019-07-16T07:52:26"",
  ""transactionOk"":true,
  ""accountType"":""Visa"",
  ""accountNumber"":123456,
  ""settleAmount"":412.97,
  ""product"":"""",
  ""marketType"":[""Business"",""Clothing"",""Child""]
}]")
```

**Returns**

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
List of Dictionary: 1 item
    Dictionary
        /*64-Bit Integer converted to Text*/
        transId: "9223372036854775807"
        /*UTC Datetime without Seconds converted to Date and Time*/
        submitTimeUTC: 7/16/2019 10:52 AM EDT
        /*Datetime without Timezone converted to Date and Time*/
        submitTimeLocal: 7/16/2019 3:52 AM EDT
        /*Boolean data type*/
        transactionOk: true
        /*Text data type*/
        accountType: "Visa"
        /*Number(Integer) data type*/
        accountNumber: 123456
        /*Number(Decimal) data type*/
        settleAmount: 412.97
        /*Null value*/
        product: null (Text)
        /*Array*/
        marketType: List of Text String: 3 items
            "Business"
            "Clothing"
            "Child"
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Incompatible |  |
| Offline Mobile | Incompatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |
Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Old versions

There are older versions of this function . You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!fromJson\_19r2](/suite/help/25.3/fnc_system_a_fromjson_19r2.html) |
Now automatically converts date and datetime fields to the appropriate Date and Date and Time data types instead of a string. Also converts 64-bit integers to string instead of returning null.

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...