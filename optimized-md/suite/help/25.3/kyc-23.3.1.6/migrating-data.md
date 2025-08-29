---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/migrating-data.html
original_path: kyc-23.3.1.6/migrating-data.html
version: "25.3"
title: "Migrating Data"
page_id: "kyc-23.3.1.6/migrating-data"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Migrating Data

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

After installing Connected Onboarding, you may need to migrate data from your organization's systems. This process is generally very unique and has its own nuances that depend on many factors.

This page provides general guidelines to help you migrate data from customers, documents, and products.

## Migrating customer data

To migrate data from customers:

1.  Import the data into the `AS_FS_CUSTOMER` table.
2.  Create a document folder for each customer. In the `FOLDER_ID` column of the `AS_FS_CUSTOMER` table, store the ID of this document folder.

The remaining fields should be self-explanatory.

## Migrating documents

To migrate documents:

1.  Create an Appian document for each document you are migrating.
2.  Store this document in the document folder for the customer that the document is associated with.
3.  Import the document metadata into the `AS_FS_CUSTOMER_DOCUMENT` table.
4.  In the `FOLDER_ID` column of the`AS_FS_CUSTOMER_DOCUMENT` table, store the ID of the customer's document folder.

The remaining fields should be self-explanatory.

## Migrating account data

Only migrate data into the accounts table if accounts are parents to products.

The `AS_IO_Account_P` CDT is a parent to the following children CDTs:

-   AS\_IO\_Product\_C
-   AS\_IO\_Term
-   AS\_IO\_Country

When you migrate account data, you will also need to update the tables related to these CDTs.

To migrate account data:

1.  Import the data into the `AS_IO_ACCOUNT` table.
2.  Import the related data into the following tables:
    -   `AS_IO_ACCOUNT`
    -   `AS_IO_TERM`
    -   `AS_IO_COUNTRY`

## Migrating product data

Only migrate data into the product table if products are parents to accounts.

The `AS_IO_Product_P` CDT is a parent to the following children CDTs:

-   AS\_IO\_Account\_C
-   AS\_IO\_Term
-   AS\_IO\_Country
-   AS\_IO\_Fee
-   AS\_IO\_Currency
-   AS\_IO\_ApprovedContact
-   AS\_IO\_PayThreshold

When you migrate product data, you will also need to update the tables related to these CDTs.

To migrate product data:

1.  Import the data into the `AS_IO_PRODUCT` table.
2.  Import the related data into the following tables:
    -   `AS_IO_ACCOUNT`
    -   `AS_IO_TERM`
    -   `AS_IO_COUNTRY`
    -   `AS_IO_FEE`
    -   `AS_IO_CURRENCY`
    -   `AS_IO_APPROVED_CONTACT`
    -   `AS_IO_PAY_THRESHOLD`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...