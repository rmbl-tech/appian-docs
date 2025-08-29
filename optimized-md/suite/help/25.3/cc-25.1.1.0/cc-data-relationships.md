---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-data-relationships.html
original_path: cc-25.1.1.0/cc-data-relationships.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data Relationships

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Claims, which must be purchased separately from the Appian base platform. This content was written for Appian 25.1 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The central record types and database entities in Connected Claims are associated with claims, claim types, and claim categories. Understanding the relationships between these entities can help you understand how the data in the application work together.

The entity relationship diagram (ERD) on this page illustrates the main entities used in the Connected Claims solution and their relationships to each other. To utilize the ERD diagrams to understand these data relationships, we recommend saving each image as a .png file and printing each file for better visibility.

The following legend uses diagram symbols, notations, and colors to indicate the different relationship types.

![cc_legend](images/cc_legend.png)

## Claims ERDs

These ERDs drill-down views of each major relationship group in the Connected Claims solution, including the relationships between the Claims entity and the following child CDTs:

-   [Basic Claim Data, Claim Type Data, and Claim Supplemental Data](#basic-claim-data-erd)
-   [Customer, Policy, Products, Coverages, and Deductibles](#customer-policy-products-coverages-and-deductibles-erd)
-   [Related Claims](#related-claims-erd)
-   [Related Parties and Injuries](#related-parties-and-injuries-erd)
-   [Comments and Documents](#comments-and-documents-erd)
-   [Reserve, Payment, and Settlement](#reserve-payment-and-settlement-erd)
    -   [Cost Estimate](#cost-estimate-erd)
    -   [Claim Liability](#claim-liability-erd)

Additionally, each ERD provides a graphical representation of the tables used for the reference list of all claims in the Connected Claims solution.

### Basic Claim Data ERD

This ERD illustrates the relationships between the Claim parent and the Basic Claim Data, Claim Type Data, and Claim Supplemental Data CDTs.

[![images/ccm_erd_add_on_basic_claim_data_type.png](images/ccm_erd_add_on_basic_claim_data_type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1151)

[![](images/ccm_erd_add_on_basic_claim_data_type.png)](#_)

### Customer, Policy, Products, Coverages, and Deductibles ERD

This ERD illustrates the relationships between the Claim parent and Customer, Policy, Products, Coverages, and Deductibles CDTs.

[![images/ccm_erd_add_on_customer_policy_pcd.png](images/ccm_erd_add_on_customer_policy_pcd.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1152)

[![](images/ccm_erd_add_on_customer_policy_pcd.png)](#_)

### Related Claims ERD

This ERD illustrates the relationships between the Related Claims CDTs.

[![images/ccm_erd_add_on_related_claim.png](images/ccm_erd_add_on_related_claim.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1153)

[![](images/ccm_erd_add_on_related_claim.png)](#_)

### Related Parties and Injuries ERD

This ERD illustrates the relationships between the Claim parent and the child Related Parties and Injuries CDTs.

[![images/ccm_erd_add_on_related_parties_injuries.png](images/ccm_erd_add_on_related_parties_injuries.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1154)

[![](images/ccm_erd_add_on_related_parties_injuries.png)](#_)

### Comments and Documents ERD

This ERD illustrates the relationships between the Claim parent and the child Comments and Documents CDTs.

[![images/ccm_erd_add_on_comments_documents.png](images/ccm_erd_add_on_comments_documents.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1155)

[![](images/ccm_erd_add_on_comments_documents.png)](#_)

### Reserve Payment, Cost Estimate, and Liability ERDs

These ERDs illustrates the relationships between the Claims parent and the child Reserve, Payment, and Settlement, Cost Estimate, and Claim Liability CDTs.

#### Reserve, Payment, and Settlement ERD

This ERD illustrates the relationships between the Claim parent and the child Reserve, Payment, and Settlement CDTs.

[![images/ccm_erd_add_on_reserve_payment_settle.png](images/ccm_erd_add_on_reserve_payment_settle.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1156)

[![](images/ccm_erd_add_on_reserve_payment_settle.png)](#_)

#### Cost Estimate ERD

This ERD illustrates the relationships between the Claim parent and the child Cost Estimate CDTs.

[![images/ccm_erd_add_on_cost_estimate.png](images/ccm_erd_add_on_cost_estimate.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1157)

[![](images/ccm_erd_add_on_cost_estimate.png)](#_)

#### Claim Liability ERD

This ERD illustrates the relationships between the Claim parent and the child Claim Liability CDTs.

[![images/ccm_erd_add_on_claim_liability.png](images/ccm_erd_add_on_claim_liability.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1158)

[![](images/ccm_erd_add_on_claim_liability.png)](#_)

## Studio ERD

This ERD illustrates the relationships between the Claim Type parent and child configuration CDTs in Studio.

[![images/ccm_erd_add_on_studio_configuration.png](images/ccm_erd_add_on_studio_configuration.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1159)

[![](images/ccm_erd_add_on_studio_configuration.png)](#_)

## Add-on module ERDs

The ERDs in this section illustrate the relationships between the Claim parent and child AI Claim Comment Summary, AI Claim Document Summary, and Surveys and Questions add-on modules once integrated with Connected Claims.

![ccm_erd_add_on_comment_summary_ai](images/ccm_erd_add_on_comment_summary_ai.png)

![ccm_erd_add_on_document_summary_ai](images/ccm_erd_add_on_document_summary_ai.png)

![ccm_erd_add_on_survey_task_framework](images/ccm_erd_add_on_survey_task_framework.png)

### LOB Supplement ERDs

The ERDs in this section illustrate the relationships between the Claim parent and child LOB Supplement add-on modules once integrated with Connected Claims.

[![images/ccm_erd_add_on_automobile.png](images/ccm_erd_add_on_automobile.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1160)

[![](images/ccm_erd_add_on_automobile.png)](#_)

[![images/ccm_erd_add_on_category_life.png](images/ccm_erd_add_on_category_life.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1161)

[![](images/ccm_erd_add_on_category_life.png)](#_)

![ccm_erd_add_on_category_home_owners](images/ccm_erd_add_on_category_home_owners.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...