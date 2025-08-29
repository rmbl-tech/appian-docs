---
source_url: https://docs.appian.com/suite/help/25.3/Button_Component_23r3.html
original_path: Button_Component_23r3.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!buttonWidget\_23r3

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Button Component](/suite/help/25.3/Button_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Button_Component.html#Old_Version)

## Function

**a!buttonWidget\_23r3**( _label, style, confirmMessage, value, saveInto, disabled, submit, validate, validationGroup, size, width, confirmHeader, confirmButtonLabel, cancelButtonLabel, showWhen, icon, accessibilityText, tooltip, recaptchaSaveInto, loadingIndicator, iconPosition_ )

Displays a button that can conditionally be used to submit a form.

**See also**: [Button design guidance](sail/ux-buttons.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Label

 |

`label`

 |

_Text_

 |

Optional text to display on the button.

 |
|

Style

 |

`style`

 |

_Text_

 |

Determines the color of the button, where

-   `"NORMAL"` default) Displays it with accent color label and border.
-   `"PRIMARY"` Displays it in the accent color.
-   `"SECONDARY"` Displays it in gray.
-   `"LINK"` Displays it with an accent color label and no border until focused.
-   `"DESTRUCTIVE"` Displays it in red.

 |
|

Confirmation Message

 |

`confirmMessage`

 |

_Text_

 |

Text to display in an optional confirmation dialog where a null argument disables the confirmation dialog and a text argument enables it with the text entered as the confirmation message.

 |
|

Value

 |

`value`

 |

_Any Type_

 |

The value associated with this button.

 |
|

Save Value To

 |

`saveInto`

 |

_Save Array_

 |

One or more variables that are updated with the button value when the user presses it. Use `a!save()` to save a modified or alternative value to a variable.

 |
|

Disabled

 |

`disabled`

 |

_Boolean_

 |

Determines if the user is prevented from clicking the button and triggering the state change. Default is `false`.

 |
|

Submit

 |

`submit`

 |

_Boolean_

 |

Determines whether this button submits a form after saving its value.

 |
|

Validate

 |

`validate`

 |

_Boolean_

 |

Determines whether this button performs validation before saving its value. When _submit_ is true, this defaults to `true`, otherwise it defaults to `false`.

 |
|

Validation Group

 |

`validationGroup`

 |

_Text_

 |

When present, the requiredness of the field is only evaluated when a button in the same validation group is pressed. The value for this parameter cannot contain spaces. For example, `“validation group”` is not a valid value. You need to add an underscore between words: `“validation_group”`. See the following recipes for more information:

-   [Configure Buttons with Conditional Requiredness](recipe-configure-buttons-with-conditional-requiredness.html)
-   [Validation Groups for Buttons with Multiple Validation Rules](recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html)'

 |
|

Size

 |

`size`

 |

_Text_

 |

Determines the size of the button. Valid values: `"SMALL"`, `"STANDARD"` (default), and `"LARGE"`.

 |
|

Width

 |

`width`

 |

_Text_

 |

Determines button width. Valid values are `"MINIMIZE"` and `"FILL"`. Default behavior displays `"FILL"` width buttons on phone size screens and `"MINIMIZE"` buttons on wider screens.

-   `"MINIMIZE"` width is determined by button label.
-   `"FILL"` width fills the button container.

 |
|

Confirmation Header

 |

`confirmHeader`

 |

_Text_

 |

Text to display at the top of the confirmation dialog.

 |
|

Confirmation Button Label

 |

`confirmButtonLabel`

 |

_Text_

 |

Text to display on the confirmation button. Default: "Yes".

 |
|

Cancel Button Label

 |

`cancelButtonLabel`

 |

_Text_

 |

Text to display on the cancel button. Default: "No".

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the button is displayed on the interface. When set to false the button is hidden and is not evaluated. Default: true.

 |
|

Icon

 |

`icon`

 |

_Text_

 |

Icon to display before any text inside the button. See the list of available [icons](sail/ux-styled-icons.html).

 |
|

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |
|

Tooltip

 |

`tooltip`

 |

_Text_

 |

Text to display on mouseover (web) or long press (mobile).

 |
|

reCAPTCHA Save Value To

 |

`recaptchaSaveInto`

 |

_List of saves_

 |

One or more variables that are updated after reCAPTCHA executes. Use `a!verifyRecaptcha()` to verify the reCAPTCHA result and `a!save()` to save a modified or alternative value to a variable. Only for use in Portals.

 |
|

Show loading indicator on press

 |

`loadingIndicator`

 |

_Boolean_

 |

Determines whether the button will display a loading indicator on press and be disabled while processing. Default: false.

 |
|

Icon Position

 |

`iconPosition`

 |

_Text_

 |

Determines where the icon appears in relation to the text. Valid values: "START" (default), "END".

 |

## Usage considerations

### Using the submit parameter

For buttons that are used to submit a start form or task, set the value of the _submit_ parameter to `true` in order to submit the start form or task. Otherwise, use the default value, `false`.

### Using the confirmation parameters

-   In the confirmation dialog there are two buttons. The confirm button is in the primary position and the cancel button is in the secondary position.
-   If _confirmHeader_ and _confirmMessage_ are both null, the interface refreshes and the _saveInto_ state change occurs once the user clicks the button. If either is not null, the confirmation dialog displays. The interface only refreshes and the _Save Value To_ state change only occurs if the user clicks the confirm button.

### Styling buttons

-   When _style_ is `"DESTRUCTIVE"` and a confirmation dialog is enabled, the confirm button displays in `"DESTRUCTIVE"` and the cancel button displays in grey. All other _style_ options result in a `"PRIMARY"` confirm button and a `"SECONDARY"` cancel button.
-   You can only configure button shapes on [sites](sites_object.html#branding) and not at the component level. The same shape will be applied to all buttons sitewide.

### Using the recaptchaSaveInto parameter in a Portal

[reCAPTCHA](recaptcha.html) allows you to monitor your [public portals](portals-home.html) for potentially malicious or fraudulent activity. Appian works with Google’s reCAPTCHA services to provide you with a configurable experience that allows you to choose your thresholds for and responses to potential misuses of your Portal.

reCAPTCHA works on the button component so that you can apply it to submission buttons in a Portal. This allows you to have more control over what kinds of users are submitting entries using your Portal. To use reCAPTCHA, you must use the [a!verifyRecaptcha()](fnc_connector_recaptcha_verifyrecaptcha.html) function within the _recaptchaSaveInto_ parameter and define logic to determine what to do when a bot may be using your Portal.

You can use the `a!save()` function to save new or updated values to variables in the same way that you would for configuring any button, but make sure to nest `a!save()` inside the `a!verifyRecaptcha()` function.

For more information on using reCAPTCHA in Portals or a breakdown of examples, check out our [reCAPTCHA guidance](recaptcha.html).

**Note:**  reCAPTCHA does not work within Appian designer and will always evaluate the _onError_ parameter of the [a!verifyRecaptcha()](fnc_connector_recaptcha_verifyrecaptcha.html)) function. For more information on testing reCAPTCHA, check out our [reCAPTCHA guidance](recaptcha.html#testing-monitoring-and-troubleshooting-recaptcha).

## Examples

_Copy and paste an example into an Appian Expression Editor to experiment with it._

### Button styles and sizes

Use the interactive editor below to test out the example code.

### Icon-only button with tooltip

Use the interactive editor below to test out the example code.

### Confirmation dialog

Use the interactive editor below to test out the example code.

### reCAPTCHA in a button

The following is an example of what the expression for a button using reCAPTCHA might look like when separated out from the rest of the interface. If you copy and paste the example into an expression editor, reCAPTCHA will not work. Use this example only as a reference. Only for use in [Portals](portals-home.html).

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
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
a!localVariables(
  local!submissionDetails: a!map(needsReview: null),
  local!submissionStatus,
  local!confirmationMessage,
  {
    a!buttonArrayLayout(
      buttons: {
        a!buttonWidget_23r3(
          label: "Submit",
          recaptchaSaveInto: a!verifyRecaptcha(
            onSuccess: {
              if(
                fv!score > .7,
                /* Score >.7 indicates the user is likely human */
                {
                  /* No need for a manual review since the user was confirmed by reCAPTCHA to be human*/
                  a!save(
                    local!submissionDetails.needsReview,
                    false
                  ),
                  a!writeToDataStoreEntity(
                    dataStoreEntity: cons!PORTAL_ENTITY,
                    valueToStore: local!submissionDetails,
                    onSuccess: {
                      a!save(local!submissionStatus, "SUCCESS"),
                      a!save(
                        local!confirmationMessage,
                        "Your submission is confirmed."
                      )
                    }
                  )
                },
                if(
                  fv!score > .3,
                  /* Score is between .3 & .7 indicating that the user may be human or a bot*/
                  {
                    /* No need for a manual review since the user was confirmed by reCAPTCHA to be human*/
                    a!save(
                      local!submissionDetails.needsReview,
                      true
                    ),
                    a!writeToDataStoreEntity(
                      dataStoreEntity: cons!PORTAL_ENTITY,
                      valueToStore: local!submissionDetails,
                      onSuccess: {
                        a!save(local!submissionStatus, "WARN"),
                        a!save(
                          local!confirmationMessage,
                          "Your submission is processing. You will receive an email shortly with confirmation details. If you do not hear from us soon, please try again or give us a call."
                        )
                      }
                    )
                  },
                  /* Score <.3 indicates the user is most likely a bot*/
                  {
                    a!save(local!submissionStatus, "BOT"),
                    a!save(
                      local!confirmationMessage,
                      "Your submission was not successful. Please try again or call us at (202) 555-7171."
                    )
                  }
                )
              )
            },
            onError: {
              /* Cannot connect to Google reCAPTCHA services.*/
              a!save(local!submissionStatus, "ERROR"),
              a!save(
                local!confirmationMessage,
                "Your submission was not successful. Please try again or call us at (202) 555-7171."
              )
            }
          ),
          width: "FILL",
          style: "PRIMARY",
          loadingIndicator: true
        )
      }
    )
  }
)
```

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

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
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...