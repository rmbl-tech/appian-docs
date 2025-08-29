---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/modifying-key-dates.html
original_path: kyc-23.3.1.6/modifying-key-dates.html
version: "25.3"
title: "Modifying Key Dates"
page_id: "kyc-23.3.1.6/modifying-key-dates"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modifying Key Dates

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected KYC, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Task due dates allow the Connected KYC solution to quantitatively measure if Investigations and their associated tasks are being completed on time. Further details and data about task due dates across an institution are displayed on the Reports tab.

By default, task due dates are calculated based on a KYC investigation's target completion date This is set by the business owner in the [Connected FS Settings](setting-up-processes.html) site. A task's due date may also be calculated based on other associated due dates for that Investigation.

## Adding a key date

The examples in this section will follow adding After Created Date as a key date option.

![after_created_date.png](images/after_created_date.png)

### Step 1: Add a new key date rule to the database

Add a new row in the `AS_KYC_R_DATA` table with the following attributes:

-   LABEL: The bundle label key
-   TYPE: SLA Rule Type
-   CODE: SLA\_RULE\_TYPE\_NEW\_KEY\_DATE
-   IS\_ACTIVE: true (1)
-   CREATED\_BY: Your Appian username.
-   CREATED\_DATETIME: The current timestamp, in the format YYYY-MM-DD HH:MM:SS.
-   MODIFIED\_BY: Your Appian username.
-   MODIFIED\_DATETIME: The current timestamp, in the format YYYY-MM-DD HH:MM:SS.

#### EXAMPLE

```
1
2
INSERT INTO `AS_KYC_R_DATA` (`R_DATA_ID`, `LABEL`, `TYPE`, `CODE`, `SORT_ORDER`, `ICON`, `COLOR`, `IS_ACTIVE`, `CREATED_BY`, `CREATED_DATETIME`, `MODIFIED_BY`, `MODIFIED_DATETIME`)
VALUES (NULL, 'SlaRuleType.lbl_AfterCreatedDate', 'SLA Rule Type', 'SLA_RULE_TYPE_AFTER_CREATED_DATE', NULL, '', '', '1', <username>, CURRENT_TIMESTAMP(),<username>, CURRENT_TIMESTAMP());
```

### Step 2: Create a constant for the new SLA rule

Create a new constant that's value is the code from the row in the database you added to `AS_KYC_R_DATA` in [Step 1](#step-1-add-a-new-key-date-rule-to-the-database).

#### EXAMPLE

Create a constant called `AS_KYC_ENUM_SLA_RULE_AFTER_CREATED_DATE` with the value: SLA\_RULE\_TYPE\_AFTER\_CREATED\_DATE.

### Step 3: Update the bundle file

Open the SlaRuleType bundle file in each language and add the labelKey in that you added to the `AS_KYC_R_DATA` in [Step 1](#step-1-add-a-new-key-date-rule-to-the-database).

#### EXAMPLE

```
1
2
3
lbl_BeforeFundingDate=Before Funding Date
lbl_AfterFundingDate=After Actual Funding Date
!lbl_AfterCreatedDate=After Created Date
```

### Step 4: Update the rule to calculate due dates

Open up the rule `AS_KYC_BL_calculateTaskDueDateFromSlaDays` and add to the conditional if() statement the logic needed for the new key date and add the new date as a rule input.

#### EXAMPLE

**AS\_KYC\_BL\_calculateTaskDueDateFromSlaDays Rule**

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
if(
  or(
    rule!AS_CO_UT_isBlank(
      ri!slaDays
    ),
    rule!AS_CO_UT_isBlank(
      ri!fundingDate
    ),
!   rule!AS_CO_UT_isBlank(
!     ri!createdDate
!   )
  ),
  null,
  if(
    ri!slaRule = cons!AS_KYC_ENUM_SLA_RULE_BEFORE_EST_FUNDING_DATE,
    if(
      ri!slaDayType = cons!AS_KYC_ENUM_SLA_DAY_TYPE_BUSINESS_DAYS,
      workday(
        ri!fundingDate,
        - ri!slaDays
      ),
      /*default is calendar days*/
      ri!fundingDate - ri!slaDays,
    ),
!   if(
!     ri!slaRule = cons!AS_KYC_ENUM_SLA_RULE_AFTER_CREATED_DATE,
!     if(
!       ri!slaDayType = cons!AS_KYC_ENUM_SLA_DAY_TYPE_BUSINESS_DAYS,
!       workday(
!         ri!createdDate,
!         - ri!slaDays
!       ),
!       /*default is calendar days*/
!       ri!createdDate - ri!slaDays,
!     ),
      if(
        ri!slaDayType = cons!AS_KYC_ENUM_SLA_DAY_TYPE_BUSINESS_DAYS,
        workday(
          ri!fundingDate,
          + ri!slaDays
        ),
        /*default is calendar days*/
        ri!fundingDate + ri!slaDays,
      )
    )
  )
)

```

### Step 5: Add the new rule input to all dependent rules

Add new rule input to the two rules that `AS_KYC_BL_calculateTaskDueDateFromSlaDays` is dependent on and then pass in the appropriate logic.

The rules to update are:

1.  `AS_KYC_CDT_mapTemplateTaskToRuntimeTask`
2.  `AS_KYC_UT_updateTasksDueDate`

#### EXAMPLE

**AS\_KYC\_CDT\_mapTemplateTaskToRuntimeTask Rule**

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
...
  modifiedDatetime: null,
  dueDate: rule!AS_KYC_BL_calculateTaskDueDateFromSlaDays(
    slaDays: ri!templateTask.slaDays,
    slaRule: ri!templateTask.slaRule,
    fundingDate: ri!request.fundingDetails.estFundingDate,
    slaDayType: ri!template.slaDayType,
!   createdDate: todate(ri!request.createdDatetime)
  ),
  slaDays: ri!templateTask.slaDays,
  slaRule: ri!templateTask.slaRule
)
```

## Removing a key date

To remove a key date from the dropdown list in Connected FS Settings, update the 'isActive' column to false (0) in the AS\_KYC\_R\_DATA table for the corresponding row.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...