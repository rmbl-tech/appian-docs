---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/rm-document-review.html
original_path: rm-24.4.2.2/rm-document-review.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Document Review

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Access the [Requirement Management Settings](accessing-rm-settings.html#access-the-requirement-management-settings-site) site to view, add, and edit the document review process that assigns default review trees to a document type or template.

Preset document reviews are used to automate the document review process respectively using a template. When the parameters of a review template are met during the review process, it triggers the review tree as the configured custom document review processes are recommended when requirements are submitted for review.

This page describes how to use the Requirement Management Settings site to configure document reviews.

## View document reviews

To view document reviews:

1.  Navigate to the [Requirement Management Settings](accessing-rm-settings.html#access-the-requirement-management-settings-site) site.
2.  Expand **Review Workflows** and select the **Document Review** option to navigate to the **Document Review** page.
3.  Enter document review keywords in the search field and click **SEARCH** to filter the document review list.
4.  Click Recent Activity icon corresponding to a document review to navigate and view its modification history.

![Document Review page listing configured reviews with search and Create button.](images/view_document_reviews.png)

## Create document reviews

To create document reviews:

1.  Expand **Review Workflows** and select the **Document Review** option to navigate to the **Document Review** page.
2.  Click **CREATE** to open the **Add Review** wizard.

    ![Document Review page displaying a list of configured document reviews.](images/create_document_reviews.png)

3.  Enter a **Review Name**.
4.  Select **Document Template** using the dropdown. The default template type is `Capabilities Template`. See [Modifying document templates](document-templates.html) for instructions on how to modify the values.
5.  Select **Document Type** using the dropdown. The document types are `Requirements Document`, `Memo`, `Justification Document`, `Determination`, `Waiver`, `Research`, `Checklist`, `Evaluation`, `Briefing`, `Notification`, `Appointment`, and `Other`.
6.  Select **Operation** using the dropdown. Operation contains relational operators such as < and =; and is dependent on the threshold amount to trigger a review based on the amount.
7.  Enter the **Threshold Amount**. Threshold amount defines the funding amount to qualify a document for the review process.

    ![Add Review wizard: document review name, template, type, operation, and threshold fields.](images/create_document_reviews_2.png)

8.  Add the review groups to perform the default review for the requirement type.

    1.  Click the Add Review Group link.
    2.  Select **Precedents** using the multi-select dropdown.

        **Note:**  A precedent is a review group that must complete the review before another group begins reviewing.

    3.  Select **Assigned Group** using the multi-select dropdown. Review groups indicate the user groups that receive the requirement review task and use precedents (an upstream assigned group) to trigger and chain a review. Review groups without precedents are kicked off immediately when a requirement is submitted for review.
    4.  Select **Days to Complete** to define the number of days the review must be completed once it is started.
    5.  Click X icon to remove a review group.

    ![Review group configuration, showing precedents, assigned groups, and days to complete.](images/create_document_reviews_3.png)

9.  Click **ADD REVIEW** to create the document review.

## Update document reviews

To update document reviews:

1.  Expand **Review Workflows** and select the **Document Review** option to navigate to the **Document Review** page.
2.  Click a document review record to open the **Edit Review** wizard.

    ![Document Review page displaying existing document review configurations.](images/update_document_reviews.png)

3.  Update the [document review fields](#create-document-reviews).
4.  Check or uncheck the **Active** checkbox to mark a Document Review as active or inactive respectively.

    ![Edit Review wizard for updating document review settings.](images/update_document_reviews_2.png)

5.  Click **SAVE CHANGES** to update the document reviews.

**Note:**  All future documents use the updated document review. Documents already in process or completed are not affected.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...