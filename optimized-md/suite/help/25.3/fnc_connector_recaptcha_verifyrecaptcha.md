---
source_url: https://docs.appian.com/suite/help/25.3/fnc_connector_recaptcha_verifyrecaptcha.html
original_path: fnc_connector_recaptcha_verifyrecaptcha.html
version: "25.3"
title: "a!verifyRecaptcha"
page_id: "fnc_connector_recaptcha_verifyrecaptcha"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!verifyRecaptcha

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!verifyRecaptcha**( _onSuccess, onError_ )

Allows you to verify the reCAPTCHA connection was successful and access reCAPTCHA scores to help protect your [Portal](portals-home.html) against potentially malicious activity. Use the _onSuccess_ parameter to access the score returned by reCAPTCHA with `fv!score` and determine what to do based on the score result. Use the _onError_ parameter to access any error messages with `fv!error` and determine what to do if reCAPTCHA isn't working properly. The `a!verifyRecaptcha()` function will only execute inside the _recaptchaSaveInto_ parameter on `a!buttonWidget()` and can only be used in Portals.

**See also:** [reCAPTCHA Guidance](recaptcha.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`onSuccess`

 |

_List of Saves_

 |

A list of saves to execute after reCAPTCHA executes successfully. Use `fv!score` to access the score returned by reCAPTCHA. Define conditional logic to protect your page based on whether the interaction is likely a bot or a human. A score of 1.0 is very likely a human while a score of 0.0 is very likely a bot.

 |
|

`onError`

 |

_List of Saves_

 |

A list of saves to execute after reCAPTCHA does not execute successfully. Use `fv!error` to access the returned error.

 |

## Returns

List of Saves

## Usage considerations

### Using reCAPTCHA

The [Appian Portals](portals-home.html) reCAPTCHA functionality uses Google's reCAPTCHA services and works with the `a!verifyRecaptcha()` function within the _recaptchaSaveInto_ parameter on the button component. Together, they provide a score from 0 to 1 to tell you if your Portal is likely being used by a bot or a human.

If the score is returned successfully, you can access the score in the function's _onSuccess_ parameter using `fv!score` and use it to define what happens based on whether your Portal is likely being used by a bot or a human. A score of 0.0 is very likely a bot and a score of 1.0 is very likely a human.

Because you can define the behavior based on the score you're comfortable with, you have total control over how your Portal handles bots and form submissions.

To use reCAPTCHA for your Portal, you must:

-   [Set up your own Google reCAPTCHA key credentials through Google](portals-create.html#step-5-\(optional\)-add-a-google-recaptcha-connected-system).
-   Use the `a!verifyRecaptcha()` function within the _recaptchaSaveInto_ parameter on the button component.
-   Access the score provided by reCAPTCHA using `fv!score` in the _onSuccess_ parameter.
-   Define logic using `fv!score`in the _onSuccess_ parameter to determine what happens based on whether a user is likely a bot or human.
-   Access potential errors provided by reCAPTCHA using `fv!error` in the _onError_ parameter.
-   Define logic in the _onError_ parameter to determine what happens if reCAPTCHA isn't working properly.

**Note:**  reCAPTCHA only works in a published portal. In an interface object, it will always evaluate the _onError_ parameter.

See [Google's unit testing](https://cloud.google.com/recaptcha-enterprise/docs/faq#id_like_to_run_automated_tests_with_what_should_i_do) for information on how to test your conditional logic and design. You can [add unit testing keys to your Portal when you add your site key credentials](recaptcha.html#unit-testing) in the reCAPTCHA connected system then republish your portal to help you test out your expressions and logic.

For examples of conditional logic using the `a!verifyRecaptcha()` function within the _recaptchaSaveInto_ parameter on the button component, see the [Submit button with a!verifyRecaptcha()](#recaptcha) example below.

For more information on reCAPTCHA, check out our [reCAPTCHA guidance](recaptcha.html).

### Using the onSuccess and onError parameters

The `a!verifyRecaptcha()` function has two parameters: _onSuccess_ and _onError_. Write expressions for both parameters to determine what will happen if reCAPTCHA connects successfully (_onSuccess_) or if there is an error with reCAPTCHA (_onError_).

#### Defining logic for the onSuccess parameter

For the _onSuccess_ parameter, define logic that determines what will happen when `a!verifyRecaptcha` successfully connects to reCAPTCHA and reCAPTCHA returns a score, accessed using `fv!score`.

For example, you could define logic so that if the score is 0 to 0.5, the form cannot be submitted. Or you could define your logic so that if the score is below 0.7, the form is submitted but flagged for review.

**Note:**  Appian uses the first score returned by reCAPTCHA for all instances of the `a!verifyRecaptcha()` function's _onSuccess_ parameter within an interface, regardless of the number of user interactions in the page.

#### Defining logic for the onError parameter

For the _onError_ parameter, define logic that determines what will happen when there is an error with the reCAPTCHA service, such as a connection error or incorrect keys. To access the error, use `fv!error`.

For example, you may want to save the error message so that you can view it later or define a custom set of error messages to show to the user.

```
1
2
3
4
onError: {
a!save(local!displayErrorMessage, true),
a!save(local!errorMessageDetails, fv!error)
}
```

## Example

### a!verifyRecaptcha()

The following example shows only the `a!verifyRecaptcha()` function. When you use it in a Portal, you must put this expression inside the _recaptchaSaveInto_ parameter of a submit button on an interface. If you copy and paste the example into an expression editor, reCAPTCHA will not work. Use this example only as a reference.

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
a!verifyRecaptcha(
  onSuccess: {
    if(
      fv!score > .7,
      {
        a!save(local!submissionDetails.needsReview, false),
        a!writeToDataStoreEntity(
          dataStoreEntity: cons!PORTAL_ENTITY,
          valueToStore: local!submissionDetails,
          onSuccess: {
            a!save(local!submissionStatus, "SUCCESS"),
            a!save(local!confirmationMessage, "Your submission is confirmed.")
          }
        )
      },
      if(
        fv!score > .3,
        {
          a!save(local!submissionDetails.needsReview, true),
          a!writeToDataStoreEntity(
            dataStoreEntity: cons!PORTAL_ENTITY,
            valueToStore: local!submissionDetails,
            onSuccess: {
              a!save(local!submissionStatus, "WARN"),
              a!save(local!confirmationMessage, "Your submission is processing. You will receive an email shortly with confirmation details. If you do not hear from us soon, please try again or give us a call.")
            }
          )
        },
        {
          a!save(local!submissionStatus, "ERROR"),
          a!save(local!confirmationMessage, "Your submission could not be confirmed. Please try again or contact us.")
        }
      )
    )
  },
  onError: {
    a!save(local!submissionStatus, "ERROR"),
    a!save(local!confirmationMessage, "Your submission could not be confirmed. Please try again or contact us.")
  }
)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...