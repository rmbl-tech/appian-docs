---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/migrating-data.html
original_path: cu-25.2.1.7/migrating-data.html
version: "25.3"
title: "Migrate Customer and Broker Data"
page_id: "cu-25.2.1.7/migrating-data"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Migrate Customer and Broker Data

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

After installing Connected Underwriting P&C, you may need to migrate data from your organization's systems. This process is generally very unique and has its own nuances that depend on many factors.

This page provides general guidelines to help you migrate data from customers, brokers, broker offices, and documents.

## Migrating customer data

To migrate data from customers, import data into the `ISU_T_CUSTOMER` table.

## Migrating Broker and Broker Office data

To migrate data from Broker Offices, import data into the `ISU_T_BROKER_OFFICE` table. This table is a parent table to the `ISU_T_BROKER` table, as individual Brokers can be mapped to the same Broker Office. Import all related Broker data for each Broker Office into the `ISU_T_BROKER` table. Brokers that are not tied to a specific Broker Office can still be inserted into this table and simply not linked to a particular row in the `ISU_T_BROKER_OFFICE` table.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...