---
source_url: https://docs.appian.com/suite/help/25.3/recaptcha.html
original_path: recaptcha.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring reCAPTCHA in Portals

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

reCAPTCHA is a feature that allows you to monitor your [portals](portals-home.html) for potentially malicious or fraudulent activity. Appian works with Google's reCAPTCHA services to provide you with a configurable experience that allows you to choose your thresholds for and responses to potential misuses of your Portal.

In Appian, the _recaptchaSaveInto_ parameter on buttons and the `a!verifyRecaptcha()` functions allow you to handle potentially malicious behavior or misuse of your Portals. On the backend, Appian uses [Google's reCAPTCHA v3 services](https://cloud.google.com/recaptcha-enterprise/docs/overview).

To use reCAPTCHA in your portal, use the `a!verifyRecaptcha()` function within the _recaptchaSaveInto_ parameter on submission buttons and define logic to determine what to do when a bot may be using your Portal.

You have full control over how your portal handles bots and form submissions. The `a!verifyRecaptcha()` function allows you to access a score provided by Google reCAPTCHA which lets you know how likely it is that your portal is being misused. You can use the score to define what to do when you think a bot is using your website.

For steps on setting up reCAPTCHA in Google and adding a [reCAPTCHA connected system](google_reCAPTCHA.html) to your portal, see [Create a Portal](portals-create.html#step-5-\(optional\)-add-a-google-recaptcha-connected-system).

### Security

reCAPTCHA may not be compliant with all General Data Protection Regulation (GDPR) requirements. To help you decide if reCAPTCHA is right for your organization and your data, check out [Google cloud's privacy and GDPR information](https://cloud.google.com/privacy/gdpr).

## Using reCAPTCHA in Portals

To use reCAPTCHA in your portal, use the `a!verifyRecaptcha()` function within the _recaptchaSaveInto_ parameter on submission buttons and define logic to determine what to do when a bot may be using your Portal.

This section provides:

-   Examples of handling scores in the `a!verifyRecaptcha()` function's _onSuccess_ and _onError_ parameters.
-   An example expression and breakdown of using the _recaptchaSaveInto_ parameter in a button.
-   An example expression using both `a!verifyRecaptcha()`and the _recaptchaSaveInto_ parameter on submission buttons in an interface.

### The a!verifyRecaptcha() function

The [a!verifyRecaptcha()](fnc_connector_recaptcha_verifyrecaptcha.html) function allows you to verify the reCAPTCHA result and define logic to help protect your page against potentially malicious traffic. This function only works inside the _recaptchaSaveInto_ parameter on [a!buttonWidget()](Button_Component.html).

The function has two parameters: _onSuccess_ and _onError_. If reCAPTCHA successfully returns a score, the function evaluates the expression defined in the _onSuccess_ parameter. Use `fv!score` to access the score returned by reCAPTCHA. If reCAPTCHA is unable to return a score or can't connect to the reCAPTCHA server, the function evaluates the expression defined in the _onError_ parameter. Use `fv!error` to access the returned error.

If reCAPTCHA runs successfully, it returns a score based on how likely it is that a bot or human is using your Portal. A score of 0.0 is likely a bot and a score of 1.0 is likely a human. Write an expression based on the score returned (`fv!score`) to determine what happens if a bot is using your Portal.

For example, you could define an expression so that if the returned score is 0 to 0.5, the form cannot be submitted. Or you could define your expression so that if the score is 0.7 or lower, the form is submitted but flagged for review.

#### Define logic for the onSuccess parameter

You have complete control over how your portal handles bots and form submissions. The table below explains the potential origin of form submissions and how you might want to define your logic based off of them. Use it to help you decide what scores you're comfortable with allowing and determine the appropriate next steps for protecting your portal from potential misuse.

| Returned Score | Origin | Potential Response |
| --- | --- | --- |
| `fv!score` is less than 0.3 | Likely a bot | Block submission |
| `fv!score` is between 0.3 and 0.6 | Potentially a bot or a human | Allow submission but flag entry |
| `fv!score` is greater than 0.7 | Likely a human | Regular submission |

If you want to block submissions, we suggest that you provide a message explaining why you've blocked the submission in case the user is human. Such as:

-   "Your request can't be processed at this time, please try again later."
-   "Your submission was not successful. Please try again or contact us."
-   "We're sorry, but your computer or network may be sending automated queries. To protect our users, we can't process your request right now."

It's up to you to decide what your portal does with each score. For insights into the reCAPTCHA scores for your Portal, check your page's [analytics in the Google Admin Console](https://developers.google.com/recaptcha/docs/analytics#recaptcha_v3) to help you make informed decisions on handling scores.

**Note:**  Appian uses the first score returned by reCAPTCHA for all instances of the `a!verifyRecaptcha()` function's _onSuccess_ parameter within an interface, regardless of the number of user interactions in the page.

### The recaptchaSaveInto parameter in the button component

reCAPTCHA works on the [button component](Button_Component.html) (`a!buttonWidget()`) so that you can apply it to submission buttons in a Portal. This allows you to have more control over what kinds of users are submitting entries using your Portal. To use reCAPTCHA, you must use both the _recaptchaSaveInto_ parameter and the [a!verifyRecaptcha()](fnc_connector_recaptcha_verifyrecaptcha.html) function together.

Use the [a!save()](fnc_evaluation_save.html) function to save new or updated values to variables in the same way that you would for configuring any button, but make sure to use `a!save()` inside the `a!verifyRecaptcha()` function.

#### Example: reCAPTCHA in a button

The following is an example of what the expression for a button using reCAPTCHA might look like when separated out from the rest of the interface. If you copy and paste the example into an expression editor, reCAPTCHA will not work. Use this example only as a reference.

```sail
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
a!localVariables(
  local!submissionDetails: a!map(needsReview: null),
  local!submissionStatus,
  local!confirmationMessage,
  {
    a!buttonArrayLayout(
      buttons: {
        a!buttonWidget(
          label: "Submit",
          recaptchaSaveInto: a!verifyRecaptcha(
            onSuccess: {
              a!match(
                value: fv!score,
                whenTrue: fv!value > .7,
                /* Score >.7 indicates the user is likely human */
                then: {
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
                whenTrue: fv!value > .3,
                then: {
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
                default: {
                  /* Score <.3 indicates the user is most likely a bot*/
                  a!save(local!submissionStatus, "BOT"),
                  a!save(
                    local!confirmationMessage,
                    "Your submission was not successful. Please try again or call us at (202) 555-7171."
                  )
                }
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
          style: "SOLID",
          loadingIndicator: true
        )
      }
    )
  }
)
```

In this button example, you can see how the various elements within the `a!verifyRecaptcha()` function's _onSuccess_ and _onError_ parameters (specifically `a!save()`, [a!writeToDataStoreEntity()](Write_to_Data_Store_Entity_Smart_Service.html#a!writetodatastoreentity\(\)), and conditional logic based on a returned score) work with the _recaptchaSaveInto_ parameter on buttons.

##### **The onSuccess parameter**

Lines 11-64 make up the `a!verifyRecaptcha()` function's _onSuccess_ parameter, where the majority of the logic for reCAPTCHA is defined. Here, the logic is defined using two `if()` statements.

**Lines 12-32**

The first section of the `if()` statement says that if the reCAPTCHA score is more than 0.7 the submission is written to the data store without a manual review, because reCAPTCHA has determined that the user is likely a human.

Line 25 saves `"SUCCESS"` to the submission status for any submissions with scores above 0.7.

**Lines 33-54**

The second section of the first `if()` statement adds a nested `if()` statement.

The first part of the nested `if()` statement says that if the reCAPTCHA score is between 0.3 and 0.7 then the submission is written to the data store. It's then flagged for a manual review because the user may be either a bot or human.

Line 39 saves `"WARN"` to the submission status for any submissions with scores in in this range.

**lines 55-64**

The second part of the nested `if()` statement says that if the reCAPTCHA score is below 0.3 the submission won't be written to the data store. This is because reCAPTCHA has determined that the user is likely a bot. Since the submission is blocked, a message shows to let the user know that the submission couldn't be completed at the time.

Line 56 saves `"BOT"` to the submission status for any submissions with scores below 0.3.

##### **The onError parameter**

Lines 65-73 make up the `a!verifyRecaptcha()` function's _onError_ parameter. Here, the _onError_ parameter saves `"ERROR"` to the submission status for any submissions that reCAPTCHA was unable to return a score for and displays a friendly error message to the user.

##### The a!save() function

Check out the sections of the expression using `a!verifyRecaptcha()` and `a!writeToDataStoreEntity()` functions to see how `a!save()` is used in different ways throughout the example.

### Using a!verifyRecaptcha() and the recaptchaSaveInto parameter together in an interface

This example shows how reCAPTCHA and buttons can be used together with other components to create a dynamic submission form for your Portal. If you copy and paste this example into an expression editor, reCAPTCHA will not work. Use this example only as reference.

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
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
204
205
206
207
208
209
210
211
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
232
233
234
235
236
237
238
239
240
241
242
243
244
245
246
247
248
249
250
251
252
253
254
255
256
257
258
259
260
261
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
280
281
282
283
284
285
286
287
288
289
290
291
292
293
294
295
296
297
298
299
300
301
302
303
304
305
306
307
308
309
310
311
312
313
314
315
316
317
318
319
320
321
322
323
324
325
326
327
328
329
330
331
332
333
334
335
336
337
338
339
340
341
342
343
344
345
346
347
348
349
350
351
352
353
354
355
356
357
358
359
360
361
362
363
364
365
366
367
368
369
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
a!localVariables(
  local!reservationDetails: a!map(
    restaurantId: 1,
    date: todate("11/4/2021"),
    time: time(18, 45, 0),
    numberOfPeople: 2,
    seatingTypeId: 2,
    fullName: null,
    phoneNumber: null,
    email: null,
    specialRequest: null,
    needsReview: null
  ),
  local!reservationStatus,
  local!confirmationMessage,
  a!headerContentLayout(
    header: {
      a!cardLayout(
        contents: {
          a!columnsLayout(
            columns: {
              /* Form content */
              a!columnLayout(
                contents: {
                  a!columnsLayout(
                    columns: {
                      /* Empty column layouts on both sides *
                       * help to center the content         */
                      a!columnLayout(),
                      a!columnLayout(
                        contents: {
                          a!sectionLayout(
                            showWhen: not(a!isPageWidth("PHONE")),
                            marginBelow: "EVEN_MORE"
                          ),
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "You're almost done!" },
                                size: "SMALL",
                                style: { "STRONG" }
                              )
                            },
                            showWhen: not(isnull(local!reservationStatus))
                          ),
                          a!sectionLayout(
                            label: "Confirm your reservation",
                            labelSize: "LARGE",
                            labelColor: "STANDARD",
                            contents: {
                              a!sideBySideLayout(
                                alignVertical: "MIDDLE",
                                marginBelow: "MORE",
                                items: {
                                  a!sideBySideItem(
                                    width: "MINIMIZE",
                                    item: a!stampField(
                                      labelPosition: "COLLAPSED",
                                      icon: "cutlery",
                                      size: "TINY",
                                      backgroundColor: "#d4e2ee",
                                      contentColor: "ACCENT"
                                    )
                                  ),
                                  a!sideBySideItem(
                                    width: "MINIMIZE",
                                    item: a!richTextDisplayField(
                                      value: a!richTextItem(size: "MEDIUM", text: "Cuisine Bistro")
                                    )
                                  ),
                                  a!sideBySideItem(),
                                  a!sideBySideItem(
                                    width: "MINIMIZE",
                                    item: a!stampField(
                                      labelPosition: "COLLAPSED",
                                      icon: "calendar",
                                      size: "TINY",
                                      backgroundColor: "#d4e2ee",
                                      contentColor: "ACCENT"
                                    )
                                  ),
                                  a!sideBySideItem(
                                    width: "MINIMIZE",
                                    item: a!richTextDisplayField(
                                      value: a!richTextItem(size: "MEDIUM", text: "Nov 18th @ 6:45pm")
                                    )
                                  ),
                                  a!sideBySideItem(),
                                  a!sideBySideItem(
                                    width: "MINIMIZE",
                                    item: a!stampField(
                                      labelPosition: "COLLAPSED",
                                      icon: "users",
                                      size: "TINY",
                                      backgroundColor: "#d4e2ee",
                                      contentColor: "ACCENT"
                                    )
                                  ),
                                  a!sideBySideItem(
                                    width: "MINIMIZE",
                                    item: a!richTextDisplayField(
                                      value: a!richTextItem(size: "MEDIUM", text: "2 people")
                                    )
                                  ),

                                }
                              ),
                              a!textField(
                                label: "Full Name",
                                labelPosition: "ABOVE",
                                inputPurpose: "NAME",
                                value: local!reservationDetails.fullName,
                                saveInto: { local!reservationDetails.fullName },
                                refreshAfter: "UNFOCUS",
                                characterLimit: 255,
                                showCharacterCount: false,
                                required: true,
                                validations: {}
                              ),
                              a!sideBySideLayout(
                                items: {
                                  a!sideBySideItem(
                                    item: a!textField(
                                      label: "Phone Number",
                                      labelPosition: "ABOVE",
                                      inputPurpose: "PHONE_NUMBER",
                                      value: local!reservationDetails.phoneNumber,
                                      saveInto: local!reservationDetails.phoneNumber,
                                      refreshAfter: "UNFOCUS",
                                      characterLimit: 14,
                                      showCharacterCount: false,
                                      required: true,
                                      validations: {}
                                    )
                                  ),
                                  a!sideBySideItem(
                                    item: a!textField(
                                      label: "Email",
                                      labelPosition: "ABOVE",
                                      value: local!reservationDetails.email,
                                      saveInto: { local!reservationDetails.email },
                                      refreshAfter: "UNFOCUS",
                                      characterLimit: 100,
                                      showCharacterCount: false,
                                      required: true,
                                      validations: {}
                                    )
                                  )
                                }
                              ),
                              a!paragraphField(
                                label: "Special Requests",
                                labelPosition: "ABOVE",
                                placeholder: "How can we make your visit more enjoyable?",
                                value: local!reservationDetails.specialRequest,
                                saveInto: {
                                  local!reservationDetails.specialRequest
                                },
                                refreshAfter: "UNFOCUS",
                                height: "MEDIUM",
                                validations: {}
                              )
                            },
                            divider: "BELOW"
                          ),
                          a!columnsLayout(
                            columns: {
                              a!columnLayout(
                                contents: {
                                  a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(
                                        label: "Complete Reservation",
                                        recaptchaSaveInto: a!verifyRecaptcha(
                                          onSuccess: {
                                            if(
                                              fv!score > .7,
                                              /*Score >.7 indicates the user is likely human */
                                              {
                                                /*No need for a manual review since the user was confirmed by reCAPTCHA to be human*/
                                                a!save(
                                                  local!reservationDetails.needsReview,
                                                  false
                                                ),
                                                a!writeToDataStoreEntity(
                                                  dataStoreEntity: cons!PTL_ENTITY_RESERVATION_DETAILS,
                                                  valueToStore: local!reservationDetails,
                                                  onSuccess: {
                                                    a!save(local!reservationStatus, "SUCCESS"),
                                                    a!save(
                                                      local!confirmationMessage,
                                                      "You are confirmed for Cuisine Bistro Thursday at 6:45. We look forward to seeing you then!"
                                                    )
                                                  }
                                                )
                                              },
                                              if(
                                                fv!score > .3,
                                                /*Score is between .3 & .7 indicating that the user may be human or a bot*/
                                                {
                                                  /*No need for a manual review since the user was confirmed by reCAPTCHA to be human*/
                                                  a!save(
                                                    local!reservationDetails.needsReview,
                                                    true
                                                  ),
                                                  a!writeToDataStoreEntity(
                                                    dataStoreEntity: cons!PTL_ENTITY_RESERVATION_DETAILS,
                                                    valueToStore: local!reservationDetails,
                                                    onSuccess: {
                                                      a!save(local!reservationStatus, "WARN"),
                                                      a!save(
                                                        local!confirmationMessage,
                                                        "Your reservation at Cuisine Bistro is processing. You will receive an email shortly with reservation details. If you do not hear from us soon, please try again or give us a call."
                                                      )
                                                    }
                                                  )
                                                },
                                                /*Score <.3 indicates the user is most likely a bot*/
                                                {
                                                  a!save(local!reservationStatus, "BOT"),
                                                  a!save(
                                                    local!confirmationMessage,
                                                    "Your reservation was not successful. Please try again or call us at (202) 555-7171."
                                                  )
                                                }
                                              )
                                            )
                                          },
                                          onError: {
                                            /*Cannot connect to Google reCAPTCHA services.*/
                                            a!save(local!reservationStatus, "ERROR"),
                                            a!save(
                                              local!confirmationMessage,
                                              "Your reservation was not successful. Please try again or call us at (202) 555-7171."
                                            )
                                          }
                                        ),
                                        width: "FILL",
                                        style: "SOLID",
                                        loadingIndicator: true
                                      )
                                    }
                                  )
                                }
                              )
                            }
                          ),
                          {
                            if(
                              isnull(local!reservationStatus),
                              {},
                              if(
                                local!reservationStatus = "SUCCESS",
                                /* Success Banner */
                                a!cardLayout(
                                  contents: {
                                    a!sideBySideLayout(
                                      items: {
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextIcon(
                                                icon: "check-circle",
                                                color: "POSITIVE",
                                                size: "MEDIUM"
                                              )
                                            }
                                          ),
                                          width: "MINIMIZE"
                                        ),
                                        a!sideBySideItem(
                                          /* Replace this rich text with your success message */
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(text: { "Success." }, style: { "STRONG" }),
                                              " ",
                                              local!confirmationMessage,

                                            }
                                          )
                                        )
                                      },
                                      alignVertical: "MIDDLE",
                                      spacing: "STANDARD"
                                    )
                                  },
                                  style: "#e7f4e4",
                                  marginBelow: "STANDARD",
                                  accessibilityText: "Success message"
                                ),
                                if(
                                  local!reservationStatus = "WARN",
                                  /* Warning Banner */
                                  a!cardLayout(
                                    contents: {
                                      a!sideBySideLayout(
                                        items: {
                                          a!sideBySideItem(
                                            item: a!richTextDisplayField(
                                              labelPosition: "COLLAPSED",
                                              value: {
                                                a!richTextIcon(
                                                  icon: "exclamation-triangle",
                                                  color: "#ffc13e",
                                                  size: "MEDIUM"
                                                )
                                              }
                                            ),
                                            width: "MINIMIZE"
                                          ),
                                          a!sideBySideItem(
                                            /* Replace this rich text with your warning message */
                                            item: a!richTextDisplayField(
                                              labelPosition: "COLLAPSED",
                                              value: {
                                                a!richTextItem(text: { "Pending. " }, style: "STRONG"),
                                                " ",
                                                local!confirmationMessage
                                              }
                                            )
                                          )
                                        },
                                        alignVertical: "MIDDLE",
                                        spacing: "STANDARD"
                                      )
                                    },
                                    style: "WARN",
                                    marginBelow: "STANDARD",
                                    accessibilityText: "Warning message"
                                  ),
                                  /* Error Banner */
                                  a!cardLayout(
                                    contents: {
                                      a!sideBySideLayout(
                                        items: {
                                          a!sideBySideItem(
                                            item: a!richTextDisplayField(
                                              labelPosition: "COLLAPSED",
                                              value: {
                                                a!richTextIcon(
                                                  icon: "exclamation-circle",
                                                  color: "NEGATIVE",
                                                  size: "MEDIUM"
                                                )
                                              }
                                            ),
                                            width: "MINIMIZE"
                                          ),
                                          a!sideBySideItem(
                                            /* Replace this rich text with your error message */
                                            item: a!richTextDisplayField(
                                              labelPosition: "COLLAPSED",
                                              value: {
                                                a!richTextItem(text: { "ERROR." }, style: "STRONG"),
                                                " ",
                                                local!confirmationMessage
                                              }
                                            )
                                          )
                                        },
                                        alignVertical: "MIDDLE",
                                        spacing: "STANDARD"
                                      )
                                    },
                                    style: "ERROR",
                                    marginBelow: "STANDARD",
                                    accessibilityText: "Error message"
                                  ),

                                )
                              )
                            )
                          }
                        },
                        width: "MEDIUM_PLUS"
                      ),
                      a!columnLayout()
                    }
                  )
                }
              ),

            }
          )
        },
        padding: if(
          a!isPageWidth("PHONE"),
          "STANDARD",
          "NONE"
        ),
        marginBelow: "NONE",
        showBorder: false
      )
    }
  )
)
```

![screenshot of a submission form for making a dining reservation](images/recaptcha_interface_example.png)

## Testing, monitoring, and troubleshooting reCAPTCHA

It may be difficult to determine how well reCAPTCHA works on your Portals, but you can get helpful insights through testing and monitoring. You can test different aspects of reCAPTCHA through [Google unit testing](#unit-testing) and [Appian expression testing](#using-recaptcha-in-appian-designer). You can also [monitor your Portals usage through reCAPTCHA in Google](#google-recaptcha-metrics) at any time.

If you are having trouble with reCAPTCHA scores or connecting to the reCAPTCHA server, check that your [reCAPTCHA instance is unique](#use-unique-recaptcha-instances) and that your [keys and IDs are correct](#check-your-keys-and-ids).

### Unit testing

Testing reCAPTCHA can be tricky, because the most accurate reCAPTCHA results are tailored to your page and how users interact with it. Because there isn't any production data, you can't test reCAPTCHA completely in Appian development environments.

Google offers [reCAPTCHA unit testing](https://cloud.google.com/recaptcha-enterprise/docs/faq#id_like_to_run_automated_tests_with_what_should_i_do) to help you test your logic. For example, you may want to make sure your interface displays a different message for low and high scores.

Google's reCAPTCHA unit testing allows you to create [score-based site keys](https://cloud.google.com/recaptcha-enterprise/docs/faq#id_like_to_run_automated_tests_with_what_should_i_do) that will always return a set score, such as 1 or 0, so you can see how your logic works when the specified score is returned.

In your development or testing environment, you can set up your reCAPTCHA connected system to use these score-based site keys. Then test your portal using different score-based site keys to test your logic.

### Using reCAPTCHA in Appian Designer

reCAPTCHA won't work inside Appian designer or any expression editor and will always evaluate the _onError_ parameter, so you won't be able to test your connection to the reCAPTCHA server.

You can test your expressions and logic to make sure that it is working as expected using the Google [score-based site keys](https://cloud.google.com/recaptcha-enterprise/docs/faq#id_like_to_run_automated_tests_with_what_should_i_do) and testing them with your portal in an Appian development or test environment.

### Google reCAPTCHA metrics

You can [monitor your reCAPTCHA usage and check out the analytics](https://developers.google.com/recaptcha/docs/analytics) at any time by heading over to the Google Admin Console. There, you can find information on the number of requests and misuses, types of actions, and overall score distribution. Remember that your data may not be accurate early on, so it's best to wait until your portal has had sufficient time to gather production data before you draw any conclusions from the analytics.

### Use unique reCAPTCHA instances

reCAPTCHA analyzes how users interact with your page and determines whether the behavior is likely a human or bot. This means that the data collected for each page will be different and scores will only be accurate for the one portal that the user behavior is based off of. To get the most accurate results for each Portal, you must have a separate instance of reCAPTCHA for each portal using reCAPTCHA.

If you think you aren't getting the most accurate results or the reCAPTCHA scores aren't what you expected, make sure that you have a separate instance of reCAPTCHA for each Portal. Otherwise, the reCAPTCHA scores won't be accurate.

### Check your keys and IDs

If reCAPTCHA isn't working on your portal, be sure to check that your site key, secret key, and project ID are correct before seeking further support. You can update and test the credentials at any time in the reCAPTCHA connected system.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...