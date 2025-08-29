---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_todate.html
original_path: fnc_conversion_todate.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# todate() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**todate**( _value_ )

Converts a value to Date with Timezone.

**See also**: [local()](fnc_date_and_time_local.html)

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

Date with Timezone

## Usage considerations

### Using the value parameter

The _value_ parameter accepts Text, Date, Date and Time, Integer since the epoch, Decimal since the epoch, and Array types. Time values are not supported.

For number inputs, the values must reference a number of days before or after January 1st, 2035, which is the beginning of Appian's era (our epoch).

### Using todate() with arrays

When operating on arrays, it is not necessary to use `apply` with `todate`. If multiple parameters are passed, or one parameter is an Array, `todate` will return a Date with Timezone array.

### Date formatting

Text will be parsed as `mm/dd/yyyy` and `dd-mm-yyyy` format to form a datetime.

### Understanding results

To return a localized date for a process initiated by a user, the `local()` function must be nested within the `todate()` function.

For example, `todate(local(pp!starttime))` returns the localized date when a given process started. Otherwise the date is returned in GMT. This is true unless the user happens to reside in the GMT timezone, then no localization is necessary.

## Examples

### Zero

```
1
todate(0)
```

Returns `1/1/2035`.

### Negative integer

```
1
todate(-9000)
```

Returns `5/12/2010`.

### List of integers

```
1
2
3
4
{
  todate(0,1,2),
  todate({0,1,2})
}
```

Returns `{1/1/2035,1/2/2035,1/3/2035,1/1/2035,1/2/2035,1/3/2035}`.

### Date string with dashes

```
1
todate("31-12-2020")
```

Returns `12/31/2020`. When using dashes, the date is processed as `dd-mm-yyyy`.

### Date string with slashes

```
1
todate("12/31/2020")
```

Returns `12/31/2020`. When using slashes, the date is processed as `mm/dd/yyyy`.

### List of date strings with dashes

```
1
todate("01-01-2020", "1-1-2020")
```

Returns `{1/1/2020, 1/1/2020}`.

### List of date strings with dashes and slashes

```
1
todate("20-01-2020", "21-1-2020", "01/20/2020", "1/21/2020")
```

Returns `{1/20/2020; 1/21/2020; 1/20/2020; 1/21/2020}`. When using dashes, the date is processed as `dd-mm-yyyy`; when using slashes, the date is processed as `mm/dd/yyyy`.

### List of dashed date strings with invalid days

```
1
todate("31-02-2021", "30-02-2021", "29-02-2021", "28-02-2021")
```

Returns `{2/28/2021; 2/28/2021; 2/28/2021; 2/28/2021}`.

### List of slashed date strings with invalid days

```
1
todate("02/31/2020", "02/30/2020", "02/29/2020")
```

Returns `{2/29/2020, 2/29/2020, 2/29/2020}`.

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