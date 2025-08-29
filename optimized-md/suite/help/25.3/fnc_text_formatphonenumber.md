---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_formatphonenumber.html
original_path: fnc_text_formatphonenumber.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!formatPhoneNumber() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!formatPhoneNumber**( _phoneNumber, countryCode, outputFormat_ )

Returns a formatted phone number based on the _outputFormat_ parameter. The _countryCode_ parameter, or any country code provided in the phone number, will verify that the phone number is valid. If the phone number does not match any provided country code, the phone number will be returned as invalid and unformatted.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`phoneNumber`

 |

_Text_

 |

A text value representing a phone number. Dashes, parentheses, periods, and blank spaces are allowed as separators. This parameter is required.

 |
|

`countryCode`

 |

_Text Array_

 |

One or more country codes used to validate the provided phone number. Country codes are represented as a [two-letter ISO Alpha-2 code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements). For example, `"US"`, `"GB"`, and `"DE"` are the country codes for the United States, Great Britain, and Germany. If multiple codes are provided, the phone number will validate as the first country code that matches the provided phone number.

 |
|

`outputFormat`

 |

_Text_

 |

Specifies the format of the returned phone number. Valid values are `"NATIONAL"`, `"INTERNATIONAL"`, `"E164"`, and `"RFC3966"`. Default is `"E164"`.

 |

## Returns

Text

## Usage considerations

### Using the countryCode parameter

The _countryCode_ parameter can include one or more country codes. If you provide multiple country codes, the phone number will be formatted as the first matching country code. See a [list of country codes](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).

If the phone number does not match any of the provided country codes, an error will appear.

If no _countryCode_ is provided, but the phone number contains an international code (`+[country code]`), then the function will use the international code to determine if the provided phone number is valid.

For example, let's say you provide the phone number `+34 913 30 28 00` without providing a _countryCode_ parameter. Since `+34` is the international code for Spain, the function will return a valid phone number in the specified _outputFormat_.

### Using the outputFormat parameter

Specifies whether the phone number is formatted as a national, international, E164, or RFC3966 number.

For example, when testing the United States phone number `703-555-5555`, the different outputs would appear as follows:

| Format | Example | Description |
| --- | --- | --- |
| E164 | `+17035555555` | Displays the country code with a `+` sign and the local phone number without any separators. |
| National | `(703) 555-5555` | Displays the area code in parentheses and the remainder of the local phone number separated by hyphens. |
| International | `+1 703-555-5555` | Displays the country code with a `+` sign and the local phone number separated by hyphens. |
| RFC3966 | `tel:+1-703-555-5555` | Adds the prefix `tel:` to the `"INTERNATIONAL"` format. |

**Note:**  Formatting may differ slightly depending on the country code you're using. See the examples below, which use the country code from Great Britain.

## Examples

_Copy and paste these examples into an Appian Expression Editor to test out this function._

### Using the "E164" format

```
1
2
3
4
5
a!formatPhoneNumber(
  phoneNumber: "(0)20 3514 2838",
  countryCode: "GB",
  outputFormat: "E164",
)
```

Returns `+442035142838`

### Using the "NATIONAL" format

```
1
2
3
4
5
a!formatPhoneNumber(
  phoneNumber: "(0)20 3514 2838",
  countryCode: "GB",
  outputFormat: "NATIONAL",
)
```

Returns `020 3514 2838`

### Using the "INTERNATIONAL" format

```
1
2
3
4
5
a!formatPhoneNumber(
  phoneNumber: "(0)20 3514 2838",
  countryCode: "GB",
  outputFormat: "INTERNATIONAL",
)
```

Returns `+44 20 3514 2838`

### Using the "RFC3966" format

```
1
2
3
4
5
a!formatPhoneNumber(
  phoneNumber: "(0)20 3514 2838",
  countryCode: "GB",
  outputFormat: "RFC3966",
)
```

Returns `tel:+44-20-3514-2838`

### Using a list of country codes

The _countryCode_ parameter can accept an array of country codes. You may want to add a list of country codes if your application is used across multiple countries so you can format different phone numbers accordingly.

In the example below, there are two country codes: Mexico and United States. Since the phone number is a United States phone number, the function will skip the first country code (Mexico) and format the output as a United States phone number.

```
1
2
3
4
5
a!formatPhoneNumber(
  phoneNumber: "703 555 5555",
  countryCode: {"MX", "US"},
  outputFormat: "NATIONAL",
)
```

Returns `(703) 555-5555`

### Using this function without a country code

The _countryCode_ parameter is optional if an international code (`+<international code here>`) is provided as part of the phone number.

For example, the example below does not need the _countryCode_ parameter since the international code (`+52`) is part of the provided phone number.

```
1
2
3
4
a!formatPhoneNumber(
  phoneNumber: "+52 55 5487 3100",
  outputFormat: "NATIONAL",
)
```

Returns `55 5487 3100`

However, if you tried to use the following example, the function would return an invalid phone number because there is no international code in the provided phone number, and no _countryCode_ parameter.

```
1
2
3
4
a!formatPhoneNumber(
  phoneNumber: "55 5487 3100",
  outputFormat: "NATIONAL",
)
```

Returns `Invalid phone number: 52 55 5487 3100`

### Using this function in an interface

The following example uses the [a!isPhoneNumber()](fnc_text_isphonenumber.html) and `a!formatPhoneNumber()` functions to validate and format a user-provided phone number, which could be a phone number in the United States, Great Britain, or Germany.

_Copy and paste this example into an Appian Interface to test out this function._

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
a!localVariables(
  local!phoneNumber,
  local!isNumberValid,
  a!textField(
    label: "Phone Number",
    labelPosition: "ABOVE",
    instructions: "Enter a phone number",
    value: local!phoneNumber,
    saveInto: {
      local!phoneNumber,
      a!save(
        local!isNumberValid,
        a!isPhoneNumber(
          phoneNumber: local!phoneNumber,
          countryCode: {"US", "GB", "DE"}
        )
      ),
      if(
        local!isNumberValid,
        a!save(
          local!phoneNumber,
          a!formatPhoneNumber(
            phoneNumber: local!phoneNumber,
            countryCode: {"US", "GB", "DE"},
            outputFormat: "INTERNATIONAL",
          )
        ),
        {}
      )
    },
    refreshAfter: "UNFOCUS",
    validations: if(
      local!isNumberValid,
      "",
      "Please enter a valid phone number."
    ),
    inputPurpose: "PHONE_NUMBER",
  )
)
```

Returns

![SAIL interface](images/formatPhoneNumberSAILExample.png)

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