---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Decisions.html
original_path: Appian_Decisions.html
version: "25.3"
title: "Decision Tables in Appian"
page_id: "Appian_Decisions"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Decision Tables in Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian allows you to capture complex, business-specific logic in a zero-code, easy-to-read format with the decision design object.

Decisions are configured in the decision designer, which enables fast, intuitive implementation of business logic by way of [decision tables](Decisions.html#Decision_Basics).

On this page, you can learn about Appian decisions and what they can do for your applications, along with some [Common Uses for Decisions](#Common_Uses_for_Decisions). For other topics related to decisions, see:

-   [Create a Decision](Create_a_Decision.html) to learn how to create and configure a decision for use in your application.
-   [Decision Object](Decisions.html) for detailed design information.

## Benefits of using decisions

### Familiar and easy to use

Decisions are configured with decision tables based on the open [Decision Model and Notation (DMN) standard](https://www.omg.org/spec/DMN/). Business users and application developers alike can quickly configure business rules in the familiar decision table format using industry standard [logical operations](Create_a_Decision.html#define-decision-logic).

### Integrated testing

Testing your decisions are as easy as configuring them. The decision designer empowers you to continuously test and debug your decision inline as you are designing it by giving you rapid feedback on what a set of inputs will evaluate to and visualizing how your decision gets to that result.

[![images/Decision_Images/rule_order_testing.png](images/Decision_Images/rule_order_testing.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1650)

[![](images/Decision_Images/rule_order_testing.png)](#_)

### Design guidance

In addition to allowing fast and intuitive configuration of your decisions, the decision designer helps you create smarter decisions with a host of [validations and recommendations](Create_a_Decision.html#design-guidance) that help make sure your decisions will work correctly.

These include:

-   The designer immediately validates the soundness of your logic by identifying when values are invalid.

[![images/Decision_Images/invalid_range_validation.png](images/Decision_Images/invalid_range_validation.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1651)

[![](images/Decision_Images/invalid_range_validation.png)](#_)

-   The designer will highlight which of your business rules overlap with each other to identify when rules won't ever be matched.

[![images/Decision_Images/overlapping_rules.png](images/Decision_Images/overlapping_rules.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1652)

[![](images/Decision_Images/overlapping_rules.png)](#_)

-   Additionally, the designer also checks for completeness of your decision logic and intelligently identifies gaps in your logic.

[![images/Decision_Images/completeness_check.png](images/Decision_Images/completeness_check.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1653)

[![](images/Decision_Images/completeness_check.png)](#_)

### Powerful

Decisions are easy to use without sacrificing the power you've come to expect with Appian. A number of advanced features allow for achieving complex use cases.

These features include:

-   **Appian object output types**: Decisions can return [Appian objects as outputs](Decisions.html#elements-of-this-object) which enables uses cases such as determining task assignment and dynamic process execution.
-   **Leverage existing application reference data**: Decisions can use your application reference data (like case statuses) that is stored in constants, database tables, or external systems in their logic so you don't have to duplicate the entry of these values.
-   **Compound output**: Decisions can return more than a single output type when evaluated; this is called a compound output in DMN.
-   **Hit Policy**: Decisions leverage DMN [Hit Policies](Create_a_Decision.html#select-a-hit-policy) to provide different ways to evaluate your logic based on your use case.

### Available everywhere

As part of the Appian platform, decisions are available for use anywhere, across all your applications.

For example, you can:

-   Create rich, interactive user interfaces driven by decision logic.
-   Model dynamic process flows or determine task assignment.
-   Or expose your Decision as a service via [web APIs](Web_APIs.html) so that even your external systems can leverage the business rules you've defined in Appian.

## Common uses for decisions

With their easy configuration and extensive feature set, decisions can be used in a variety of different ways within your applications. You can use decisions to simplify other areas of application design like task assignment, dynamic process execution, record or action permissions, or even to determine a list of items.

This section highlights some common scenarios in applications today that require logic and describes how Appian decisions can be used to simplify the design and implementation of these use cases.

### Determining task assignment

It is very common for different types of case or request management applications at a business to require specific levels of approval. Since decisions can output Appian Objects and be called from anywhere (included processes), the entirety of the approval logic can be stored in a single place in an easy-to-read format.

Below is an example of a purchase request approval decision that determines what group of users need to approve a purchase request before it is finalized.

[![images/Decision_Images/task_assignment_example.png](images/Decision_Images/task_assignment_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1654)

[![](images/Decision_Images/task_assignment_example.png)](#_)

The output of this decision will be the group that we'll want to assign the approval task to so we can go ahead and call this decision directly in the **Assignment** tab of the **User Input Task** node:

[![images/Decision_Images/assignment_tab_decision.png](images/Decision_Images/assignment_tab_decision.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1655)

[![](images/Decision_Images/assignment_tab_decision.png)](#_)

### Driving logic and interfaces in a single decision

There are times where you might want a decision to return more than just a single type of value.

For example, you might have an interface where users apply for a credit card. Using the information they provided you can decide whether they get approved for the card or not, but you can also determine what message to display on the next page of the form, all from a single Decision. Having more than one output type in a decision is called a [compound output](Create_a_Decision.html#compound-output).

Your decision could look like this:

[![images/Decision_Images/compound_output_credit_approval.png](images/Decision_Images/compound_output_credit_approval.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1656)

[![](images/Decision_Images/compound_output_credit_approval.png)](#_)

Notice how the decision's output above is a [dictionary](parts-of-an-expression.html#dictionaries) consisting of two fields, `isApproved` and `notification`.

The first field is a boolean value to determine whether the application should go to the approval step or rejection step and the second field's value is a message to display on the interface with any details pertaining to the credit card approval decision for that user.

### Dynamic process execution

In the examples above you can see how decisions, using the powerful features like Appian object output types and compound outputs, can reduce the complexity of your application logic. The example below will use both features to take an even more complex case and simplify it dramatically.

Many applications require the ability to route processes based on a variety of data inputs, the routing might consist of many different possible flows. If we wanted to create a process that routed car insurance claims based on information about the driver such as the region they live in, their age, and whether they are a high risk driver while also flagging the driver as high risk for future claims processing, we might implement it in Appian like this:

[![images/Decision_Images/claims_routing_process.png](images/Decision_Images/claims_routing_process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1657)

[![](images/Decision_Images/claims_routing_process.png)](#_)

With decisions, we can consolidate all of this logic into one central place. The below decision takes information about the driver and then determines which regional claims process should be executed and determines all of the process parameters that should be passed into that process, such as, which insurance agent should be assigned to the claim and whether the driver should be flagged as "high risk" the next time they file a claim.

[![images/Decision_Images/dynamic_process_decision.png](images/Decision_Images/dynamic_process_decision.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1658)

[![](images/Decision_Images/dynamic_process_decision.png)](#_)

Using this decision with the [Start Process smart service](Start_Process_Smart_Service.html), we can pass the decision's result into the smart service to dynamically determine which process to start and what parameter values to pass into the process. The routing process model above can be simplified to just a single script task that calls the decision and a Start Process smart service node.

[![images/Decision_Images/decision_and_start_process.png](images/Decision_Images/decision_and_start_process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1659)

[![](images/Decision_Images/decision_and_start_process.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...