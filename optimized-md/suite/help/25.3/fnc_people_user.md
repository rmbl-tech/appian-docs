---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_user.html
original_path: fnc_people_user.html
version: "25.3"
title: "user() Function"
page_id: "fnc_people_user"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# user() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**user**( _username, property_ )

Returns information for a user.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`username`

 |

_Text_

 |

The username or user object of the user whose information should be retrieved.

 |
|

`property`

 |

_Text_

 |

The information to retrieve for this user. See [Usage considerations](#using-the-property-parameter).

 |

## Returns

Text

## Usage considerations

### Using the property parameter

The _property_ parameter accepts the following (case-sensitive) values:

-   firstName
-   middleName
-   lastName
-   displayName (the user's nickname)
-   supervisorName
-   titleName
-   email
-   phoneOffice
-   phoneMobile
-   phoneHome
-   address1
-   address2
-   address3
-   city
-   state
-   province
-   zipCode
-   country
-   locale
-   timeZone
-   customField1
-   customField2
-   customField3
-   customField4
-   customField5
-   customField6
-   customField7
-   customField8
-   customField9
-   customField10
-   uuid
-   created
-   status
-   userTypeId
-   userTypeName

**Note:**  `locale` and `timeZone` return the user's preference or null if not set.

### Querying multiple users

The `user()` function can only return information about a single user. If you need to return information about multiple users, you should use the [a!queryRecordType()](fnc_system_queryrecordtype.html) function to query the [User record type](Configure_Tempo_Users.html).

For example, you could use the `user()` function to [display a user's first and last name](#return-a-users-first-and-last-name). But, if you want to display the first and last name of all active users, you would use the following expression:

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
a!queryRecordType(
  recordType: recordType!User,
  fields: recordType!User.fields.firstAndLastName,
  filters: a!queryFilter(
    field: recordType!User.fields.active,
    operator: "=",
    value: true
  ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 500)
).data
```

Returns

```
1
2
3
4
Jane Doe
John Smith
Sam Jones
William Doe
```

Learn more about [referencing data from the User record type](Configure_Tempo_Users.html#reference-user-data)

### Autoscaled process models and application performance

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

The following examples use a sample record type called `Employee`. These expressions illustrate how to display data in a [record list](record-list.html), which is why they uses the `fv!` domain prefix.

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

### Return a user's first and last name

```
1
user(username: fv!row[recordType!Employee.fields.username], property: "firstName") & " " & user(username: fv!row[recordType!Employee.fields.username], property: "lastName")
```

Returns `Jane Doe`.

### Return the timestamp when a user was created

```
1
user(username: fv!row[recordType!Employee.fields.username], property: "created")
```

Returns `12/20/22 10:36 PM GMT`.

### Return a user's email

```
1
user(username: fv!row[recordType!Employee.fields.username], property: "email")
```

Returns `jane.doe@example.com`.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Compatible |  |
| Process Events | Compatible |

Can be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Partially compatible |

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...