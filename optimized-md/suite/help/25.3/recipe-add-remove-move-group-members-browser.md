---
source_url: https://docs.appian.com/suite/help/25.3/recipe-add-remove-move-group-members-browser.html
original_path: recipe-add-remove-move-group-members-browser.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add, Remove, and Move Group Members Browser

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

Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

![screenshot example of members of a group](images/Group_Browser_Recipe_Opening_Picture.png)

The user and group browsers provide the ability for users to manage group membership from Tempo. In this recipe, you will learn how to configure an interface that enables users to perform the following operations:

1.  Add user members to a group.
2.  Remove user members from a group.
3.  Move a user members from one group to another.

For this recipe, you will need a group membership tree to test with. We used a department structure within a software engineering company, but feel free to use any hierarchy you want.

## Expression

Once you have created your groups and users, you will be ready to begin constructing the interface and process by following the steps below:

1.  From the application, create a new interface called `EX_addMoveRemoveUsers` with the following inputs:
    -   `ri!initialGroup` (Group) - the group whose direct members display in the first column of the browser, necessary to re-initialize the component after submittal.
    -   `ri!navigationPath` (User or Group array) - the navigation path that the user was seeing when the form was submitted, necessary to re-initialize the component after submittal.
    -   `ri!usersToAdd` (User Array) - the users to add as members to the `ri!addedToGroup`.
    -   `ri!addedToGroup` (Group) - the chosen group to add users to.
    -   `ri!userToRemove` (User) - the chosen user for the remove action.
    -   `ri!removeFromGroup` (Group) - the group from which the `ri!userToRemove` is being removed.
    -   `ri!userToMove` (User) - the chosen user for the move action.
    -   `ri!moveFromGroup` (Group) - the chosen group to move the `ri!userToMove` from.
    -   `ri!moveToGroup` (Group) - the chosen group to move the `ri!userToMove` to.
    -   `ri!btnAction` (Text) - determines flow of the process. Can be "ADD", "REMOVE", or "MOVE".
