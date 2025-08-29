---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/configuring-review-processes.html
original_path: rm-24.4.2.2/configuring-review-processes.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Requirement Reviews

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

Access the [Requirement Management Settings](accessing-rm-settings.html#access-the-requirement-management-settings-site) site to view, add, and edit the requirement review processes that assign default review trees to a type of requirement.

Preset requirement reviews are used to automate the requirement review process respectively using a template. When the parameters of a review template are met during the review process, it triggers the review tree as the configured custom requirement review processes are recommended when requirements are submitted for review.

This page describes how to use the Requirement Management Settings site to configure requirement reviews.

## View requirement reviews

To view requirement reviews:

1.  Navigate to the [Requirement Management Settings](accessing-rm-settings.html#access-the-requirement-management-settings-site) site.
2.  Expand **Review Workflows** and select the **Requirement Review** option to navigate to the **Requirement Review** page.
3.  Enter requirement review keywords in the search field and click **SEARCH** to filter the requirement review list.
4.  Click Recent Activity icon corresponding to a requirement review to navigate and view its modification history.

![Requirement Review page showing a list of configured requirement reviews.](images/view_requirement_reviews.png)

## Create requirement reviews

To create requirement reviews:

1.  Expand **Review Workflows** and select the **Requirement Review** option to navigate to the **Requirement Review** page.
2.  Click **Plus iconCREATE** to open the **Add Review** wizard.

    ![Requirement Review page displaying a list of review processes with their details.](images/create_requirement_reviews.png)

3.  Enter a **Review Name**.
4.  Select **Requirement Type** using the dropdown. The default requirement types are `Mod` and `New`. See [Modifying Dropdown Lists](modifying-dropdown.html) for instructions on how to modify these values.
5.  Select **Requirement Category** using the dropdown. The default requirement categories are `Facilities`, `IT Hardware`, `IT Services`, `IT Software`, `Telecom`, and `Other`.
6.  Select **Operation** using the dropdown. The Operation dropdown contains relational operators such as < and =; and is dependent on the threshold amount to trigger a review based on the amount.
7.  Enter the **Threshold Amount**. Threshold amount defines the funding amount to qualify a requirement for the review process.

    ![Add Review wizard: Review Name, Requirement Type, Category, Operation, Threshold Amount.](images/create_requirement_reviews_2.png)

8.  Add the review groups to perform the default review for the requirement type.

    1.  Click the Plus iconAdd Review Group link.
    2.  Select **Precedents** using the multi-select dropdown.

        **Note:**  A precedent is a review group that must complete the review before another group begins reviewing.

    3.  Select **Assigned Group** using the multi-select dropdown. Review groups indicate the user groups that receive the requirement review task and use precedents (an upstream assigned group) to trigger and chain a review. Review groups without precedents are kicked off immediately when a requirement is submitted for review.
    4.  Select **Days to Complete** to define the number of days the review must be completed once it is started.
    5.  Click X icon to remove a review group.

    ![Requirement review group configuration table: precedents, assigned groups, days to complete.](images/create_requirement_reviews_3.png)

9.  Click **ADD REVIEW** to create the requirement review.

## Update requirement reviews

To update requirement reviews:

1.  Expand **Review Workflows** and select the **Requirement Review** option to navigate to the **Requirement Review** page.
2.  Click a requirement review to open the **Edit Review** wizard.

    ![Appian Requirement Review page listing configured reviews by name, type, and status.](images/update_requirement_reviews.png)

3.  Update the [requirement review](#create-requirement-reviews) fields.
4.  Check or uncheck the **Active** checkbox to mark a requirement review active or inactive respectively.

    ![Edit Review form displaying fields for updating a requirement review's configuration.](images/update_requirement_reviews_2.png)

5.  Click **SAVE CHANGES** to update the requirement reviews.

**Note:**  All future requirements use the updated requirement review. Requirements already in process or completed are not affected.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...