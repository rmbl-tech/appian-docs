---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_currency.html
original_path: fnc_text_currency.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!currency() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!currency**( _isoCode, value, decimalPlaces, showSeparators, format, indicatorAlignment_ )

Localizes a currency value based on the given ISO currency code.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`isoCode`

 |

_Text_

 |

A valid ISO currency code. For example, "USD" or "EUR". This parameter is required.

 |
|

`value`

 |

_Number (Decimal)_

 |

The value to be formatted.

 |
|

`decimalPlaces`

 |

_Number (Integer)_

 |

Number of digits to display after the decimal mark. By default, it uses the localized format of the currency code. It also rounds to the specified decimal place. Valid values: 17 to -17.

 |
|

`showSeparators`

 |

_Boolean_

 |

Optional flag indicating whether to display digit separators. For example, the comma in 1,234.56. Default: true.

 |
|

`format`

 |

_Text_

 |

Optional field to specify how the currency should be formatted. Valid values: "LOCALE" (default), "CODE", "SYMBOL". For example, "CODE" would use USD and "SYMBOL" would use $. "LOCALE" would use either "CODE" or "SYMBOL" depending on the locale.

 |
|

`indicatorAlignment`

 |

_Text_

 |

Determines the alignment format. Valid values: "LOCALE" (default), "START", "END". For example $1,234.56 or 1.234,56 $. "LOCALE" would use either "START" or "END" depending on the locale.

 |

## Returns

Text

## Usage considerations

### Using the isoCode parameter

This parameter is required and only accepts one valid ISO code, like `"USD"` or `"EUR"`.

To display the generic currency symbol (¤), use `"XXX"` for the _isoCode_ parameter.

### Using the value parameter

If no value is passed, the function will just return the currency code or symbol of the entered ISO code.

### Using the decimalPlaces parameter

If no _decimalPlaces_ value is passed, the function uses the format of the entered ISO code. Most currencies will have two decimal places after the decimal separator but some will have three, four, or zero.

The _decimalPlaces_ parameter also accepts negative values up to -17. Entering a negative value will effectively zero out the entered number of places on the integer side of the decimal point. For example if your value is `12345` and you enter `-4` for the parameter value, the function returns `10000`. If you enter `-3`, the function returns `12000`. A value of `-5` in this example would return `0`.

### Using the showSeparators parameter

The _showSeparators_ parameter determines whether or not the function uses digit separators. How those digit separators appear is determined solely by the user's locale settings. For example, if the user's locale is set to `English (US)` digit separators appear as commas (`,`). If the user's locale is set to `Spanish`, digit separators will instead appear as periods (`.`).

If no _showSeparators_ value is passed, the function shows separators by default.

If you need to format a currency value using apostrophes (`'`) as the digit separators, use the [a!swissFranc](fnc_text_swissfranc.html) function.

### Using the format parameter

The _format_ parameter determines how the currency indicator should display, for example `"CODE"` (USD) or `"SYMBOL"` ($).

If no _format_ value is passed, the function uses `"LOCALE"` by default. The `"LOCALE"` setting uses the logged in user's locale setting to determine whether to use a symbol or the ISO code for the currency indicator.

### Using the indicatorAlignment parameter

The _indicatorAlignment_ parameter determines where that currency indicator displays in relation to the value, for example, at the `"START"` or `"END"` of the value.

If no _indicatorAlignment_ value is passed, the function uses `"LOCALE"` by default. The `"LOCALE"` setting uses the logged in user's locale setting to determine where to place the currency indicator.

## Examples

### Locale differences

#### Default behavior

```
1
2
3
4
a!currency(
  isoCode: "USD",
  value: 1234.56
)
```

If user's locale is set to `English (United States)`, returns `$1,234.56`.

If user's locale is set to `Español`, returns `1.234,56 US$`.

If user's locale set to `Français (Canada)`, returns `1 234,56 $ US`.

#### Override defaults

```
1
2
3
4
5
6
7
a!currency(
  isoCode: "USD",
  value: 1234.56,
  showSeparators: false,
  format: "CODE",
  indicatorAlignment: "START"
)
```

If user's locale is set to `English (United States)`, returns `USD 1234.56`.

If user's locale is set to `Español`, returns `USD 1234,56`.

If user's locale set to `Français (Canada)`, returns `USD 1234,56`.

### Decimal places

#### Decimal rounding

```
1
2
3
4
a!currency(
  isoCode: "USD",
  value: 1234.5678
)
```

Returns `$1,234.57`. To maintain the precise value, you would change the _decimalPlaces_ parameter to 4.

#### Negative decimalPlaces value

```
1
2
3
4
5
a!currency(
  isoCode: "USD",
  value: 1234.5678,
  decimalPlaces: -3
)
```

Returns `$1,000`.

### Formatting

```
1
2
3
4
5
a!currency(
  isoCode: "USD",
  value: 1234.56,
  format: "SYMBOL"
)
```

Returns `$1,234.56`.

Changing the _format_ value to `"CODE"` returns `USD 1,234.56`.

### Indicator alignment

```
1
2
3
4
5
a!currency(
  isoCode: "USD",
  value: 1234.56,
  indicatorAlignment: "START"
)
```

Returns `$1,234.56`.

Changing the _indicatorAlignment_ value to `"END"` returns `1,234.56 $`.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
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

## Old versions

There are older versions of this function . You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [currency\_22r4](/suite/help/25.3/fnc_text_currency_22r4.html) |
Expanded currency localization capabilities. Now supports hundreds of currencies by accepting an ISO code and outputs a formatted currency value based on locale.

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...