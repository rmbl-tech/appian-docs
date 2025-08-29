---
source_url: https://docs.appian.com/suite/help/25.3/Populating_Label_Value_Inputs.html
original_path: Populating_Label_Value_Inputs.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Populating Label Value Inputs

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The [Post System Event](Post_System_Event_to_Feed_Smart_Service.html) and [Post Event](Post_Event_to_Feed_Smart_Service.html) smart services allow you to include additional information in your postings by populating the `Event Data` node input.

-   When the Event Data node input is populated, a link to additional event information is displayed on the post.
-   Clicking the link displays a table of additional information, such as the following examples.

<table class="appianTable"><tbody><tr><td><p><br></p><center><p><a href="images/Event_data_a4m.png"><embed src="images/Event_data_a4m.png" title="fig:Appian for Mobile Devices" width="200"></a><br>Appian for Mobile Devices</p></center><p><br></p></td><td><p><br></p><center><p><a href="images/Event_data_table_example.png"><embed src="images/Event_data_table_example.png" title="fig:News Feed" width="200"></a><br>News Feed</p></center><p><br></p></td></tr></tbody></table>

-   Each of the values that you want to list in such a table must be compiled using process activities.

## Creating a table of event data

You can build a table of `More Info` items by typing an expression into the **Event Data** node input, by listing the complex values. The following example lists a simple label and value pair that would appear as a single row.

{label:"item",value:"item"}

-   The **More Info** node input holds a [Label Value data type](Appian_Data_Types.html#labelvalue).
    -   You can pair a `label` with one `value` or many `value` items.
    -   Label entries must be [Text](Appian_Data_Types.html#text).
    -   The types of `value` items that can be used include the following.
        -   [Text](Appian_Data_Types.html#text)
        -   [Number (Decimal)](Appian_Data_Types.html#number-decimal)
        -   [Number (Integer)](Appian_Data_Types.html#number-integer)
        -   [Date](Appian_Data_Types.html#date)
        -   [Date and Time](Appian_Data_Types.html#date-and-time)
        -   [Time](Appian_Data_Types.html#time)
-   When you have more than one row to add (a common requirement) enclose all of your labels and values within another pair of curly brackets {} and separate the rows with commas `,` as shown in the following example.

{{label:"item",value:"item"},{label:"item",value:"item"}}

## Examples

There are different ways to assemble your Event Data table. Using a single expression is the simplest approach. For the examples in this section, we assume that the process has already saved the following process variable values to be displayed as event data.

| Process Variable | Data Type | Value |
| --- | --- | --- |
| OpportunityName | Text | `ITIL SOW` |
| OpportunityType | Text | `Professional Services` |
| OpportunityAccount | Text | `New Technologies` |
| OpportunityOwner | Text | `Juliana Doe` |
| OpportunityStage | Text | `7 - Legal` |
| DetailsLink | Text |
`"https://www.example.com/crm"`

-   Note that links in event posts are automatically recognized.

 |

### Expressions

These expression examples illustrate how to populate the value of an Event Data node input within a [Post Event to Feed Smart Service](Post_Event_to_Feed_Smart_Service.html) or a [Post System Event to Feed Smart Service](Post_System_Event_to_Feed_Smart_Service.html). The following expression could be used to display the subsequent Event Data table.

{{label:"Name",value:pv!OpportunityName},{label:"Type",value:pv!OpportunityType},{label:"Account Name",value:pv!OpportunityAccount},{label:"Owner",value:pv!OpportunityOwner},{label:"Stage",value:pv!OpportunityStage},{label:"Link",value:pv!DetailsLink}}

<table class="appianTable"><tbody><tr><td>Name</td><td><code>ITIL SOW</code></td></tr><tr><td>Type</td><td><code>Professional Services</code></td></tr><tr><td>Account Name</td><td><code>New Technologies</code></td></tr><tr><td>Owner</td><td><code>Juliana Doe</code></td></tr><tr><td>Stage</td><td><code>7 - Legal</code></td></tr><tr><td>Link</td><td><code>https://www.example.com/crm</code></td></tr></tbody></table>

It is possible to list multiple values for a single label. For example, the following expression could be used to display the subsequent Event Data table.

{{label:"Account",value:{pv!OpportunityName,pv!OpportunityType,pv!OpportunityAccount}},{label:"Owner and Stage",value:{pv!OpportunityOwner,pv!OpportunityStage}},{label:"Link",value:pv!DetailsLink}}

<table class="appianTable"><tbody><tr><td>Account</td><td><code>ITIL SOW</code><br><code>Professional Services</code><br><code>New Technologies</code></td></tr><tr><td>Owner and Stage</td><td><code>Juliana Doe</code><br><code>7 - Legal</code></td></tr><tr><td>Link</td><td><code>https://www.example.com/crm</code></td></tr></tbody></table>

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...