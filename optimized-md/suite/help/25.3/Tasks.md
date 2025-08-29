---
source_url: https://docs.appian.com/suite/help/25.3/Tasks.html
original_path: Tasks.html
version: "25.3"
title: "Tasks"
page_id: "Tasks"
section: "Working with tasks"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Tasks

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Working with tasks

Tasks are the primary way to complete work in Appian. They can be assigned to you as part of a process or from another user in the system.

You can view your tasks by clicking the **Tasks** tab on the header bar of Tempo or by viewing a task report in a site.

The number of open tasks assigned to you displays next to the Tasks tab in Tempo.

From Tempo, you can accept and close any social task and any process task enabled for Tempo.

## Viewing

To access tasks that can be closed in Tempo, select the **Tasks** tab on the header bar. By default, a list of all open tasks assigned to you display with the most recently created listed first.

### Task views

The following views are available in the left-side navigation for you to use:

-   **Assigned to Me**: Displays all process and social tasks assigned to you or a group in which you are a member.
-   **Sent by Me**: Displays all social tasks sent by you to another user.
-   **Starred**: Displays all tasks you have previously starred.

Process tasks and social tasks are distinguishable by their icon:

-   **Social Tasks**: Display the sender's image when on the Assigned to Me view and the assigned user's image when on the Sent by Me view.

    ![profile image](images/Profile_image.png)

-   **Process Tasks**: Display a checkbox icon.

    ![process task icon](images/Process_task_icon.png)

### View deadlines

Process tasks with a deadline include a clock icon.

-   ![future deadline icon](images/DeadlineFuture.png): Indicates the deadline has not occurred yet. The text next to the icon indicates how long until the deadline occurs.
-   ![past deadline icon](images/DeadlinePast.png): Indicates the deadline has passed and the task is overdue.

To view the date and time of a deadline, hover over the clock icon.

![deadline tooltip](images/DeadlineTooltip.png)

### Filter tasks

You can filter the tasks displayed in your view by selecting from the following options on the left-side navigation:

-   **Status**
    -   **Open**: Only displays tasks with an open status.
    -   **Closed**: Only displays tasks with a closed status.
-   **Deadline**
    -   **Overdue**: Only displays process tasks that passed their deadline.
    -   **Today**: Only displays process tasks due today.
    -   **Within 7 Days**: Only displays process tasks due in the next seven days.

### Change display order

By default, the tasks created more recently display first.

To reverse this order and view the oldest first, select **Oldest** from the dropdown in the top-right. Selecting **Newest** reverts them back to the most recently created first.

### Task reports

Below the list of task views, you might see a list of task reports. Task reports are added by your system administrator and do not display for everyone.

Select a task report from the list to view it. The report displays a table with task links and information related to the tasks. Click a link to begin or view that task.

## Accepting

Accepting a process task means you intend to complete it. It applies when a task has been assigned to a group of users and only one or a few of them from the group need to complete it. Once enough users from the group accept it, the task is no longer accessible by other users in the group.

**Note:**  Social tasks do not require an acceptance.

To accept a task, complete the following:

1.  Click **Tasks** from the Tempo header bar.
    -   A list of assigned and accepted tasks is displayed.
2.  Click an assigned task.
    -   If the task has been assigned to a group and/or multiple users and the task was designed a certain way, the task form opens in preview mode and you are prompted to accept the task before you can start working on it. Click on **Accept** to accept it and start working on it. Once you have accepted a task, you may have the ability to reject the task or assign it back to the current pool of assignees if you have been given sufficient privileges to do so. - Depending on the design, some tasks do not open in preview mode and when you click on the task, you are prompted to accept it before being able to view the task form. Click **Yes** to accept it and view the task form. - If the task is assigned to just you, it is accepted once you open it.
