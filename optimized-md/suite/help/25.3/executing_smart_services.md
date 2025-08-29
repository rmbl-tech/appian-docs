---
source_url: https://docs.appian.com/suite/help/25.3/executing_smart_services.html
original_path: executing_smart_services.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Executing Smart Services

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains how [Smart Services](Smart_Services.html) can be executed from an interface.

Much like `a!save()`, a single smart service function can be executed in the `saveInto` parameter. To see how this works, click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg) to copy and paste an example into the **Interface Definition**:

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
=a!buttonLayout(
  primaryButtons: {
    a!buttonWidget(
      label: "Update Name",
      saveInto: {
        a!updateUserProfile(
          user: loggedInUser(),
          firstName: "New name",
          lastName: user(loggedInUser(), "lastName"),
          email: user(loggedInUser(), "email")
        )
      }
    )
  }
)
```

Try clicking the button and then mousing over your avatar to see that your user account's first name has indeed been changed (assuming you have permission to modify your name). Don't forget to change it back when you're finished with this section.

The smart service can be combined with one or more `a!save()` functions. The following interface lets you type in a new name for yourself, then clears it from the text box when the button is clicked:

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
!=a!localVariables(
!  local!newName,
!  {
!    a!textField(
!      label: "New First Name",
!      value: local!newName,
!      saveInto: local!newName
!    ),
    a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Update Name",
          saveInto: {
            a!updateUserProfile(
              user: loggedInUser(),
              firstName: local!newName,
              lastName: user(loggedInUser(), "lastName"),
              email: user(loggedInUser(), "email")
            ),
!            a!save(local!newName, null)
          }
        )
      }
    )
  }
)
```

**Note:**  While you can use any number of saves, only one smart service can be executed in an interface `saveInto` parameter. To run multiple smart services, you can:

-   Use the [Start Process smart service](Start_Process_Smart_Service.html) to launch a process.
-   If on a record view, you can use a record related action.
-   If on a start or task form, you can let the user submit the form and use activity chaining to bring them to another form.

You can use the smart service's `onSuccess` parameter to configure one or more saves that will run if the smart service completes successfully. Any returned data from the smart service will be available in the `onSuccess` parameter via [function variables](parts-of-an-expression.html#function-variables). The following interface only clears the text field if the name has been successfully updated:

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
=a!localVariables(
  local!newName,
  {
    a!textField(
      label: "New First Name",
      value: local!newName,
      saveInto: local!newName
    ),
    a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Update Name",
          saveInto: {
            a!updateUserProfile(
              user: loggedInUser(),
              firstName: local!newName,
              lastName: user(loggedInUser(), "lastName"),
              email: user(loggedInUser(), "email"),
!              onSuccess: {
!                a!save(local!newName, null)
!              }
            )
          }
        )
      }
    )
  }
)
```

You can see what happens when there's an error by using an illegal character like `#` in your new name. Note that you can see what the error was, but users on an actual task, record, or report will not see these details.

To show them an error message, the smart service `onError` parameter can be configured with one or more saves that will update variables if the smart service fails. The following interface shows a validation message under the text field if an error occurs saving the name and clears it when it has saved successfully:

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
=a!localVariables(
  local!newName,
!  local!error: false,
  {
    a!textField(
      label: "New First Name",
      value: local!newName,
!      validations: if(
!        local!error,
!        "Couldn't save the new first name",
!        ""
!      ),
      saveInto: local!newName
    ),
    a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Update Name",
          saveInto: {
            a!updateUserProfile(
              user: loggedInUser(),
              firstName: local!newName,
              lastName: user(loggedInUser(), "lastName"),
              email: user(loggedInUser(), "email"),
              onSuccess: {
                a!save(local!newName, null),
!                a!save(local!error, false)
              },
!              onError: {
!                a!save(local!error, true)
!              }
            )
          }
        )
      }
    )
  }
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...