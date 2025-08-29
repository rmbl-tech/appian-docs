---
source_url: https://docs.appian.com/suite/help/25.3/Function_Recipes.html
original_path: Function_Recipes.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Function Recipes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page lists a collection of function recipes you can use throughout the Appian application. Similar to a cookbook, it shows the individual ingredients that go into creating an expression using Appian functions, the order in which to combine them, and tips on when to use them or modify for preference.

The expressions listed below are not the only way to accomplish each desired outcome. This page is intended to teach you methods for creating expressions using Appian functions that are practical and efficient, as well as provide working expressions you can implement as is. Just as with cooking recipes, you may want to alter the values in each recipe to accommodate your specific requirements.

The function recipes are categorized by the type of output. Each recipe is titled with the question in mind, "What do you want to do?"

**Note:**  For function recipes that require a rule as an Ingredient, create the rule as listed before implementing the function recipe.

## Date/time results

### Retrieve next anniversary date

#### Use case

You want to retrieve next year's anniversary date based on a start date, such as an employee's hire date of **02/05/2011**.

#### Ingredients

-   [if()](fnc_logical_if.html)
-   [today()](fnc_date_and_time_today.html)
-   [date()](fnc_date_and_time_date.html)
-   [day()](fnc_date_and_time_day.html)
-   [month()](fnc_date_and_time_month.html)
-   [year()](fnc_date_and_time_year.html)

#### Inputs

-   start (date)

#### Expression

```
1
2
3
4
5
6
7
8
if(
  or(
    and(month(ri!start) <= month(today()), day(ri!start) <= day(today())),
    and(month(ri!start) < month(today()), day(ri!start) > day(today()))
  ),
  date(1 + year(today()), month(ri!start), day(ri!start)),
  date(year(today()), month(ri!start), day(ri!start))
)
```

### Start a timer one minute after a process starts

#### Use case

You want to set a timer to start exactly one minute after a process starts, as compared to automatically.

#### Ingredients

