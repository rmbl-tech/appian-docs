---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_isphonenumber.html
original_path: fnc_text_isphonenumber.html
version: "25.3"
title: "a!isPhoneNumber() Function"
page_id: "fnc_text_isphonenumber"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!isPhoneNumber() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!isPhoneNumber**( _phoneNumber, countryCode_ )

Returns _true_ if the _phoneNumber_ parameter contains a valid phone number, otherwise returns _false_. A phone number is considered valid if its area code is valid, the length is appropriate based upon the value of the _countryCode_ parameter, and the number after the area code is not all zeroes. This function supports countries and area codes for international numbers.

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

One or more country codes used to validate the provided phone number. Country codes are represented as a [two-letter ISO alpha-2 code](#supported-country-codes). For example, `"US"`, `"GB"`, and `"DE"` are the country codes for the United States, Great Britain, and Germany. If multiple codes are provided, the function will return _true_ when the provided phone number matches one of the country codes.

 |

## Returns

Boolean

## Usage considerations

### Valid phone numbers

A phone number is considered valid if:

-   The area code is valid.
-   The length is appropriate based upon the value of the _countryCode_ parameter.
-   The number after the area code is not all zeroes.

**Note:**  A valid phone number does not mean it is connected.

However, an invalid phone number can still be dialed. For example, the phone number `1800-MICROSOFT` is invalid because it is too long, but a user could dial this number since the extra digits will be ignored.

### Using the countryCode parameter

The _countryCode_ parameter can include one or more country codes. If you provide multiple country codes, the function will return _true_ when it matches one of the provided country codes. See a [list of supported country codes](#supported-country-codes) below.

If the phone number does not match any of the provided country codes, the function will return _false_.

If no _countryCode_ is provided, but the phone number contains an international code (`+[country code]`), then the function will use the international code to determine if the provided phone number is valid.

For example, let's say you provide the phone number `+34 913 30 28 00` without providing a _countryCode_ parameter. Since `+34` is the international code for Spain, the function will return _true_ if the provided phone number is a Spain phone number.

## Examples

_Copy and paste these examples into an Appian Expression Editor to test out this function._

### Using only the phoneNumber parameter

The _countryCode_ parameter is optional if an international code (`+<international code here>`) is provided as part of the phone number.

For example, the example below does not need the _countryCode_ parameter since the international code (`+52`) is part of the provided phone number.

```
1
2
3
a!isPhoneNumber(
  phoneNumber: "+52 55 5487 3100",
)
```

Returns `true`

However, if you tried to use the following example, the function would return `false` because there is no international code in the provided phone number, and no _countryCode_ parameter.

```
1
2
3
a!isPhoneNumber(
  phoneNumber: "55 5487 3100",
)
```

Returns `false`

### Using the countryCode parameter

```
1
2
3
4
5
6
a!isPhoneNumber(
 /* This is a valid Cancun mobile phone number */
   phoneNumber: "1-998-185-3133",
 /* United States country code */
   countryCode: "US",
)
```

Returns `false`

### Using a list of country codes

The _countryCode_ parameter can accept an array of country codes. You may want to add a list of country codes if your application is used across multiple countries so you can validate different phone numbers accordingly.

In the example below, there are two country codes: Mexico and United States. Since this is phone number in Mexico, the function will ignore the first country code (United States) and validate as a phone number in Mexico.

```
1
2
3
4
5
6
a!isPhoneNumber(
 /* This is a valid Cancun mobile phone number */
  phoneNumber: "1-998-185-3133",
 /* Mexico and United States country codes */
  countryCode: {"US", "MX"}
)
```

Returns `true`

### Using this function in an interface

The following example uses the `a!isPhoneNumber()` and [a!formatPhoneNumber()](fnc_text_formatphonenumber.html) functions to validate and format a user-provided phone number, which could be a phone number in the United States, Great Britain, or Germany.

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

## Supported country codes

The following table lists all ISO alpha-2 codes supported by the `a!isPhoneNumber()` function:

<table class="appianTable"><tbody><tr><td><strong>Code</strong></td><td><strong>Country Name</strong></td></tr><tr><td><code>AC</code></td><td>Ascension Island</td></tr><tr><td><code>AD</code></td><td>Andorra</td></tr><tr><td><code>AE</code></td><td>United Arab Emirates</td></tr><tr><td><code>AF</code></td><td>Afghanistan</td></tr><tr><td><code>AG</code></td><td>Antigua and Barbuda</td></tr><tr><td><code>&gt;AI</code></td><td>Anguilla</td></tr><tr><td><code>AL</code></td><td>Albania</td></tr><tr><td><code>AM</code></td><td>Armenia</td></tr><tr><td><code>AO</code></td><td>Angola</td></tr><tr><td><code>AR</code></td><td>Argentina</td></tr><tr><td><code>AS</code></td><td>American Samoa</td></tr><tr><td><code>AT</code></td><td>Austria</td></tr><tr><td><code>AU</code></td><td>Australia</td></tr><tr><td><code>&gt;AW</code></td><td>Aruba</td></tr><tr><td><code>AX</code></td><td>Aland Islands</td></tr><tr><td><code>AZ</code></td><td>Azerbaijan</td></tr><tr><td><code>BA</code></td><td>Bosnia and Herzegovina</td></tr><tr><td><code>BB</code></td><td>Barbados</td></tr><tr><td><code>BD</code></td><td>Bangladesh</td></tr><tr><td><code>BE</code></td><td>Belgium</td></tr><tr><td><code>BF</code></td><td>Burkina Faso</td></tr><tr><td><code>BG</code></td><td>Bulgaria</td></tr><tr><td><code>BH</code></td><td>Bahrain</td></tr><tr><td><code>BI</code></td><td>Burundi</td></tr><tr><td><code>BJ</code></td><td>Benin</td></tr><tr><td><code>BL</code></td><td>Saint Barthélemy</td></tr><tr><td><code>BM</code></td><td>Bermuda</td></tr><tr><td><code>BN</code></td><td>Brunei Darussalam</td></tr><tr><td><code>BO</code></td><td>Bolivia (Plurinational State of)</td></tr><tr><td><code>BQ</code></td><td>Bonaire, Sint Eustatius and Saba</td></tr><tr><td><code>BR</code></td><td>Brazil</td></tr><tr><td><code>BS</code></td><td>Bahamas</td></tr><tr><td><code>BT</code></td><td>Bhutan</td></tr><tr><td><code>BW</code></td><td>Botswana</td></tr><tr><td><code>BY</code></td><td>Belarus</td></tr><tr><td><code>BZ</code></td><td>Belize</td></tr><tr><td><code>CA</code></td><td>Canada</td></tr><tr><td><code>CC</code></td><td>Cocos (Keeling) Islands</td></tr><tr><td><code>CD</code></td><td>Congo, Democratic Republic of the</td></tr><tr><td><code>CF</code></td><td>Central African Republic</td></tr><tr><td><code>CG</code></td><td>Congo</td></tr><tr><td><code>CH</code></td><td>Switzerland</td></tr><tr><td><code>CI</code></td><td>Côte d'Ivoire</td></tr><tr><td><code>CK</code></td><td>Cook Islands</td></tr><tr><td><code>CL</code></td><td>Chile</td></tr><tr><td><code>CM</code></td><td>Cameroon</td></tr><tr><td><code>CN</code></td><td>China</td></tr><tr><td><code>CO</code></td><td>Colombia</td></tr><tr><td><code>CR</code></td><td>Costa Rica</td></tr><tr><td><code>CU</code></td><td>Cuba</td></tr><tr><td><code>CV</code></td><td>Cabo Verde</td></tr><tr><td><code>CW</code></td><td>Curaçao</td></tr><tr><td><code>CX</code></td><td>Christmas Island</td></tr><tr><td><code>CY</code></td><td>Cyprus</td></tr><tr><td><code>CZ</code></td><td>Czechia</td></tr><tr><td><code>DE</code></td><td>Germany</td></tr><tr><td><code>DJ</code></td><td>Djibouti</td></tr><tr><td><code>DK</code></td><td>Denmark</td></tr><tr><td><code>DM</code></td><td>Dominica</td></tr><tr><td><code>DO</code></td><td>Dominican Republic</td></tr><tr><td><code>DZ</code></td><td>Algeria</td></tr><tr><td><code>EC</code></td><td>Ecuador</td></tr><tr><td><code>EE</code></td><td>Estonia</td></tr><tr><td><code>EG</code></td><td>Egypt</td></tr><tr><td><code>EH</code></td><td>Western Sahara</td></tr><tr><td><code>ER</code></td><td>Eritrea</td></tr><tr><td><code>ES</code></td><td>Spain</td></tr><tr><td><code>ET</code></td><td>Ethiopia</td></tr><tr><td><code>FI</code></td><td>Finland</td></tr><tr><td><code>FJ</code></td><td>Fiji</td></tr><tr><td><code>FK</code></td><td>Falkland Islands (Malvinas)</td></tr><tr><td><code>FM</code></td><td>Micronesia (Federated States of)</td></tr><tr><td><code>FO</code></td><td>Faroe Islands</td></tr><tr><td><code>FR</code></td><td>France</td></tr><tr><td><code>GA</code></td><td>Gabon</td></tr><tr><td><code>GB</code></td><td>United Kingdom of Great Britain and Northern Ireland</td></tr><tr><td><code>GD</code></td><td>Grenada</td></tr><tr><td><code>GE</code></td><td>Georgia</td></tr><tr><td><code>GF</code></td><td>French Guiana</td></tr><tr><td><code>GG</code></td><td>Guernsey</td></tr><tr><td><code>GH</code></td><td>Ghana</td></tr><tr><td><code>GI</code></td><td>Gibraltar</td></tr><tr><td><code>GL</code></td><td>Greenland</td></tr><tr><td><code>GM</code></td><td>Gambia</td></tr><tr><td><code>GN</code></td><td>Guinea</td></tr><tr><td><code>GP</code></td><td>Guadeloupe</td></tr><tr><td><code>GQ</code></td><td>Equatorial Guinea</td></tr><tr><td><code>GR</code></td><td>Greece</td></tr><tr><td><code>GT</code></td><td>Guatemala</td></tr><tr><td><code>GU</code></td><td>Guam</td></tr><tr><td><code>GW</code></td><td>Guinea-Bissau</td></tr><tr><td><code>GY</code></td><td>Guyana</td></tr><tr><td><code>HK</code></td><td>Hong Kong</td></tr><tr><td><code>HN</code></td><td>Honduras</td></tr><tr><td><code>HR</code></td><td>Croatia</td></tr><tr><td><code>HT</code></td><td>Haiti</td></tr><tr><td><code>HU</code></td><td>Hungary</td></tr><tr><td><code>ID</code></td><td>Indonesia</td></tr><tr><td><code>IE</code></td><td>Ireland</td></tr><tr><td><code>IL</code></td><td>Israel</td></tr><tr><td><code>IM</code></td><td>Isle of Man</td></tr><tr><td><code>IN</code></td><td>India</td></tr><tr><td><code>IO</code></td><td>British Indian Ocean Territory</td></tr><tr><td><code>IQ</code></td><td>Iraq</td></tr><tr><td><code>IR</code></td><td>Iran (Islamic Republic of)</td></tr><tr><td><code>IS</code></td><td>Iceland</td></tr><tr><td><code>IT</code></td><td>Italy</td></tr><tr><td><code>JE</code></td><td>Jersey</td></tr><tr><td><code>JM</code></td><td>Jamaica</td></tr><tr><td><code>JO</code></td><td>Jordan</td></tr><tr><td><code>JP</code></td><td>Japan</td></tr><tr><td><code>KE</code></td><td>Kenya</td></tr><tr><td><code>KG</code></td><td>Kyrgyzstan</td></tr><tr><td><code>KH</code></td><td>Cambodia</td></tr><tr><td><code>KI</code></td><td>Kiribati</td></tr><tr><td><code>KM</code></td><td>Comoros</td></tr><tr><td><code>KN</code></td><td>Saint Kitts and Nevis</td></tr><tr><td><code>KP</code></td><td>Korea (Democratic People's Republic of)</td></tr><tr><td><code>KR</code></td><td>Korea, Republic of</td></tr><tr><td><code>KW</code></td><td>Kuwait</td></tr><tr><td><code>KY</code></td><td>Cayman Islands</td></tr><tr><td><code>KZ</code></td><td>Kazakhstan</td></tr><tr><td><code>LA</code></td><td>Lao People's Democratic Republic</td></tr><tr><td><code>LB</code></td><td>Lebanon</td></tr><tr><td><code>LC</code></td><td>Saint Lucia</td></tr><tr><td><code>LI</code></td><td>Liechtenstein</td></tr><tr><td><code>LK</code></td><td>Sri Lanka</td></tr><tr><td><code>LR</code></td><td>Liberia</td></tr><tr><td><code>LS</code></td><td>Lesotho</td></tr><tr><td><code>LT</code></td><td>Lithuania</td></tr><tr><td><code>LU</code></td><td>Luxembourg</td></tr><tr><td><code>LV</code></td><td>Latvia</td></tr><tr><td><code>LY</code></td><td>Libya</td></tr><tr><td><code>MA</code></td><td>Morocco</td></tr><tr><td><code>MC</code></td><td>Monaco</td></tr><tr><td><code>MD</code></td><td>Moldova, Republic of</td></tr><tr><td><code>ME</code></td><td>Montenegro</td></tr><tr><td><code>MF</code></td><td>Saint Martin (French part)</td></tr><tr><td><code>MG</code></td><td>Madagascar</td></tr><tr><td><code>MH</code></td><td>Marshall Islands</td></tr><tr><td><code>MK</code></td><td>North Macedonia</td></tr><tr><td><code>ML</code></td><td>Mali</td></tr><tr><td><code>MM</code></td><td>Myanmar</td></tr><tr><td><code>MN</code></td><td>Mongolia</td></tr><tr><td><code>MO</code></td><td>Macao</td></tr><tr><td><code>MP</code></td><td>Northern Mariana Islands</td></tr><tr><td><code>MQ</code></td><td>Martinique</td></tr><tr><td><code>MR</code></td><td>Mauritania</td></tr><tr><td><code>MS</code></td><td>Montserrat</td></tr><tr><td><code>MT</code></td><td>Malta</td></tr><tr><td><code>MU</code></td><td>Mauritius</td></tr><tr><td><code>MV</code></td><td>Maldives</td></tr><tr><td><code>MW</code></td><td>Malawi</td></tr><tr><td><code>MX</code></td><td>Mexico</td></tr><tr><td><code>MY</code></td><td>Malaysia</td></tr><tr><td><code>MZ</code></td><td>Mozambique</td></tr><tr><td><code>NA</code></td><td>Namibia</td></tr><tr><td><code>NC</code></td><td>New Caledonia</td></tr><tr><td><code>NE</code></td><td>Niger</td></tr><tr><td><code>NF</code></td><td>Norfolk Island</td></tr><tr><td><code>NG</code></td><td>Nigeria</td></tr><tr><td><code>NI</code></td><td>Nicaragua</td></tr><tr><td><code>NL</code></td><td>Netherlands, Kingdom of the</td></tr><tr><td><code>NO</code></td><td>Norway</td></tr><tr><td><code>NP</code></td><td>Nepal</td></tr><tr><td><code>NR</code></td><td>Nauru</td></tr><tr><td><code>NU</code></td><td>Niue</td></tr><tr><td><code>NZ</code></td><td>New Zealand</td></tr><tr><td><code>OM</code></td><td>Oman</td></tr><tr><td><code>PA</code></td><td>Panama</td></tr><tr><td><code>PE</code></td><td>Peru</td></tr><tr><td><code>PF</code></td><td>French Polynesia</td></tr><tr><td><code>PG</code></td><td>Papua New Guinea</td></tr><tr><td><code>PH</code></td><td>Philippines</td></tr><tr><td><code>PK</code></td><td>Pakistan</td></tr><tr><td><code>PL</code></td><td>Poland</td></tr><tr><td><code>PM</code></td><td>Saint Pierre and Miquelon</td></tr><tr><td><code>PR</code></td><td>Puerto Rico</td></tr><tr><td><code>PS</code></td><td>Palestine, State of</td></tr><tr><td><code>PT</code></td><td>Portugal</td></tr><tr><td><code>PW</code></td><td>Palau</td></tr><tr><td><code>PY</code></td><td>Paraguay</td></tr><tr><td><code>QA</code></td><td>Qatar</td></tr><tr><td><code>RE</code></td><td>Réunion</td></tr><tr><td><code>RO</code></td><td>Romania</td></tr><tr><td><code>RS</code></td><td>Serbia</td></tr><tr><td><code>RU</code></td><td>Russian Federation</td></tr><tr><td><code>RW</code></td><td>Rwanda</td></tr><tr><td><code>SA</code></td><td>Saudi Arabia</td></tr><tr><td><code>SB</code></td><td>Solomon Islands</td></tr><tr><td><code>SC</code></td><td>Seychelles</td></tr><tr><td><code>SD</code></td><td>Sudan</td></tr><tr><td><code>SE</code></td><td>Sweden</td></tr><tr><td><code>SG</code></td><td>Singapore</td></tr><tr><td><code>SH</code></td><td>Saint Helena, Ascension and Tristan da Cunha</td></tr><tr><td><code>SI</code></td><td>Slovenia</td></tr><tr><td><code>SJ</code></td><td>Svalbard and Jan Mayen</td></tr><tr><td><code>SK</code></td><td>Slovakia</td></tr><tr><td><code>SL</code></td><td>Sierra Leone</td></tr><tr><td><code>SM</code></td><td>San Marino</td></tr><tr><td><code>SN</code></td><td>Senegal</td></tr><tr><td><code>SO</code></td><td>Somalia</td></tr><tr><td><code>SR</code></td><td>Suriname</td></tr><tr><td><code>SS</code></td><td>South Sudan</td></tr><tr><td><code>ST</code></td><td>Sao Tome and Principe</td></tr><tr><td><code>SV</code></td><td>El Salvador</td></tr><tr><td><code>SX</code></td><td>Sint Maarten (Dutch part)</td></tr><tr><td><code>SY</code></td><td>Syrian Arab Republic</td></tr><tr><td><code>SZ</code></td><td>Eswatini</td></tr><tr><td><code>TA</code></td><td>Tristan da Cunha</td></tr><tr><td><code>TC</code></td><td>Turks and Caicos Islands</td></tr><tr><td><code>TD</code></td><td>Chad</td></tr><tr><td><code>TG</code></td><td>Togo</td></tr><tr><td><code>TH</code></td><td>Thailand</td></tr><tr><td><code>TJ</code></td><td>Tajikistan</td></tr><tr><td><code>TK</code></td><td>Tokelau</td></tr><tr><td><code>TL</code></td><td>Timor-Leste</td></tr><tr><td><code>TM</code></td><td>Turkmenistan</td></tr><tr><td><code>TN</code></td><td>Tunisia</td></tr><tr><td><code>TO</code></td><td>Tonga</td></tr><tr><td><code>TR</code></td><td>Turkiye</td></tr><tr><td><code>TT</code></td><td>Trinidad and Tobago</td></tr><tr><td><code>TV</code></td><td>Tuvalu</td></tr><tr><td><code>TW</code></td><td>Taiwan, Province of China</td></tr><tr><td><code>TZ</code></td><td>Tanzania, United Republic of</td></tr><tr><td><code>UA</code></td><td>Ukraine</td></tr><tr><td><code>UG</code></td><td>Uganda</td></tr><tr><td><code>US</code></td><td>United States of America</td></tr><tr><td><code>UY</code></td><td>Uruguay</td></tr><tr><td><code>UZ</code></td><td>Uzbekistan</td></tr><tr><td><code>VA</code></td><td>Holy See</td></tr><tr><td><code>VC</code></td><td>Saint Vincent and the Grenadines</td></tr><tr><td><code>VE</code></td><td>Venezuela (Bolivarian Republic of)</td></tr><tr><td><code>VG</code></td><td>Virgin Islands (British)</td></tr><tr><td><code>VI</code></td><td>Virgin Islands (U.S.)</td></tr><tr><td><code>VN</code></td><td>Viet Nam</td></tr><tr><td><code>VU</code></td><td>Vanuatu</td></tr><tr><td><code>WF</code></td><td>Wallis and Futuna</td></tr><tr><td><code>WS</code></td><td>Samoa</td></tr><tr><td><code>XK</code></td><td>Temporary for Kosovo</td></tr><tr><td><code>YE</code></td><td>Yemen</td></tr><tr><td><code>YT</code></td><td>Mayotte</td></tr><tr><td><code>ZA</code></td><td>South Africa</td></tr><tr><td><code>ZM</code></td><td>Zambia</td></tr><tr><td><code>ZW</code></td><td>Zimbabwe</td></tr></tbody></table>

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