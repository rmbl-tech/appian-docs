---
source_url: https://docs.appian.com/suite/help/25.3/data-modeling-with-appian-records.html
original_path: data-modeling-with-appian-records.html
version: "25.3"
title: "About Data Modeling in Appian"
page_id: "data-modeling-with-appian-records"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# About Data Modeling in Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Plan your Data Model

Before you create record types in Appian, spend time planning to better understand your data model and how users will interact with that data. Watch this video from the [Appian Community YouTube channel](https://www.youtube.com/@AppianCommunity) to see what questions developers at Acme Auto answer during planning to give them a jump start during development.

This page explains how to model data in your record types so you can build applications quickly.

## Overview

[Appian's data fabric](data-fabric.html) gives you the power to access all of your enterprise data in a single location, regardless of where your data lives. With a single point of data management, you can easily build interfaces, reports, and other interactive elements that put important business data at your users' fingertips. But how do you know which data you need to build a useful app that will speed up business processes?

By collecting information from stakeholders to build a data model, you'll gain a deeper understanding of the way the application will be used and the problems it will solve. We recommend investing time in comprehensive data design before you start building other aspects of your application (such as the interfaces users will interact with).

## What is a data model?

A data model is a representation of all of the information available for your application. The model includes:

-   The [sources of your data](configure-record-data-source.html), such as databases or web services.
-   The [record types](Create_a_Record_Type.html) you want to create using those sources.
-   The [relationships](record-type-relationships.html) between your data. This is how you will connect currently siloed data to expand your users' ability to understand and work with that data.
-   The fields available in the record type that will be used in queries throughout the application. These can be [source fields](configure-record-data-source.html#add-or-remove-record-fields) or [custom record fields](custom-record-fields.html).

A data model should be examined from two perspectives: a conceptual angle and a logical angle. Each provides a different level of detail important to the design and helps you confirm that your plan allows data to move seamlessly through different parts of the application.

### Conceptual data model

The conceptual angle is a high-level view of your data model. In it, you draw the basic connections between the data available in your app. Using a tool of your choice, you can quickly assemble a sketch of your data model. For example, a retail application might have a conceptual model like this:

[![Conceptual view of data model](images/data_modeling/concept-view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img442)

[![](images/data_modeling/concept-view.png)](#_)

The sketch above highlights the main data categories for the app, Orders and Customers, and shows some of the supporting data that provides more detail for each. Customers have names and addresses, as well as contact info like phone numbers and email addresses. Noting these attributes early on helps you take a deeper look at the data needed for the app.

The concept can serve as reference for business stakeholders. It will allow them to confirm two things in particular:

-   The model is organizing and connecting data correctly.
-   Core business data, like Customers and Orders, is centered in the model to accurately capture its importance for one or more business processes.

### Logical data model

Once you have constructed a concept, you can enhance the level of detail with a logical angle of the data model. This more comprehensive explanation shows the specific fields that will be available on each record type and the common fields for establishing relationships between them. It can also note any filtering or security that needs to be applied to keep the data secure.

The structure of the model is an important factor in the design. In the conceptual phase, we noted that customers have addresses. While you could store address data with basic details like their phone number, your customers may want to have orders shipped to their home or office, or they may want to send a gift directly to another person. You can build in this flexibility by separating the address data from the customer and creating a relationship between them (one customer has one or more addresses).

Each core data category plays a major role in the application, and they can impact what interfaces you build and how you give users the ability to work with the data through the data lifecycle—creating, viewing, updating, and deleting data as required for their role. You may want to create a few different sections of the logical model, each centered on a different type of core data, to see the data from the perspective of different users.

For example, Customers may be the most important data for a salesperson, but a support rep will be more concerned with the Orders placed by those customers. You can add the data types for each field, including the [common fields](record-type-relationships.html#common-field-values) relating Customers to their Orders and Addresses.

[![Logical view of data model](images/data_modeling/logical-view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img443)

[![](images/data_modeling/logical-view.png)](#_)

You can also indicate the [user personas](Group_Management.html) that should be able to [access Customer data](record-level-security.html) in the application (in this case, salespeople, customer service reps, and warehouse managers).

### Record type data model

Once you've built your logical model, create your record types based on your data model. This lets you realize both the conceptual and logical levels and then enhance it with other sync-enabled features.

If you need to [build your data sources from scratch](create-record-data-source.html), Appian will guide you in creating the fields and relationships for each record type.

On the **Data Model** page of the record type, you can see and interact with the model.

[![images/data_modeling/data-model-page.png](images/data_modeling/data-model-page.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img444)

[![](images/data_modeling/data-model-page.png)](#_)

Here, you can see the fields included in your record type, as well as key information about each field, like its [data type](Appian_Data_Types.html), its uniqueness, and whether it's used as a [common field](record-type-relationships.html#common-field-values) in a relationship.

The data model also includes a relationship diagram, which shows all of the logical connections you've established between record types. Appian will also provide suggested relationships to help you find even more ways to intelligently link your data.

## Sample data model

Let's look at a sample data model that leverages a large dataset, multiple record types, and numerous sync-enabled features.

We've been tasked with combining information from multiple sources to construct a retail store management app. This app will be used by employees in a few different roles (sales, customer service, and managers), and each role has its own functional and reporting requirements for the app. Let's examine these roles and look at what the data model needs to include for each.

The sales team needs to track each sale made by individual team members (represented as Employees). They also want to see which products are most popular and who the most active customers are in a given time period. A salesperson needs the following information:

[![images/data_modeling/sales-team-data.png](images/data_modeling/sales-team-data.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img445)

[![](images/data_modeling/sales-team-data.png)](#_)

The customer service team must track each support request through their established workflow and they want to discover what products are returned or exchanged and at what rate. The data needs of a user in this role are similar to the sales role, but instead of employee data, they need to access the support cases for orders.

[![images/data_modeling/cs-team-data.png](images/data_modeling/cs-team-data.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img446)

[![](images/data_modeling/cs-team-data.png)](#_)

The store's management team wants to know which salesperson has the most sales in a given time period and how many requests each customer service representative resolves each week. The management team is not responsible for product inventory or customer relationships, so their data needs are simpler than the other roles.

[![images/data_modeling/manager-data.png](images/data_modeling/manager-data.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img447)

[![](images/data_modeling/manager-data.png)](#_)

To cover the major business concepts, the retail application could be built using five record types with data sync enabled. This allows us to create relationships between our record types so we can quickly build interfaces and reports for each persona.

-   **Customer record type**: Contains customer details like name, address, and phone number.
-   **Support Case record type**: Contains case details like when the case was opened and closed and how it was resolved.
-   **Order Line record type**: Contains product quantity, unit price, discounts, and the total for the line. This acts as the join table to connect the Order and Product and establish a many-to-many relationship.
-   **Employee record type**: Contains employee details like name, tenure, and role. Depending on their role, an employee could have related data for orders or customer support requests.
-   **Order record type**: Contains references to a Customer, an Employee, and one or more Products, plus information like the order date and time.

Some data is also stored in separate reference record types. This allows data like the list of employee roles or support case resolutions to change as needed.

-   **Role record type**: Contains the names of the roles an employee can fill (like `salesperson` and `support agent`).
-   **Case Resolution type**: Contains the types of case resolutions (such as `refunded` and `exchanged`).
-   **Product record type**: Contains product name, cost, and attributes like size and color.

[![Complete sample data model](images/data_modeling/complete-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img448)

[![](images/data_modeling/complete-model.png)](#_)

## How to get started in Appian

To begin implementing your own data model, start by reviewing [best practices](build-best-data-fabric.html) and [creating a record type](Create_a_Record_Type.html).

For a guided experience creating and configuring a record type, see the [Record Type Tutorial (Database)](Records_Tutorial.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...