-   [pp!start\_time](Process_and_Report_Data.html#process-properties)
-   [minute()](fnc_date_and_time_minute.html)

#### Expression

Configure this in the "Delay until the date and time specified by this expression" on the Setup tab for the Timer Event.

`pp!start_time + minute(1)`

**Note:**  To change the time difference from 1 minute to more, modify the value in the `minute()` function as desired.

### Add ten minutes to a datetime value

#### Use case

You want to add ten minutes to a datetime value saved as pv!datetime.

#### Ingredients

-   [datetime](fnc_date_and_time_datetime.html)
-   [intervalds()](fnc_date_and_time_intervalds.html)

#### Expression

`pv!datetime + intervalds(0,10,0)`

**Note:**  To change interval added to the datetime value, modify the values in `intervalds()` as desired.

### Determine if a date-time value falls within working hours

#### Use case

Users are able to enter any date-time value, but you want to perform an extra validation after users submit the form to determine if a date-time value (saved as **ri!dt**) falls between your company's working hours of 6:00 AM and 5:00 PM.

The idea is to work with one consistent time scale, which is done here by the use of timestamps rather than both hours and minutes. This function constructs new timestamps for the boundaries matching the input.

#### Ingredients

-   [or()](fnc_logical_or.html)
-   [gmt()](fnc_date_and_time_gmt.html)
-   [datetime()](fnc_date_and_time_datetime.html)
-   [year()](fnc_date_and_time_year.html)
-   [month()](fnc_date_and_time_month.html)
-   [day()](fnc_date_and_time_day.html)

#### Inputs

-   dt (DateTime)

#### Expression

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
or(
  ri!dt > gmt(
    datetime(
      year(ri!dt),
      month(ri!dt),
      day(ri!dt),
      17,
      0,
      0
    )
  ),
  ri!dt < gmt(
    datetime(
      year(ri!dt),
      month(ri!dt),
      day(ri!dt),
      6,
      0,
      0
    )
  )
)
```

**Note:**  To change the working hours, modify the values within the `datetime()` function as desired

### Display the number of days before a specific date

#### Use case

You want to tell users how many business days are left before a deal closes, if the deal has already closed, or if the deal is closing today.

#### Ingredients

-   [if()](fnc_logical_if.html)
-   [networkdays()](fnc_date_and_time_networkdays.html)
-   [today()](fnc_date_and_time_today.html)

#### Inputs

-   closeDate (Date)

#### Expression

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
if(
  networkdays(today(), ri!closeDate)<=0,
  "This deal has closed.",
  if(
    networkdays(today(), ri!closeDate)=1,
    "This deal will close at the end of today.",
    "This deal will close in" & networkdays(today(), ri!closeDate) & "business days."
  )
)
```

**Note:**  To change the text that displays, modify the text as desired. To base the number of days on a system calendar, replace any instance of `networkdays(today(), ri!closeDate)` with `calworkdays(today(), ri!closeDate, "companyCalendar")` where `companyCalendar` is the name of your system calendar. To include all days (including weekends), replace any instance of `networkdays(today(), ri!closeDate)` with `tointeger(ri!closeDate - today())`.

See also: [calworkdays()](fnc_date_and_time_calworkdays.html) and [tointeger()](fnc_conversion_tointeger.html)

### Convert an XML string into a value of type Datetime

#### Use case

You have a localized XML string representing a date and time and need to convert it to a value of type Datetime in the GMT timezone.

#### Ingredients

-   [a!localVariables()](fnc_evaluation_a_localvariables.html)
-   [split()](fnc_text_split.html)
-   [left()](fnc_text_left.html)
-   [right()](fnc_text_right.html)
-   [datetime()](fnc_date_and_time_datetime.html)
-   [gmt()](fnc_date_and_time_gmt.html)

#### Inputs

-   dateText (Text)

#### Expression

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
=a!localVariables(
  local!fullArray: split(ri!dateText, "T"),
  local!dateArray: split(local!fullArray[1], "-"),
  local!timeArray: split(left(local!fullArray[2], 12), ":"),
  local!smsArray: split(local!timeArray[3], "."),
  local!timeZone: "GMT" & right(local!fullArray[2], 6),
  local!rawDate: datetime(
    local!dateArray[1],
    local!dateArray[2],
    local!dateArray[3],
    local!timeArray[1],
    local!timeArray[2],
    local!smsArray[1],
    local!smsArray[2]
  ),
  gmt(
    local!rawDate,
    local!timeZone
 )
)
```

yields `9/25/2013 1:50 AM GMT+00:00` where `ri!dateText` = `2013-09-24T19:50:24.192-06:00`

## Number results

### Return the number of active employees in your application

#### Use case

You want to quickly display how many employee records exist in your application.

#### Ingedients

-   [topaginginfo()](fnc_scripting_topaginginfo.html)
-   [totalCount](Appian_Data_Types.html#complex-system-data-types)

#### Expression

-   `myQueryRule(topaginginfo(1,0)).totalCount`

**Note:**  When using a batchsize of 0 and attempting to only retrieve a total count based on a query, the function detailed above is better to use than `count(myQueryRule())`. If you used `count(myQueryRule())`, the system would run the main query; whereas using `.totalcount`, the system only executes a count query against the database.

### Return the total number of revisions made to a document

#### Use case

You want to show the number of times a document has had a new version saved.

#### Ingedients

-   [document()](fnc_scripting_document.html)

#### Input

-   doc (Document)

#### Expression

-   `document(ri!doc,"totalNumberOfVersions")-1)`

### Return a random integer in a range

#### Use case

You want to return a random integer between two integers, inclusive.

#### Ingredients

-   [rand()](fnc_mathematical_rand.html)
-   [tointeger()](fnc_conversion_tointeger.html)

#### Inputs

-   min (Number (Integer))
-   max (Number (Integer))

#### Expression

`ri!min + tointeger(rand() * (ri!max - ri!min))`

## Text results

### Truncate text after 50 characters

#### Use case

You want to truncate the remaining part of a text value once it surpasses 50 characters by replacing the excess text with an ellipsis (…).

#### Ingredients

-   [if()](fnc_logical_if.html)
-   [len()](fnc_text_len.html)

#### Inputs

-   text (Text)

#### Expression

```
1
2
3
4
5
if(
  len(ri!text) > 50,
  left(ri!text, 50) & "...",
  ri!text
)
```

**Note:**  To change the amount of characters allowed before truncating, modify the numeric value as desired.

### Display the full name of a user

#### Use case

You want to display the full name of a user despite knowing only the username. Additionally, the field that is storing user information may not always contain a value.

**Tip:**  If the [User record type](Configure_Tempo_Users.html) has data sync enabled, you can [reference](Configure_Tempo_Users.html#reference-user-data) the `firstAndLastName` record field instead of building this expression.

#### Ingredients

-   [if()](fnc_logical_if.html)
-   [isnull()](fnc_informational_isnull.html)
-   [user()](fnc_people_user.html)

#### Inputs

-   user (User)

#### Expression

```
1
2
3
4
5
if(
  isnull(ri!user),
  "",
  user(ri!user, "firstName") & " " & user(ri!user, "lastName")
)
```

**Note:**  To change the user information that is populated, modify the second parameter in the `user()` function as desired.

### Create a title from any text value

#### Use case

You want to convert a text value to display as a title, which will capitalize the first word, and all words not found in a "no capitalize" list.

#### Ingredients

-   [proper()](fnc_text_proper.html)
-   [split()](fnc_text_split.html)
-   [trim()](fnc_text_trim.html)
-   [a!localVariables()](fnc_evaluation_a_localvariables.html)
-   [a!forEach()](fnc_looping_a_foreach.html)
-   [if()](fnc_logical_if.html)
-   [contains()](fnc_set_contains.html)
-   [and()](fnc_logical_and.html)
-   [not()](fnc_logical_not.html)

#### Inputs

-   title (Text)

#### Expression

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
a!localVariables(
  /* Breaks up the title into an array of words and removes whitespaces. */
  local!titleArray: split(trim(ri!title), " "),
  /* A list of words that will be ignored. Adjust this list to change what does not get capitalized. */
  local!noCaps: {"a","an","the","at","by","in","of","up","as","and","but","or","for","nor","etc.","etc","on","at","to","from", "that"},
  /* If the word is in local!noCaps but not the first word, don't capitalize. Otherwise capitalize the word. */
  concat(
    a!forEach(
      items: local!titleArray,
      expression: if(
        and(not(fv!isFirst), contains(local!noCaps, fv!item)),
        fv!item,
        proper(fv!item)
      ) & if(fv!isLast, "", " ")
    )
  )
)
```