3.  Not accepting a task is not the same as rejecting it.
    -   See below: [Rejecting a Task in Tempo](#rejecting)

## Rejecting

Once you have accepted a process task assigned to you and others, you have the option to reject the task if you have sufficient privileges. Rejecting a task removes the task from your task list.

**Note:**  Social tasks cannot be rejected.

The option to reject a task is only displayed under the following conditions:

-   The application developer must have given you sufficient privileges to reject the task.
-   You must have already accepted the task.
-   The task must be assigned to a group or more than one user.
-   You are not the only assignee who hasn't yet rejected the task.

To reject a task after accepting it, complete the following:

1.  Click **Tasks** from the Tempo header bar. A list of assigned and accepted tasks is displayed.
2.  Click the accepted task that you would like to reject.
3.  When the task form opens, click **Reject**.
4.  Click the **Reject** button to confirm the task rejection or the **Cancel** button to keep the task.

When you reject a task, the task is reassigned back to the original assignees except you.

**Note:**  Any changes to the task form that you have saved are preserved when you reject the task and are available to the next user viewing/completing the task.

## Reassigning

You have the option to reassign process tasks if you have sufficient privileges.

**Note:**  Social tasks cannot be reassigned.

The option to reassign a task is only displayed under the following conditions:

-   The application developer must have given you sufficient privileges to reassign the task.

Depending on the privileges given to you by the application developer, you may either be able to reassign the task to any users and/or groups, or only be able to reassign it within the current list of assignees.

To reassign a task, complete the following:

1.  Click **Tasks** from the Tempo header bar. A list of assigned and accepted tasks is displayed.
2.  Click the task that you would like to reassign.
3.  When the task form opens, click **Reassign**.
4.  Select the new assignees. Depending on the level of your permissions, you will be able to either choose from the current assignee list, or from all users and groups.
5.  Click the **Reassign** button to submit the task reassignment or the **Cancel** button to leave the task as currently assigned.

When you reassign a task, the task's assignment list changes to the users and/or groups that you specify.

## Closing

Closing a social task differs from closing and completing a process task. This section explains how to close both.

-   Social tasks can be closed by the user assigned to it or the user who sent it.
-   Process tasks can be closed by the user assigned to it and the editors/administrators of the related process.

To close a social task, complete the following:

1.  Click **Tasks** from the Tempo header bar and select your task. The full description of the task is displayed.
2.  Click **Close**. A text entry box displays.
3.  (Optional) Enter a comment regarding the task.
4.  Click **Close**. A notification is sent to the task sender letting them know it is closed.

**Note:**  You can also add a comment to a social task before and after you complete it.

To close a process task, complete the following:

1.  Accept the task to display the task form.
2.  Each input listed as **required** must be completed and all fields of a form are validated to ensure the correct type of value is provided.
    -   If an invalid entry is made, an error message displays.
3.  To save the form (if applicable) and complete it later, click **Save Draft** in the top-left corner.
    -   All required fields must be entered before saving a form.
4.  Once all fields are completed, click **Submit** to complete and close the task.

**Note:**  When completing a field that requires you to enter multiple numbers, each number must be separated by a semi-colon. For all other input field types, multiple values can be separated by a comma.

## Creating

Sending a social task to a user is a way to create a task for another user or yourself through Tempo. Only social tasks can be created in Tempo.

-   Social tasks can only be completed through the Tempo interface.
-   The tasks are not based on a process, but instead are only based on text entered by you.

**Note:**  You cannot send a task to multiple users, deactivated users, or users you do not have viewer rights to.

To send a social task, complete the following:

1.  From the News tab, click **Click here to post…** at the top of the News feed.
2.  Select the **Task** tab.
3.  In the **To:** field, begin typing the name of the user you want to assign the social task to, and select them from the dropdown list when the user appears. You are allowed to create social tasks for yourself.
4.  Enter your social task description (you must enter at least one character).

    **Note:**  The task description cannot exceed 4,000 bytes.

5.  (Optional) Attach files to the task:
    -   Click the paperclip icon below the text box.
    -   Select the file that you want to attach using the file browser. The file starts uploading right away or immediately after any previously uploading files.
    -   Repeat as needed for any additional files you would like to attach.
    -   Remove any attached files by clicking on the "X" to the right of the file name.
6.  Click **Send Task**. The social task is added to the **Assigned to Me** view of the assignee's **Tasks** tab and your **Sent by Me** view.

By default, you receive an email notification when the assignee comments on or closes a social task assigned by you.

## Commenting

You can add comments to social tasks assigned to or sent by you. Existing comments display below the entry.

To add a comment, complete the following:

1.  Select the **Comment** link on a social task, or, if comments are already added, select the **Add you comment here…** box under the last comment displayed.
2.  Type your comment in the text box that displays.

    **Note:**  Comments can be a maximum of 4,000 bytes.

3.  (Optional) Attach files to the comment:
    -   Click the paperclip icon below the text box.
    -   Select the file that you want to attach using the file browser. The file starts uploading right away or immediately after any previously uploading files. - Repeat as needed for any additional files you would like to attach. - Remove any attached files as needed by clicking on the "X" to the right of the file name.
4.  Click **Comment** to add your comment to the entry.

Your comment is added to the existing list.

By default, you receive an email notification when another user comments on something you already commented on.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...