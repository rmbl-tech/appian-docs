---
source_url: https://docs.appian.com/suite/help/25.3/cms-email-templates.html
original_path: cms-email-templates.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How to Create Email Templates

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Overview

Sending an email is a common step in many case management processes. It could be to notify the submitter of an update to the case, remind the case assignee of an upcoming task, or send the submitter the result of their application. These emails need to be sent out at a specific step of the workflow, and the body of the email should be standardized and consistent across your cases.

To send emails directly from your case workflow, you can add email templates to tasks and workflow automations in a case type workflow.

There are two ways to send emails directly from a case type workflow: a send email task or a send email workflow automation.

The send email task is an attended version of this functionality, meaning it needs user interaction. When it's time for the send email task in the workflow, the task prompts the task assignee to send an email using the standardized template configured for that task. The task assignee can also fine-tune the email content to make ad-hoc adjustments, provide relevant details, and fit the specific needs of each case.

The send email workflow automation is the unattended version of this functionality, meaning it does not need user interaction. When it's time for the send email automation in the workflow, the workflow automation automatically sends the templated email to the specified recipient(s), without adjustments or additions from a user.

This page will provide a brief overview of what email templates are, how they can be used in workflows, and how to create and configure them.

## What are email templates

Email templates are reusable no-code templates that allow you to easily create standardized emails to send out in case workflows through tasks or workflow automations.

To ensure emails have the right information for every case and recipient every time, emails are sent out through the send email task type using email templates and require human input or approval. This allows you to add personalized information like the recipient or case submitters name, or even a case ID.

For more standardized or emails with less variable content, you can use the send email workflow automation to automatically send emails based on the provided template without human intervention or review.

Email templates have their own page and the following image highlights the actions you can do on the **EMAIL TEMPLATES** page:

[![screenshot of the Email Templates page in the Control Panel](images/control-panel/cp-email-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img971)

[![](images/control-panel/cp-email-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Create new email templates. |
| 2 | Search email templates. |
| 3 | View and preview all email templates. |
| 4 | View number of places the template is referenced. |
| 5 | Update email templates. |
| 6 | Delete email templates. |

**Note:**  All emails sent using Case Management studio workflows are sent from a no-reply email.

## Creating an email template

You can create email templates from the email template page in the Control Panel or directly from a task, either on the [**Tasks** page](creating-tasks-and-task-blocks.html#tasks-page) or in a [task within a case workflow](creating-case-categories-and-case-types.html#configuring-tasks).

### Creating an email template from the email template page

To create an email template directly from the **Email Templates** page:

1.  Click **\+ CREATE EMAIL TEMPLATE**.
2.  Configure the following template properties.

    | Property | Description |
    | --- | --- |
    | Name | The name of the email template. |
    | Subject | The subject line of the email. |
    | Body | The content of the email. |

3.  You can optionally add **supporting documents**.
4.  Click **CREATE**.

### Creating an email template from within a task or workflow automation

To create an email from within a task:

1.  Create a new task and select **Send Email** as the **Task Type**.
2.  Under **Email Template**, click **\+ CREATE TEMPLATE**.
3.  Configure the following template properties.

    | Property | Description |
    | --- | --- |
    | Name | The name of the email template. |
    | Subject | The subject line of the email. |
    | Body | The content of the email. |

4.  You can optionally add **supporting documents**.
5.  Click **CREATE**.
6.  Configure the rest of the task properties.
7.  Click **CREATE**.

To create an email from within a workflow automation:

1.  From within a case type workflow, click **ADD AUTOMATION**.
2.  Click **Send Email** and click **ADD**.
3.  Under **Email Template**, click **\+ CREATE TEMPLATE**.
4.  Follow steps 3-5 from the task section.
5.  Under **Recipients**, select the relevant **Case Roles**, **Groups**, and **Users**.
6.  (Optional) To set specific, individual email addresses for your recipients, click **ADD EMAIL ADDRESSES**.
7.  Under **Workflow Settings**, set dependents for your send email workflow automation.
8.  Click **Update** when you're done making changes to your workflow.

## Email template examples

You can use emails in different ways depending on your workflow, ranging from straightforward notifications, to friendly welcomes, to information dense communications. Below are a few examples of how the templates for these emails might look.

### Welcome to engineering email

This is a helpful and informative welcome email that not only serves as a friendly welcome to an organization, but also provides information on training scheduling.

[![Screenshot of an email template for a Welcome to Engineering email that has a place for the task assignee to put in the case submitter's name and also provide an attachment schedule document](images/cms-email-template-ex-1.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img972)

[![](images/cms-email-template-ex-1.png)](#_)

Notice that there is a note in the `<>` to signal to the task assignee that they need to put case specific information here. For this email, it's the case submitter's name. While it may not be necessary to include case submitter's name in a welcome email, personalizations can help recipients feel more positively about the interaction.

### Generate permit notification

This is a simple notification that lets the user that submitted the application know that they can now generate a permit for their application, as well as provides additional instructions for how to do it.

[![Screenshot of an email template for a generate permit email that has a place for the task assignee to put in the case ID and also provides an attachment with permit instructions.](images/cms-email-template-ex-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img973)

[![](images/cms-email-template-ex-2.png)](#_)

Notice that there is a note in the `<>` to signal to the task assignee that they need to put case specific information here. For this email, it's the case ID, which allows the user who submitted the application to quickly identify which application they need to take action on.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...