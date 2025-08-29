---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_todatetime.html
original_path: fnc_conversion_todatetime.html
version: "25.3"
title: "todatetime() Function"
page_id: "fnc_conversion_todatetime"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# todatetime() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**todatetime**( _value_ )

Converts a value to Date and Time with Timezone.

**See also**: [datetime()](fnc_date_and_time_datetime.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

Value to convert.

 |

## Returns

Datetime

## Usage considerations

### Using todatetime() with arrays

When operating on arrays, it is not necessary to use `apply` with `todatetime`. If multiple parameters are passed, or one parameter is an Array, `todatetime` will return a Datetime Array.

### Date formatting

Text will be parsed in `m/d/y` and `d-m-y` format to form a datetime.

### Time zones

When datetime values are presented to users in the interface, they are localized to the current user's timezone. This can cause the expected output to vary significantly. Additionally, the acronym of the local timezone (such as EST) is appended to a displayed datetime value when it appears in a form, an alert, or in an email.

## Examples

### Date value

```
1
todatetime(date(2005,12,13))
```

Returns `12/13/05 12:00 AM GMT`.

### Date string with slashes

```
1
todatetime("12/13/2005")
```

Returns `12/13/05 12:00 AM GMT`.

### List of date strings with slashes

```
1
2
3
4
{
  todatetime("12/13/2005","12/14/2005"),
  todatetime({"12/13/2005","12/14/2005"})
}
```

Returns `{12/13/05 12:00 AM GMT,12/14/05 12:00 AM GMT,12/13/05 12:00 AM GMT,12/14/05 12:00 AM GMT}`.

### List of integer values

```
1
2
3
4
{
  todatetime(0, 1, 2)
  todatetime({0, 1, 2})
}
```

Returns `1/1/2035 12:00 AM GMT; 1/2/2035 12:00 AM GMT; 1/3/2035 12:00 AM GMT, 1/1/2035 12:00 AM GMT; 1/2/2035 12:00 AM GMT; 1/3/2035 12:00 AM GMT`.

### List of date strings with slashes and dashes

```
1
todatetime("10/28/2020", "28-10-2020")
```

Returns {`10/28/2020 12:00 AM GMT`, `10/28/2020 12:00 AM GMT`}. When using dashes, the date is processed as `dd-mm-yyyy`; when using slashes, the date is processed as `mm/dd/yyyy`.

### List of dashed date strings with invalid days

A day reference is invalid when the day is in the allowed range (1-31), but the day does not exist in the specified month and year. For example, February 29th is a valid day if the year is a leap year, but it is invalid otherwise. April 31st is an invalid day in any year.

If a _value_ includes an invalid day, Appian will round to the nearest valid date.

#### Non-leap year

```
1
todatetime("31-02-2021", "30-02-2021", "29-02-2021", "28-02-2021")
```

Returns `{2/28/2021 12:00 AM GMT, 2/28/2021 12:00 AM GMT, 2/28/2021 12:00 AM GMT, 2/28/2021 12:00 AM GMT}` because February 28th is the last valid day of the month in a non-leap year.

#### Leap year

```
1
todatetime("31-02-2020", "30-02-2020", "29-02-2020", "28-02-2020")
```

Returns `{2/29/2020 12:00 AM GMT+00:00; 2/29/2020 12:00 AM GMT+00:00; 2/29/2020 12:00 AM GMT+00:00; 2/28/2020 12:00 AM GMT+00:00}`. The first two _values_ are rounded to February 29th, the last valid day in a leap year.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Compatible |
Can be used to create a custom record field that only [evaluates at sync time](custom-record-fields.html#prodlink-sync-time-evaluations).

 |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Compatible |  |
| Process Events | Compatible |

Can be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...