2.  Copy the following text into the expression view of `EX_addMoveRemoveUsers`

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
    a!localVariables(
    local!selectionValue,
    local!isUserSelected: runtimetypeof(local!selectionValue) = 'type! {http://www.appian.com/ae/types/2009}User',
    local!actionTaken: if(
      isnull(ri!btnAction),
      false,
      or(ri!btnAction = "ADD", ri!btnAction = "MOVE")
    ),
    local!navigationLength: if(
      isnull(ri!navigationPath),
      0,
      length(ri!navigationPath)
    ),
    a!formLayout(
      titleBar: "Manage Group Membership",
      contents: {
        /*
            If you use this as a related action, rather than using this  picker
            to choose the inital group, you would pass it in as context for
            the action.
          */
        a!pickerFieldGroups(
          label: "Select a group to view its members",
          maxSelections: 1,
          value: ri!initialGroup,
          saveInto: {
            ri!initialGroup,
            a!save(
              {
                ri!btnAction,
                ri!userToRemove,
                ri!userToMove,
                ri!addedToGroup,
                ri!removeFromGroup,
                ri!navigationPath,
                ri!moveFromGroup,
                ri!moveToGroup,
                ri!usersToAdd,
                local!selectionValue
              },
              null
            )
          }
        ),
        a!sectionLayout(
          showWhen: not(isnull(ri!initialGroup)),
          label: group(ri!initialGroup, "groupName") & " Group Members",
          contents: {
            a!buttonArrayLayout(
              buttons: {
                a!buttonWidget(
                  label: "Add Members",
                  disabled: or(
                    local!actionTaken,
                    local!navigationLength = 0
                  ),
                  value: "ADD",
                  saveInto: {
                    ri!btnAction,
                    a!save(
                      ri!addedToGroup,
                      if(
                        /*
                            If the user has not navigated anywhere, or
                            the user has clicked on a user in the first column,
                            save the intial group
                          */
                        or(
                          local!navigationLength = 0,
                          and(local!navigationLength = 1,  local!isUserSelected)
                        ),
                        ri!initialGroup,
                        if(
                          /* If a user is selected save the last group in the path */
                          local!isUserSelected,
                          togroup(ri!navigationPath[local!navigationLength - 1])
                          /* Otherwise save the end of the path */
                          togroup(ri!navigationPath[local!navigationLength])
                        )
                      )
                   )
                  }
                ),
                a!buttonWidget(
                  label: "Remove Member",
                  value: "REMOVE",
                  saveInto: {
                    ri!btnAction,
                    a!save(ri!userToRemove, local!selectionValue),
                    /*
                        Since a user needs to be removed from a group, the button
                        needs to determine what group the user should be removed from.
                      */
                    a!save(
                      ri!removeFromGroup,
                      if(
                        /* If the user is on the first column, save the initial group */
                        local!navigationLength = 1,
                        ri!initialGroup,
                        /* Otherwise save the group containing the selected user */
                        ri!navigationPath[local!navigationLength - 1]
                      )
                    ),
                    /*
                        This navigation path will be used to pre-populate the group browser
                        when the user returns to this interface after the selected user has
                        been removed. Therefore, we must remove the selected user from the
                        navigation path to prevent an error.
                      */
                    a!save(ri!navigationPath, rdrop(ri!navigationPath, 1))
                  },
                  disabled: or(local!actionTaken, not(local!isUserSelected)),
                  submit: true
                ),
                a!buttonWidget(
                  label: "Move Member",
                  style: "OUTLINE",
                  disabled: or(local!actionTaken, not(local!isUserSelected)),
                  value: "MOVE",
                  saveInto: {
                    ri!btnAction,
                    a!save(ri!userToMove, local!selectionValue),
                    /*
                        Since a user needs to be removed from a group, the button
                        needs to determine what group the user should be removed from.
                      */
                    a!save(
                      ri!moveFromGroup,
                      if(
                        /* If the user is in the first column save the initial group. */
                        local!navigationLength = 1,
                        ri!initialGroup,
                        /*  Otherwise save the last group in the navigation path */
                        ri!navigationPath[local!navigationLength - 1]
                      )
                    ),
                    a!save(ri!navigationPath, rdrop(ri!navigationPath, 1)),
                    a!save(ri!moveToGroup, ri!moveFromGroup)
                  }
                )
              }
            ),
            /*
                After selecting a member to move, the interface needs to allow the
                user to select a group to move the member to. To limit what can
                be selected to a group and not a user, we switch the component
                to a group browser
              */
            a!groupBrowserFieldColumns(
              labelPosition: "COLLAPSED",
              showWhen: ri!btnAction = "MOVE",
              rootGroup: ri!initialGroup,
              pathValue: ri!navigationPath,
              pathSaveInto: ri!navigationPath,
              selectionValue: ri!moveToGroup,
              selectionSaveInto: ri!moveToGroup
            ),
            /*
                Unless the user is in the process of moving members,
                the user has the option to select a user to move or remove
                or a group to add members to.
              */
            a!userAndGroupBrowserFieldColumns(
              labelPosition: "COLLAPSED",
              showWhen: not(ri!btnAction = "MOVE"),
              rootGroup: ri!initialGroup,
              pathValue: ri!navigationPath,
              pathSaveInto: ri!navigationPath,
              selectionValue: local!selectionValue,
              selectionSaveInto: local!selectionValue,
              readOnly: or(
                ri!btnAction = "ADD",
                ri!btnAction = "REMOVE"
              )
            ),
            /*
                Navigation cannot be cleared without configuration, so
                this link lets the user add members to the initial group.
              */
            a!linkField(
              labelPosition: "COLLAPSED",
              showWhen: not( local!actionTaken),
              links: {
                a!dynamicLink(
                  label: "+ Add Users to " & group(ri!initialGroup, "groupName"),
                  value: "ADD",
                  saveInto: {
                    ri!btnAction,
                    a!save(ri!addedToGroup, ri!initialGroup)
                  }
                )
              }
            )
          }
        ),
        a!sectionLayout(
          label: "Add Users to " & group(ri!addedToGroup, "groupName"),
          showWhen: ri!btnAction = "ADD",
          contents: {
            a!pickerFieldUsers(
              label: "Users to Add",
              value: ri!usersToAdd,
              saveInto: a!save(ri!usersToAdd, getdistinctusers(save!value)),
              required: true
            )
          }
        ),
        a!sectionLayout(
          label: "Move User",
          showWhen: ri!btnAction = "MOVE",
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                "Move ",
                a!richTextItem(
                  text: user(ri!userToMove, "firstName") & " " & user(ri!userToMove, "lastName"),
                  style: "STRONG"
                ),
                " from ",
                a!richTextItem(
                  text: group(ri!moveFromGroup, "groupName"),
                  style: "STRONG"
                ),
                " to"
              },
              readOnly: true
            ),
            a!pickerFieldGroups(
              labelPosition: "COLLAPSED",
              groupFilter: ri!initialGroup,
              value: ri!moveToGroup,
              saveInto: ri!moveToGroup,
              required: true
            )
          }
        ),
        a!buttonLayout(
          showWhen: local!actionTaken,
          primaryButtons: {
            a!buttonWidget(
              label: if(ri!btnAction = "ADD", "Add Users", "Move User"),
              style: "SOLID",
              disabled: if(
                ri!btnAction = "MOVE",
                or(ri!moveFromGroup = ri!moveToGroup, isnull(ri!moveToGroup)),
                if(isnull(ri!usersToAdd), true, length(ri!usersToAdd) = 0)
              ),
              submit: true
            )
          },
          secondaryButtons: {
            /*
                Allows the user to cancel the selected action. If the user
                cancels out of the action, we need to clear all the
                selection variables
              */
            a!buttonWidget(
              label: "Cancel",
              style: "OUTLINE",
              showWhen: local!actionTaken,
              value: null,
             saveInto: {
                ri!btnAction,
                ri!userToMove,
                ri!userToRemove,
                ri!addedToGroup,
                ri!removeFromGroup,
                ri!moveFromGroup,
                ri!moveToGroup,
                ri!usersToAdd,
                local!selectionValue
              }
            )
          }
        )
      },
      buttons: a!buttonLayout(
        primaryButtons: {
          a!buttonWidget(
            label: "Close",
            value: "CLOSE",
            saveInto: ri!btnAction,
            submit: true,
            validate: false
          )
        }
      )
     )
    )
    ```

### Notable expression details

The comments in the expression above point out many difficult concepts in this recipe. Some of the most important to note are listed below:

-   When managing group membership in process, keep track of the navigation path. This allows you to reinitialize the browser where the user left off, creating the feeling that the user never leaves the form. At the same time, you must be sure that the navigation path does not become invalidated due to altered group membership. In the example above, if a user is removed from a groups membership, it is also removed from the navigation path.
-   To extract the parent of the selected value from the path, use the following expression:

    ```
    1
    2
    3
    4
    5
     if(
       length(ri!navigationPath) = 1,
       ri!initialGroup,
       togroup(ri!navigationPath[length(ri!navigationPath) - 1])
     )
    ```

-   If using a user & group browser, use the `runtimetypeof()` combined with `'type!User'` and `'type!Group'` to determine what type of value is selected.
-   If using the recipe for a related action, pass the initial group in the related action context and remove the group picker from the interface.

## Getting the interface into a process model

To be able move group members, we need to use a process. We will continue this recipe by:

3.  Create a new process model named `Manage Group Members`.
4.  Add a new user input task, labeled `Manage Group Members`, connecting it to the start node. Make the connection an activity chain.
    -   Set this as a user input task rather than a start form so that you can loop back to it.
5.  On the **Forms** tab, enter the name of your `EX_addMoveRemoveUsers` interface in the search box and select it.
6.  Click **Yes** when the Process Modeler asks, "Do you want to import the rule inputs?". This will create node inputs.
7.  On the **Data** Tab, for each activity class variable, add a duplicate process variable to save the activity class variable.
    -   For **initialGroup**, set the corresponding process variable as the input value.
    -   For **navigationPath**, set the corresponding process variable as the input value.
8.  Assign the task to the process initiator.

At this point, you can connect the input task to the end node to have a functional process. Feel free to do this to test out your interface. None of the buttons will work, but that is coming up next. Before continuing, make sure to undo the testing connection between the input task and the end node.

To create a decision:

9.  Create a new **XOR** node below the input task and name it `Do What?` Connect the two with an activity chain.
10.  Move the end node to the left of the XOR, and connect the two.

Your process should now look like this:

![screenshot of the Manage Group Members process model with 4 nodes](images/Manage_User_Members_First_Process_Picture.png)

Now you can start to actually build the nodes that handle the actions.

To build the nodes connected to the gateway:

11.  Create three new sets of nodes, stemming from the gateway. Activity chain all connections going forward.
     -   Add **Add Group Members** and do not change the name.
     -   Add **Remove Group Members** and change the name to `Remove Group Member`.
     -   Add **Add Group Members** and **Remove Group Members** and connect them.
         -   Change the names to `Add Group Member for Move` and `Remove Group Member for Move`, respectively.
12.  Connect **Add Group Members**, **Remove Group Member**, and **Remove Group Member for Move** back to `Manage Group Membership`, and activity chain the connections.

     At this point, your process should look something like this:

     ![Screenshot of the Manage Group Members process model with 8 nodes](images/Manage_User_Members_Second_Process_Picture.png)

13.  Configure the **Do What?** logic:
     -   If `pv!btnAction = "ADD"` is True, then go to **Add Group Member**.
     -   Else If `pv!btnAction = "REMOVE"` is True, then go to **Remove Group Member**.
     -   Else If `pv!btnAction = "MOVE"` is True, then go to **Add Group Member for Move**.
     -   Else if none are true, go to **End Node**.

To configure the remaining nodes in the process model and publish as an action:

14.  In **Add Group Member**:
     -   Set **Choose New Members** to `pv!usersToAdd`.
     -   Set **Choose Group** to `pv!addToGroup`.
15.  In **Remove Group Member**:
     -   Set **Choose Members** to `pv!userToRemove`.
     -   Set **Group** to `pv!removeFromGroup`.
16.  In **Move to Group**:
     -   Set **Choose New Members** to `pv!userToMove`.
     -   Set **Choose Group** to `pv!moveToGroup`.
17.  In **Move from Group**:
     -   Set **Choose Members** to `pv!userToMove`.
     -   Set **Group** to `pv!moveFromGroup`.
18.  **Save & Publish** the process model.
19.  From the application, click **Settings**, then **Application Actions**.
20.  Add the process model **Manage Group Members** as an action called `Manage Group Members`.
21.  Publish your application.

## Test it out

At this point, you are ready to manage your groups membership.

To try it out:

1.  Go to the actions tab, click on your new **Manage Group Members** action.
2.  Click on a group and click **Add Members**.
3.  In the picker, type in names of users, and click **Add Users** to submit the form. You should be brought back to the interface, and the users should now appear as members of the group.
4.  Click on one of the new users.
5.  Click **Remove Member**. The user should no longer be a member of the group.
6.  Click on another user
7.  Click **Move Member**.
8.  Click on another group or type a group name in the picker. Click **Move User** to confirm. The user should now be moved.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...