---
source_url: https://docs.appian.com/suite/help/25.3/key-pi-terms.html
original_path: key-pi-terms.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Key Concepts

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [developers](processhq.html#who-can-use-process-hq), [data stewards](processhq.html#-data-stewards), and [business users](processhq.html#who-can-use-process-hq). It describes the common concepts used throughout process insights.

## Business process

A **business process** represents a set of activities that your organization performs as a part of conducting business. Common business processes include receiving and fulfilling customer orders (order-to-cash), procuring goods from vendors (procure-to-pay), and onboarding new clients, but the process you want to analyze can be as unique as your business itself.

In Process HQ, the business process becomes a [**process**](add-process.html#what-is-a-process), that is, a unit of data that can be analyzed to uncover actionable insights.

**Note:**  If you're used to working with [process models](process-model-object.html) in Appian Designer, be aware that we're using the word process in a different way here. A business process is not the equivalent of a process model. A business process can, in fact, be made up multiple process models. For example, an order fulfillment process may use data collected from the Create Order process model, the Order Approval process model, and the Order Shipping process model.

## Cases, activities, events

Process HQ conceptualizes business processes using **cases**, **activities**, and **events**. To understand what these terms mean, let's look at a few examples.

First, let's imagine a company with a business process for onboarding new customers. This process involves the following steps:

-   An application is received.
-   An initial review is performed.
-   Documents are verified.
-   The customer account is created.
-   The customer is notified.

Each of these steps in the business process is referred to as an **activity**. Activities are the real-world tasks or actions that occur as part of a business process. In this example, each customer application that goes through this process is represented by a **case**. Cases are specific occurrences of a business process.

Let's look at another example for managing customer support tickets. In this business process:

-   A support ticket is submitted.
-   The ticket is categorized.
-   The ticket is assigned.
-   The issue is addressed.
-   The submitter is notified.

Here, the support tickets are cases, and each step in the process is an activity.

In both examples, cases move through a business process as activities are completed. Each time an activity is completed for a given case, that is considered an **event**.

At minimum, events have three key components:

-   The activity that occurred.
-   The case for which the activity occurred.
-   A timestamp for when the activity occurred for that case.

## Case record type and event history record type

Both cases and events are represented in Appian as records. At minimum, Process HQ requires a **case record type** containing one record for each case, and an **event history record type** for events. These record types must have [data sync](records-data-sync.html) enabled and there must be a one-to-many [relationship](record-type-relationships.html) between the case and event history record types.

Let's look at a basic example of record types for the customer onboarding process. The cases are stored in the Onboarding Case record type and the events are in the Onboarding Event History record type.

As mentioned earlier, each event (or row in the Onboarding Event History record type) must have at least three fields, in addition to a primary key: a field relating it to a case, a field to capture the activity performed, and a timestamp.

Other fields in the case record type and the event history record type can be used by Process HQ for filtering, sorting, and aggregating your data during analysis. Process HQ can also access data from related record types, provided that they have data sync enabled.

Data stewards will use this collection of data to [add processes](add-process.html) in Process HQ. Process HQ then analyzes the cases and events to generate a processes diagram and discover patterns based on case and event attributes.

## Case data and event data

In process insights, **case data** is an umbrella term that represents the combination of data from the case record type and its related record types.

For example, in a purchase order process, your case record type would be the Order record type. The Order record type likely has a few relationships configured, like a relationship to the Order Items record type and Customers record type.

Data stewards can use the order data and its related data to build a more comprehensive understanding of the entire order process: the orders themselves, the number of items included in each order, and which customer submitted each order.

In process insights, **event data** is an umbrella term that represents the combination of data from the event history record type and its related record types.

For example, as a best practice, you should store the list of activities that can occur in a process in a separate, related record type. If you've configured the [record events](record-events.html) capability, this record type is called the event type lookup record type.

## Attributes

An **attribute** is a characteristic of a case or event that provides additional context for the process, such as the cost of an event, the user who performed the event, or the location of a related customer. For example, in a Financial Customer Onboarding app, the customer's region might be a helpful attribute, so you can determine whether there are differences in how long a process takes for each region.

Fields in both case and event data are mapped to attributes when you [submit your process data for analysis](add-process.html). These attributes help define or distinguish cases or events, and **attribute values** can be used as filters in [process exploration](explore.html) and [insight creation](investigate.html).

## Sequences

A sequence represents the flow from one [activity](#cases-activities-events) to another activity.

The first activity in the sequence is known as the **starting activity**. The second activity is known as the **ending activity**.

In a **direct sequence**, the ending activity takes place immediately after the starting activity. The direct sequence is known as a **repetition** if the sequence starts and ends with the same activity. Typically, repetitions can be eliminated to reduce [case duration](#duration).

In an **indirect sequence**, other activities can occur between the starting activity and the ending activity. The indirect sequence is known as a **loop** if the end activity for the sequence returns to a previous activity in the process flow. A loop may represent an intentional aspect of your workflow, or it may represent rework that you can potentially eliminate to reduce [case duration](#duration).

## Occurrences

Process HQ uses [your data](capture-process-data.html#overview) to automatically identify any [sequences](#sequences), [repetitions](#sequences), and [activities](key-pi-terms.html#cases-activities-events) in your process. We call these **process parts**. Each time a process part occurs in a case, we call it an **occurrence**. Process HQ lets you examine how long occurrences take, as well as how often occurrences take place, so you can understand and improve your process.

## Duration

Measuring how long a process (or some part of the process) takes to complete is one of the primary ways to track process success. This measurement is referred to as the **duration**.

You can measure:

-   **Case duration:** How long completing all the activities in a case takes collectively.
-   **Sequence duration:** How long completing a sequence takes.
-   **Activity duration:** How long completing an activity takes.

**Tip:**  Duration isn't the only measure of process success. You can also count how often cases with specific attributes, activities, or sequences occur, so you can reduce unwanted business outcomes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...