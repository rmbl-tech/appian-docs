---
source_url: https://docs.appian.com/suite/help/25.3/user-list-pattern.html
original_path: user-list-pattern.html
version: "25.3"
title: "User List Pattern"
page_id: "user-list-pattern"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User List Pattern

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

The user list pattern retrieves all the users in a specified group and displays them in a single column. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

Each user's name and title appears next to their profile picture which uses the "avatar" style. Paging controls are provided at the bottom for browsing longer lists of users.

This pattern is also useful for:

-   Learning how to show a list of data using alternate representations to a Read-Only Grid
-   Understanding how to create custom paging controls

## Design structure

The main components in this pattern are heading components, side by side layouts, and a rich text link. The image below displays how the pattern looks on a blank interface with callouts of the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![user_list_pattern.png](images/patterns/user_list_pattern.png)

### Pattern expression

When you drag and drop the user list pattern onto your interface, 174-lines of expressions will be added to the section where you dragged it.

### \[Lines 1-11\] Define paging info, users, and pages users

At the top of the pattern, local variables set up the following: `local!userListPagingInfo`: Paging info for the list. `local!users`: The list of users to display. `local!pagedUsers`: Formatted datasubset of the list of users.

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
{
  a!localVariables(
    local!userListPagingInfo: a!pagingInfo(startIndex: 1, batchSize: 5, sort: a!sortInfo(field: "user", ascending: true)),
    local!users: a!forEach(
      /* This directly references the ID of the Designers group. Instead of an ID, a constant *
       * should be used to reference the group you want to pull users from.                   */
      items: getdistinctusers(togroup(23)),
      expression: {user: fv!item}
    ),
    /* Since we're retrieving users from an Appian group instead of a query, we make our own datasubset */
    local!pagedUsers: todatasubset(local!users, local!userListPagingInfo),
```

### \[Lines 12-18\] Use the heading component to style the list label

The first visible component is the heading component used to label the list.

```sail
12
13
14
15
16
17
18
    {
      {
        a!headingField(
          text: "Team Members",
          size: "MEDIUM",
          fontWeight: "BOLD"
        ),
```

### \[Lines 19-53\] Use `a!forEach()` to loop over the list of users

Then, we use `a!forEach()` to loop over the list of users. Each user is represented by a single `a!sideBysideLayout()` containing two rich text display components. The first contains `a!imageField()` displaying the user's profile picture in the avatar style. The second contains two rich text items displaying the user's name and title.

```sail
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
        a!forEach(
          items: local!pagedUsers,
          expression: a!sideBySideLayout(
            items: {
              a!sideBySideItem(
                item: a!imageField(
                  images: { a!userImage(user: fv!item.user, link: a!userRecordLink(user: fv!item.user)) },
                  size: "SMALL",
                  style: "AVATAR"
                ),
                width: "MINIMIZE"
              ),
              a!sideBySideItem(
                item: a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      /* This should be whatever you would use to display a user's name.  */
                      text: user(fv!item.user, "firstName") & " " & user(fv!item.user, "lastName"),
                      link: a!userRecordLink(user: fv!item.user),
                      linkStyle: "STANDALONE",
                      style: "STRONG"
                    ),
                    char(10),
                    a!richTextItem(
                      text: user(fv!item.user, "titleName"),
                      color: "SECONDARY"
                    )
                  }
                )
              )
            },
            alignVertical: "MIDDLE"
          )
        ),
```

### \[Lines 54-174\] Use a rich text display component to display paging controls

Paging controls at the bottom are provided by a single `richTextDisplayField` with 5 `richTextItems`:

-   Double angle brackets to page to the first page
-   Single angle bracket to page to the previous page
-   Count of the current and total users
-   Single angle bracket to page to the next page
-   Double angle brackets to page to the last page

**Tip:**  These paging controls are built with generic expressions that can handle any set of paged data.

```sail
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
        a!richTextDisplayField(
          value: {
            a!richTextIcon(
              icon: "angle-double-left",
              link: a!dynamicLink(
                saveInto: {
                  a!save(local!userListPagingInfo.startIndex, 1),
                  a!save(
                    local!pagedUsers,
                    /* Since we're retrieving users from an Appian group instead of a query, we make our own datasubset */
                    todatasubset(arrayToPage: local!users, pagingConfiguration: local!userListPagingInfo)
                  )
                },
                showWhen: local!userListPagingInfo.startIndex <> 1
              ),
              linkStyle: "STANDALONE",
              color: if(
                local!userListPagingInfo.startIndex <> 1,
                "STANDARD",
                "SECONDARY"
              ),
              size: "MEDIUM"
            ),
            a!richTextIcon(
              icon: "angle-left",
              link: a!dynamicLink(
                saveInto: {
                  a!save(
                    local!userListPagingInfo.startIndex,
                    if(
                      local!userListPagingInfo.startIndex - local!userListPagingInfo.batchSize < 1,
                      1,
                      local!userListPagingInfo.startIndex - local!userListPagingInfo.batchSize
                    )
                  )
                },
                showWhen: local!userListPagingInfo.startIndex <> 1
              ),
              linkStyle: "STANDALONE",
              color: if(
                local!userListPagingInfo.startIndex <> 1,
                "STANDARD",
                "SECONDARY"
              ),
              size: "MEDIUM"
            ),
            " ",
            a!richTextItem(
              text: {
                local!userListPagingInfo.startIndex,
                " - ",
                if(
                  local!userListPagingInfo.startIndex + local!userListPagingInfo.batchSize - 1 > local!pagedUsers.totalCount,
                  local!pagedUsers.totalCount,
                  local!userListPagingInfo.startIndex + local!userListPagingInfo.batchSize - 1
                )
              },
              size: "MEDIUM",
              style: "STRONG"
            ),
            a!richTextItem(
              text: {
                " of ",
                fixed(local!pagedUsers.totalCount, 0)
              },
              size: "MEDIUM"
            ),
            " ",
            a!richTextIcon(
              icon: "angle-right",
              link: a!dynamicLink(
                saveInto: {
                  a!save(
                    local!userListPagingInfo,
                    a!pagingInfo(
                      startIndex: local!userListPagingInfo.startIndex + local!userListPagingInfo.batchSize,
                      batchSize: local!userListPagingInfo.batchSize
                    )
                  )
                },
                showWhen: local!userListPagingInfo.startIndex + local!userListPagingInfo.batchSize - 1 < local!pagedUsers.totalCount
              ),
              linkStyle: "STANDALONE",
              color: if(
                local!userListPagingInfo.startIndex + local!userListPagingInfo.batchSize - 1 < local!pagedUsers.totalCount,
                "STANDARD",
                "SECONDARY"
              ),
              size: "MEDIUM"
            ),
            a!richTextIcon(
              icon: "angle-double-right",
              link: a!dynamicLink(
                saveInto: {
                  a!save(
                    local!userListPagingInfo.startIndex,
                    /* When jumping to the last page, make sure that the startIndex is an even multiple of batch size. *
                     * This ensures that you have the same last page as if you had gotten there one page at a time.    */
                    if(
                      mod(local!pagedUsers.totalCount, local!userListPagingInfo.batchSize) = 0,
                      local!pagedUsers.totalCount - local!userListPagingInfo.batchSize + 1,
                      local!pagedUsers.totalCount - mod(local!pagedUsers.totalCount, local!userListPagingInfo.batchSize) + 1
                    )
                  )
                },
                showWhen: local!userListPagingInfo.startIndex + local!userListPagingInfo.batchSize - 1 < local!pagedUsers.totalCount
              ),
              linkStyle: "STANDALONE",
              color: if(
                local!userListPagingInfo.startIndex + local!userListPagingInfo.batchSize - 1 < local!pagedUsers.totalCount,
                "STANDARD",
                "SECONDARY"
              ),
              size: "MEDIUM"
            )
          }
        )
      }
    }
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...