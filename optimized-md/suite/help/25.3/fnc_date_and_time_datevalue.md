---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_datevalue.html
original_path: fnc_date_and_time_datevalue.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# datevalue() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**datevalue**( _value_ )

Converts a value to a date.

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

The _value_ parameter accepts Text, Date, Date and Time, Integer since the epoch, Decimal since the epoch, and Array types. Time values are not supported.

When operating on arrays, it is not necessary to use `apply` with `datevalue`. If multiple parameters are passed, or one parameter is an Array, `datevalue` will return a Date with Timezone array.

For number inputs, the values must reference a number of days before or after January 1st, 2035, which is the beginning of Appian's era (our epoch).

To return a localized date for a process initiated by a user, the `local()` function must be nested within the `datevalue()` function.

For example, `datevalue(local(pp!starttime))` returns the localized date when a given process started. Otherwise, the date is returned in GMT. This is true unless the user happens to reside in the GMT timezone, then no localization is necessary.

## Examples

### Convert integers or decimals

```
1
datevalue(0)
```

Returns `1/1/2035`.

```
1
datevalue(-9000)
```

Returns `5/12/2010`.

```
1
datevalue(0.99)
```

Returns `1/1/2035`. Decimals are rounded down before evaluation.

### Convert lists of values

```
1
datevalue(0,1,2)
```

Returns `{1/1/2035, 1/2/2035, 1/3/2035}`.

```
1
datevalue({0,1,2})
```

Returns `{1/1/2035, 1/2/2035, 1/3/2035}`.

### Convert text to a date

```
1
datevalue("02/28/2020")
```

Returns `2/28/2020`. Text dates must be in the format `mm/dd/yyyy`.

### Convert a date

```
1
datevalue(date(2022, 1, 1))
```

Returns `1/1/2022`.

```
1
datevalue(date({ 2022, 2021 }, { 1, 5 }, { 7, 1 }))
```

Returns `{1/7/2022, 5/1/2021}`. The output list from `date()` can be used and evaluated by `datevalue()`.

### Convert a date and time

```
1
datevalue(datetime(2022, 1, 1, 2, 3, 0))
```

Returns `1/1/2022`.

### Dictionaries and maps

```
1
datevalue({daysSinceEpoch: 10}.daysSinceEpoch)
```

Returns `1/11/2035` (ten days after the Appian epoch, 1/1/2035).

```
1
datevalue(a!map(daysSinceEpoch: 10).daysSinceEpoch)
```

Returns `1/11/2035` (ten days after the Appian epoch, 1/1/2035).

### See also

[date()](fnc_date_and_time_date.html): Year behavior from `date()` also applies to `datevalue()` for text, Date, and Date and Time types.

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