---
source_url: https://docs.appian.com/suite/help/25.3/collaborate-on-insight.html
original_path: collaborate-on-insight.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Collaborate on an Insight

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [business users](processhq.html#-business-users). It describes how to collaborate on an insight associated with your process.

## Overview

Once you've saved an insight, you and your colleagues can collaborate directly in process insights, so you can validate, present, and even expand the potential improvements identified for your process. Your colleagues can comment on an insight or drill down to add to that insight or create a new one, depending on their [permissions](configure-security.html#grant-access-to-processes) for the process.

## View a saved insight

To view a saved insight:

1.  [Access the related KPI](process-custom-kpis.html#access-a-kpi).

2.  Go to the **Insights** tab.

    This tab contains a list of all insights related to the specific KPI. By default, this list is sorted by date modified from newest to oldest.

    For example:

    [![Insights tab in a KPI page, listing four insights](images/process_insights/kpi-insights-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img645)

    [![](images/process_insights/kpi-insights-tab.png)](#_)

    **Tip:**  You can also go to the **All Insights** tab of a [process view page](process-view-page.html) to see all insights associated with that view. There, you can search for a saved insight by name or description.

3.  In the list, click the insight you want to view. The [insight page](insight-page.html) displays.

    For example:

    [![The page of an insight named EMEA/Spain](images/process_insights/insight-page.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img646)

    [![](images/process_insights/insight-page.png)](#_)

## Continue a saved insight

Continuing to drill down on an insight lets you evaluate more of Process HQ's analysis of the cases related to the insight. You'll have the opportunity to review additional characteristics that might be contributing to process inefficiency. Then, you can add those characteristics to the existing insight or create a new insight to explore that new focus.

**Tip:**  Wondering how to save a new insight from an existing one? You're in the right place.

You must have [Analyst permissions](configure-security.html) for a process to continue drilling down on a saved insight associated with the process.

To continue drilling down on a saved insight:

1.  [View the saved insight](#view-a-saved-insight), then click **CONTINUE DRILLING DOWN** in the header pane.

    **Tip:**  You can also continue drilling down from the **Insights** tab of the KPI page by clicking on the clicking three-dot menu for the insight, then selecting **Continue Drilling Down**. The same option is also available in the three-dot menu for an insight in the **All Insights** tab of any view.

    The [drilldown page](drilldown-page.html) displays. The insight pane already includes the characteristics from the original insight, and the characteristics pane displays the list of characteristics that process insights has suggested for review next.

    For example:

    [![A Drilldown page with the Insights pane populated with the characteristics from the original insight](images/process_insights/drilldown-on-insight-1.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img647)

    [![](images/process_insights/drilldown-on-insight-1.png)](#_)

    **Tip:**  The name of the original insight now appears in the breadcrumbs at the top of the page. To return to that insight without making changes, click the insight breadcrumb.

2.  [Review the characteristics](investigate.html#step-2-review-characteristics).
3.  [Add the characteristics to the insight](investigate.html#step-3-add-a-characteristic-to-your-insight) by clicking **KEEP DRILLING DOWN**.

    For example:

    [![A Drilldown page showing attribute details in the characteristic pane and the KEEP DRILLING DOWN button highlighted by a green outline in the header](images/process_insights/drilldown-on-insight-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img648)

    [![](images/process_insights/drilldown-on-insight-2.png)](#_)

    The new characteristic you added now displays in the **Insight** pane, and a new list of suggested characteristics displays in the characteristics pane.

    For example:

    [![A Drilldown page an updated Insight pane highlighted by a green outline](images/process_insights/drilldown-on-insight-3.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img649)

    [![](images/process_insights/drilldown-on-insight-3.png)](#_)

4.  To save your changes, click **SAVE INSIGHT**, then indicate whether you want to update the existing insight or create a new one:

    |
    Next Step

     |

    Action

     |
    | --- | --- |
    |

    Update the existing insight.

     |

    Select **Update Existing Insight**. The system saves the changes you made, and the characteristics pane displays a new list of suggested characteristics to evaluate.

     |
    |

    Save a new insight.

     |

    1.  Select **Save New Insight**. The **Save New Insight** dialog displays.
    2.  Enter a name for the new insight.
    3.  Continue as appropriate:

        -   **Stop drilling down**: To stop drilling down, click **SAVE AND EXIT**. The [insight page](insight-page.html) displays.
        -   **Keep drilling down**: To review and evaluate more characteristics of the process, click **SAVE AND CONTINUE**. The drilldown page continues displaying, with the page title in the header showing the insight name you configured. The characteristics pane shows you the next characteristics Process HQ suggests you evaluate.

     |

## Rename a saved insight

You must have [Analyst permissions](configure-security.html) for a process to rename an insight associated with the process.

To rename a saved insight:

1.  [View the saved insight](#view-a-saved-insight) you want to rename.

2.  Click the settings icon in the header pane.

    For example:

    [![A saved insight in a view page with the Rename menu option highlighted](images/process_insights/rename-insight.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img650)

    [![](images/process_insights/rename-insight.png)](#_)

3.  Select **Rename**.

    **Tip:**  This option is also available if you click the three-dot menu in the insight in a list of insights. This list is present in both the **Insights** tab of the [KPI page](process-kpi-page.html) and the **All Insights** tab of the [view page](process-view-page.html).

    A **Rename Insight** dialog displays.

    For example:

    [![Rename Insight dialog with a text box for editing the insight name](images/process_insights/rename-insight-dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img651)

    [![](images/process_insights/rename-insight-dialog.png)](#_)

4.  For **New Name**, enter a new name.
5.  Click **RENAME**.

## Add a description to a saved insight

Once you've saved an insight, you can add high-level description to the insight to help quickly communicate with your collaborators. In [select regions](security-compliance.html#ai-copilot-regional-availability), you can do this even faster using generated summaries with [AI Copilot](appian-ai-copilot.html).

You must have [Analyst permissions](configure-security.html) for the process to add a description to a saved insight associated with that process.

To add or edit an insight description:

1.  [View a saved insight](#view-a-saved-insight).
2.  In the **Description** field, click **GENERATE**. AI Copilot creates a first draft of the summary for you based on the insight details.

    **Tip:**  If AI Copilot isn't available in your environment, the **GENERATE** button won't appear. You'll manually type a summary in this field.

3.  Review the AI-generated content for accuracy and appropriateness.
4.  Edit the generated description or regenerate the content until it meets your needs.
5.  Click **SAVE** to save the description.

## Add a comment to a saved insight

As you and your colleagues are working together to validate and socialize insights into your processes, you'll often want to ask questions, add context, or document updates on the status of the characteristics. You and your collaborators can communicate about an insight using the commenting capability available in each insight.

To view existing comments, simply [view the saved insight](#view-a-saved-insight).

To post a comment to an insight:

1.  [View a saved insight](#view-a-saved-insight).
2.  Place your cursor in the empty comment box that displays at the top of the **COMMENTS** pane.

    Your initials display automatically next to the comment box. For example, this comment box displays initials for a user named Phillip Sanchez:

    ![An empty comment box at the top of the COMMENTS pane](images/process_insights/insight-empty-comment.png)

3.  In the comment box, enter the text of your comment. You can enter up to 4,000 characters.

    You can take advantage of the rich text formatting as you enter your text, and add links to external resources.

    For example:

    ![A comment that includes a link to an external resource](images/process_insights/insight-full-comment.png)

4.  Click **POST**.

## Delete a comment from a saved insight

You can only delete your own comments.

When you delete a comment, the system removes the content of the comment, but retains the comment structure as a placeholder to avoid confusion and ensure thread continuity.

To delete a comment from a saved insight:

1.  [View a saved insight](#view-a-saved-insight).
2.  In the **COMMENTS** pane, click the three-dot menu for the comment you want to delete.

    For example:

    ![A comment with the three-dot menu highlighted](images/process_insights/insight-comment-menu-highlighted.png)

    A confirmation dialog displays.

3.  Click **DELETE** to confirm. The system removes the content of the comment.

    ![A comment that includes the original user and creation date, but reads only "This comment was deleted"](images/process_insights/insight-deleted-comment.png)

## Show or hide comments in a saved insight

Comments show by default in a saved insight. Hiding comments for an insight applies to your session only and lasts for the current session only.

To show or hide comments in a saved insight:

1.  [View the saved insight](#view-a-saved-insight).
2.  In the insight header, click **SHOW COMMENTS** or **HIDE COMMENTS** as appropriate.

    For example:

    [![HIDE COMMENTS button highlighted in an insight page](images/process_insights/hide-comments.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img652)

    [![](images/process_insights/hide-comments.png)](#_)

## Delete a saved insight

You must have [Analyst permissions](configure-security.html) for a process to delete an insight associated with that process.

To delete an insight:

1.  [View the saved insight](#view-a-saved-insight) you want to delete.

2.  Click the settings icon in the header pane.

    For example:

    [![A saved insight in a view page with the Rename menu option highlighted](images/process_insights/rename-insight.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img653)

    [![](images/process_insights/rename-insight.png)](#_)

3.  Select **Delete**.

    **Tip:**  This option is also available if you click the three-dot menu in the insight in a list of insights. This list are present in the **Insights** tab of the [KPI page](process-kpi-page.html) and the **All Insights** tab of the [view page](process-view-page.html).

    A **Delete Insight** dialog displays.

    For example:

    [![Rename Insight dialog with a text box for editing the insight name](images/process_insights/delete-insight-confirmation-dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img654)

    [![](images/process_insights/delete-insight-confirmation-dialog.png)](#_)

4.  Click **DELETE** to confirm the deletion.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...