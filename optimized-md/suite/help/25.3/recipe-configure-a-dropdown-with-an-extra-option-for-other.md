---
source_url: https://docs.appian.com/suite/help/25.3/recipe-configure-a-dropdown-with-an-extra-option-for-other.html
original_path: recipe-configure-a-dropdown-with-an-extra-option-for-other.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure a Dropdown with an Extra Option for Other

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Interface patterns give you an opportunity to explore different interface designs. Be sure to check out [How to Adapt a Pattern for Your Application](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html).

## Goal

Show a dropdown that has an "Other" option at the end of the list of choices. If the user selects "Other", show a required text field.

![](images/SAIL-recipe-dropdown-with-other-option.png)

This scenario demonstrates:

-   How to configure a dropdown with an appended value
-   How to conditionally show a field based the selection of an 'Other' option
-   How to save one of two values when evaluating a form through a submit button

## Expression

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
a!localVariables(
  local!departments:{"Corporate","Engineering","Finance","HR","Professional Services"},
  /*
  * You need separate variables to temporarily store the dropdown selection
  * (local!selectedDepartment) and the value entered for "Other" (local!otherChoice).
  */
  local!selectedDepartment,
  local!otherChoice,
  local!savedValue,
  a!formLayout(
    titleBar: "Example: Dropdown with Extra Option for Other",
    contents: {
      a!dropdownField(
        label: "Department",
        instructions:"Value saved: "& local!savedValue,
        /*
        * Adding the "Other" option here allows you to store a separate value.
        * For example, if your choiceValues are integers, you could store -1.
        */
        choiceLabels: a!flatten({local!departments, "Other"}),
        choiceValues: a!flatten({local!departments, "Other"}),
        placeholder: "--- Select a Department ---",
        value: local!selectedDepartment,
        saveInto: local!selectedDepartment
      ),
      a!textField(
        label: "Other",
        value: local!otherChoice,
        saveInto: local!otherChoice,
        required: true,
        showWhen: local!selectedDepartment = "Other"
      )
    },
    buttons: a!buttonLayout(
      /*
      * The Submit button saves the appropriate value to its final location
      */
      primaryButtons: a!buttonWidget(
        label: "Submit",
        value: if(
          local!selectedDepartment = "Other",
          local!otherChoice,
          local!selectedDepartment
        ),
        saveInto: local!savedValue,
        submit: true
      )
    )
  )
)
```

## Expression (Offline)

This expression shows how to modify the above expression for offline use.

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
a!localVariables(
  local!departments:{"Corporate","Engineering","Finance","HR","Professional Services"},
  /*
  * You need separate variables to temporarily store the dropdown selection
  * (local!selectedDepartment) and the value entered for "Other" (local!otherChoice).
  */
  local!selectedDepartment,
  local!otherChoice,
  local!savedValue,
  a!formLayout(
    titleBar: "Example: Dropdown with Extra Option for Other",
    contents: {
      a!dropdownField(
        label: "Department",
        instructions:"Value saved: "& local!savedValue,
        /*
        * Adding the "Other" option here allows you to store a separate value.
        * For example, if your choiceValues are integers, you could store -1.
        */
        choiceLabels: a!flatten({local!departments, "Other"}),
        choiceValues: a!flatten({local!departments, "Other"}),
        placeholder: "--- Select a Department ---",
        value: local!selectedDepartment,
        saveInto: local!selectedDepartment
      ),
      a!textField(
        label: "Other",
        value: local!otherChoice,
        saveInto: local!otherChoice,
        required: local!selectedDepartment = "Other"
      )
    },
    buttons: a!buttonLayout(
      /*
      * The Submit button saves the appropriate value to its final location
      */
      primaryButtons: a!buttonWidget(
        label: "Submit",
        value: if(
          local!selectedDepartment = "Other",
          local!otherChoice,
          local!selectedDepartment
        ),
        saveInto: local!savedValue,
        submit: true
      )
    )
  )
)
```

## Test it out

1.  Select **Other** in the dropdown, enter a value and click on the **Submit** button. Notice that the value saves on the submit button.

## Notable implementation details

-   Notice that we cleared out the opposite variable upon submission so that only one variable gets updated. That is, if the user filled out the "Other" field and then switched the dropdown back to an available option, `local!other` would be set to null on submission of the form.
-   The offline version of this recipe cannot have conditional display, so the _showWhen_ parameter of the _Other_ text field has been removed.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...