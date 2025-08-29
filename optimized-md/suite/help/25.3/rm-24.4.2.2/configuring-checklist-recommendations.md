---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/configuring-checklist-recommendations.html
original_path: rm-24.4.2.2/configuring-checklist-recommendations.html
version: "25.3"
title: "Configuring Checklist Recommendations"
page_id: "rm-24.4.2.2/configuring-checklist-recommendations"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Checklist Recommendations

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

Access the [Requirement Management Settings](accessing-rm-settings.html#access-the-requirement-management-settings-site) site and set up [tasks](configuring-tasks.html) to configure which checklists you want the solution to automatically recommend for new requirements.

Requestors can still manually select a checklist from the list of all checklists or select one of the recommended checklists that RM automatically suggests based on the criteria you configured. If you want to restrict users from manually selecting checklists for new requirements, you can have a system admin disable this capability using the `AS_RM_TMG_BOL_REQUIRED_CHECKLIST_RECOMMENDATION` constant. They can also disable the entire feature using the `AS_RM_TMG_BOL_CHECKLIST_RECOMMENDATION` constant.

## View checklist recommendations

To view recommendations:

1.  Navigate to the [Requirement Management Settings](accessing-rm-settings.html#access-the-requirement-management-settings-site) site.
2.  Expand **Task Management** and select the **Recommendations** option to navigate to the **Recommendations** page.
3.  Enter recommendation keywords in the search field and click **SEARCH** to filter the recommendations list.
4.  Click Vertical Ellipsis icon corresponding to a recommendation to navigate and view its modification history.

![Recommendations page displaying a list of configured checklist recommendations.](images/view_checklist_recommendations.png)

## Create checklist recommendations

If an individual requirement matches the criteria for multiple checklist recommendations, it can have more than one checklist recommendation.

To create a recommendation:

1.  Expand **Task Management** and select the **Recommendations** option to navigate to the **Recommendations** page.
2.  Click **+CREATE** to open the **Create Checklist Recommendation** wizard.
3.  Enter a checklist recommendation **Name** in the **Details** section.
4.  Set criteria for the recommendation in the **Criteria** section.
    1.  Select **Requirement Type**, **Category**, and **Priority** using the dropdown.
    2.  Enter the **PSC** (Product Service Code) and **NAICS** (North American Industry Classification System code) codes.
    3.  Select either **Above or equal to** or **Below or equal to** radio button in the **Estimated Total Contract Value** subsection.
    4.  Enter the amount to apply to the condition set in the previous substep.

        **Note:**  Any criterion that is not configured is ignored during the recommendation process.

5.  Select the **Recommended Checklist** using the dropdown in the **Result** section. The recommended checklist selected here is configured per the criteria set and is displayed as the recommended checklist during the requirements creation if the set criteria are met.
6.  Click **CREATE RECOMMENDATION** to create the recommended checklist.

![Create Checklist Recommendation wizard with fields for name, criteria, and result.](images/create_checklist_recommendations.png)

## Update checklist recommendations

To update a recommendation:

1.  Expand **Task Management** and select the **Recommendations** option to navigate to the **Recommendations** page.
2.  Click Vertical Ellipsis icon corresponding to a recommendation and select **Edit** to open the **Edit Checklist Recommendation** wizard.

    ![Checklist recommendations page: Vertical ellipsis menu with Edit/Delete options.](images/update_checklist_recommendations.png)

3.  Edit the [checklist recommendation fields](#create-checklist-recommendations) to update the recommendation criteria.
4.  Click **SAVE CHANGES** to update the recommendation.

**Note:**  Requirements created after recommendation updates are saved, are impacted by the updated recommendation.

## Delete checklist recommendations

To delete a recommendation:

1.  Expand **Task Management** and select the **Recommendations** option to navigate to the **Recommendations** page.
2.  Click Vertical Ellipsis icon corresponding to a recommendation and select **Delete** to open the **Delete Checklist Recommendation** wizard.
3.  Click **DELETE** to delete the recommendation.

![Delete Recommendation confirmation dialog: 'Are you sure you want to delete this recommendation?'](images/delete_checklist_recommendations.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...