**Note:**  To produce initial caps for your own text, modify the text value as desired.

## Array results

### Remove all values in an array

#### Use case

You want to remove all values in an array so it is considered empty.

#### Ingredients

-   [ldrop()](fnc_array_ldrop.html)
-   [count()](fnc_statistical_count.html)

#### Inputs

-   array (Any Array)

#### Expression

`ldrop(ri!array, count(ri!array))`

**Note:**  Instead of the word array, enter the name or array reference as needed.

### Repeat each item in an array based on the values of a different array

#### Use case

You want to repeat each item in an array (for example, `local!textList`) a certain number of times as defined by the values in a different array (for example, `local!frequencyList`).

-   Where `local!textList = {"a", "b", "c"}` and `local!frequencyList = {2, 3, 1}`, the output would be `{"a", "a", "b", "b", "b", "c"}`.

#### Ingredients

-   [a!forEach()](fnc_looping_a_foreach.html)
-   [repeat()](fnc_scripting_repeat.html)

#### Inputs

-   textList (Array)
-   frequencyList (Array)

#### Expression

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
load(
  local!textList: {"a","b","c"},
  local!frequencyList:{2,3,1},
  a!forEach(
    items:local!textList,
    expression: repeat(
      local!frequencyList[fv!index],
      fv!item
    )
  )
)
```

**Note:**  To change which variables to use, modify the textList value to the array variable that should determine the text to repeat and modify the frequencyList value to the array variable that should determine how many times each text value in the aforementioned array should be repeated.

### Extract a list from an EntityData array of the data written to a single entity

#### Use case

You want to extract the list of data written to an entity (for example, Opportunity) based on the output generated by using the Write to Multiple Data Store Entities Smart Service to write to three entities: Opportunity, Contact, and Line Item.

See also: [Write to Multiple Data Store Entities Smart Service](Write_to_Multiple_Data_Store_Entities_Smart_Service.html)

The explanation of the configuration is longer than the solution. If you configure the Write to Multiple Data Store Entities Smart Service to update data for three entities (Opportunity, Contact, and Line Item), each entity may show up more than once in the EntityData input array. Consequently, the output of the smart service ("Stored Values") would contain a dynamic number of elements for each EntityData.

To get the list of all Opportunities that were updated by the smart service, you need to append every Data field where the entity is equal to Opportunity.

#### Ingredients

-   [a!forEach()](fnc_looping_a_foreach.html).
-   [Write to Multiple Data Store Entity Smart Service](Write_to_Multiple_Data_Store_Entities_Smart_Service.html).
    -   [StoredValue (EntityData)](Write_to_Multiple_Data_Store_Entities_Smart_Service.html#node-outputs).
-   OPPORTUNITY\_ENTITY Constant [(Data Store Entity)](Appian_Data_Types.html#data-store-entity).
    -   `entityData` is the array to operate on and `entity` is the context parameter.

#### Expression

Within the expression editor of a new [custom output](Process_Node_and_Smart_Service_Properties.html#custom-outputs):

```
1
2
3
4
5
6
7
8
a!forEach(
  items: merge(ac!StoredValues, cons!OPPORTUNITY_ENTITY),
  expression: if(
    fv!item[1].entity = fv!item[2],
    fv!item.Data,
    {}
  )
)
```

**Note:**  To change the entity by which to pull the list of data from, modify the OPPORTUNITY\_ENTITY value as desired.

### Sort an array

#### Use case

You want to sort an array of values.

#### Ingredients

-   [todatasubset()](fnc_scripting_todatasubset.html)
-   [a!forEach()](fnc_looping_a_foreach.html)
-   [a!pagingInfo()](fnc_system_a_paginginfo.html)
-   [a!sortInfo()](fnc_system_a_sortinfo.html)

#### Inputs

-   array (Any Array)

#### Expression

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
todatasubset(
  a!forEach(
    ri!array,
    {
       value: fv!item
    }
  ),
  a!pagingInfo(
    startIndex: 1,
    batchSize: -1,
    sort: a!sortInfo(
      field:"value",
      ascending: true
    )
  )
).data.value
```

## Boolean results

### Determine if items in an array are contained within another array

#### Use case

You want to see if any of the items in an array are contained within another array.

#### Ingredients

-   [contains()](fnc_set_contains.html)
-   [a!forEach()](fnc_looping_a_foreach.html)
-   [or()](fnc_logical_or.html)

#### Expression

```
1
2
3
4
5
6
or(
  a!forEach(
    items:ri!originalArray,
    expression: contains(ri!compareArray, fv!item)
  )
)
```

## Matching results

### Return a CDT from an array that contains a field value matching another value

#### Use case

You have an array of department CDTs, each containing a field called `Id`, and you want to retrieve the CDT with an `id` value matching the value of a process variable.

#### Ingedients

-   [displayvalue()](fnc_conversion_displayvalue.html)
-   rule input: `ri!departmentid` (Integer)
-   rule input: `ri!departments` (CDT Array)
-   Custom Data Type:

    ```
    1
    2
    3
          department (Text)
              |- id (Integer)
              |- address (Text)
    ```

#### Expression

`displayvalue(ri!departmentId, ri!departments.id, ri!departments, "none")`

**Note:**  To change the value that displays if the `ri!departmentId` doesn't match any `ri!department.id` values, modify the "none" text value as desired.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...