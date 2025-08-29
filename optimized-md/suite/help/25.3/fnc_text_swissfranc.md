---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_swissfranc.html
original_path: fnc_text_swissfranc.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!swissFranc() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!swissFranc**( _number, decimals, noApostrophes, showPrefixSymbol_ )

Converts the number into a Swiss franc value. Effectively adds a decimal point and an apostrophe for every three digits preceding the decimal. It also adds an optional Swiss franc symbol preceding the value.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

The number of Swiss francs to be returned as text.

 |
|

`decimals`

 |

_Optional_

 |

(Integer) The number of digits after the decimal to display. 2 by default.

 |
|

`noApostrophes`

 |

_Optional_

 |

(Integer) This parameter is optional and can be 0 or 1. By default this value is 0. When 0, the Swiss franc value will be separated by apostrophes every three digits preceding the decimal. When 1, the Swiss franc value is not separated by apostrophes.

 |
|

`showPrefixSymbol`

 |

_Optional_

 |

(Integer) This parameter is optional and can be 0 or 1. By default this value is 0. When 1, the Swiss franc value will be prefixed by the symbol 'CHF', otherwise, no symbol will be prefixed to the Swiss franc value.

 |

## Returns

Text

## Usage considerations

### Using the Swiss franc prefix symbol

The Swiss franc prefix symbol (`CHF`) is not shown by default. Use the _showPrefixSymbol_ to add the symbol before the value. If no arguments are passed, the Swiss franc symbol itself is returned as text.

### Using the decimals parameter

If no _decimals_ value is passed, the function uses 2 by default.

## Examples

`a!swissFranc(3213.43)` returns `3'213.43`

`a!swissFranc(number: 3213.43, showPrefixSymbol: 1)` returns `CHF 3'213.43`

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
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...