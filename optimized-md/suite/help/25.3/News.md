---
source_url: https://docs.appian.com/suite/help/25.3/News.html
original_path: News.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# News

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides guidance on how to interact with News posts in Tempo and manage your News feed. The News tab displays an ongoing list of entries created by fellow users, system administrators, and internal business processes. This Work Platform interface allows you to openly communicate with other users and stay informed with events occurring within the Appian system.

The entries that display are based on how you manage your News feed and how other users or system administrators target their entries. Longer entries are truncated and can be expanded to view all the content by clicking the **More** link at the end of the entry. If an entry includes a file attachment, you can download the file by clicking the file link.

A secured entry displays the closed lock icon next to the timestamp. For secured events, rest your pointer on the lock to display the target audience.

Records added to a business or system event display below the entry content. Clicking a record tag opens the record's Summary dashboard.

See also: [Records](Using_the_Records_Tab.html)

Only the two most recent comments are displayed for each entry. To view additional comments, click **Show # comments**.

Up to 50 comments are displayed in the feed when comments are expanded. To hide all but the two most-recent comments, click **Hide Comments**.

Up to 1,000 of the most-recent comments to an entry can be displayed in the Entry Details View.

## Manage your News feed

You can manage the type of entries that appear automatically in your News feed by subscribing to specific feeds, following users, and joining audience groups.

### Subscribe to feeds

Topic-specific feeds are created by system administrators. When an event, such as a process milestone or other important process-driven event, is created for a specific feed, only users subscribed to that feed will see it in their News feed.

See also: [Feed Subscriptions](Settings_Page.html#news-subscriptions)

### Follow users

The option to "follow" a user lets you select who you see posts from in your News feed. If you follow a user, any post created by the user will automatically display in your News feed.

To follow a user, complete the following:

1.  Hover your mouse over their user display name to view their user card - OR - click on their user display name to view their User Profile page.
2.  While viewing their user card or User Profile page, click the follow button. The button turns gray and displays the word "Unfollow."

Any posts the user creates will now show up in your News feed. In order to view posts previously created by the user, refresh your browser.

### Unfollow users

If you unfollow a user, posts created by the user will stop automatically showing up in your News feed. You can continue to receive messages from them, but you will no longer see posts made by them unless they add you or one of your groups as a participant to the post or you search for it.

1.  To unfollow a user, hover your mouse over their user display name to view their user card - OR - click on their user display name to view their User Profile page.
2.  While viewing their user card or User Profile page, click the Unfollow button. The button turns green and displays the word "Follow."

### Join Tempo Message Audience Groups

Tempo Message Audience Groups are target groups for Tempo feed entries. You can add an audience group as a participant on a [post](News.html#create-a-post) or a recipient of a [message](News.html#send-a-message). For example, a company might choose to have an _IT Service Desk_ audience group, so that you can message your IT department directly from Tempo.

Audience groups are created by your system administrators. To see which groups you can target entries to, click the **Message** tab on the News feed, then click the **To:** field.

By becoming a part of an audience group, you can see entries targeted to that group that you might not otherwise see in your News feed. Note that joining an audience group depends on the [security configurations](Configuring_Security_for_Groups.html#groups-in-appian-designer) of the group. Some audience groups are public, meaning you are automatically a member of them. Others are restricted such that you must be added by an administrator of that group in order to join. Talk to your system administrator about joining restricted groups.

To learn more about how to add audience groups to the Tempo Message Audience Groups system group, see [Tempo Message Audience Groups](System_Groups.html#tempo-message-audience-groups).

## Select a view

On the left-side of the News feed, you can select from the views below to filter entries and change their sort order depending on the view selected.

### All

This view lists all the following entries by the most recently added:

-   Posts added by you.
-   Posts added by users you follow.
-   Messages sent by you.
-   Messages sent to you or a group in which you're a member.
-   Kudos given by you.
-   Kudos given by users you follow.
-   Events added to feeds in which you are subscribed.
-   Entries that a user added you to or added a group in which you're a member.

### Updates

This view lists the same entries you see in the All view but sorts them by those with the most-recent activity. Activity includes both the initial creation of an entry and comments added to it. For example, if a user adds a comment to an entry created yesterday, it now becomes the first on the list.

### Participating

This view lists any News entries that you are a part of, which include the following:

-   Entries created by you.
-   Entries created by the system on your behalf.
    -   For example, events created by a process where you are the user associated with the event.
-   Entries targeted to you.
    -   For example, a message targeted to a list of users including yourself or a kudos given to you.
    -   This does not include entries targeted to a group you are a part of.
-   Entries you comment on.
-   Entries you are added to.

**Note:**  If at any time, you are removed from a group and in turn lose viewer rights to a locked message, the entry no longer displays in your Participating view even if you've commented on it. If it is an unlocked message, however, that entry continues to appear in your Participating view regardless of your group membership status.

### Kudos

This view lists the kudos entries for all users visible to you, whether or not you follow the recipient or sender. The entries are sorted by most-recent activity, similar to the Updates view.

### Starred

This view lists favorite feed items that you **starred** by clicking the star icon for the entry.

## Add Entries

On the News feed, you can add any of the following types of entries:

-   Posts which can be seen by anyone
-   Messages only seen by specific users and/or groups
-   Kudos which can be seen by anyone

You can only target entries to users and groups you have viewer rights to.

**Note:**  Take care when creating entries. Only system administrators can [delete](#delete-entries) them once a comment or hazard is added.

### Create a post

A post is an entry that displays on the News feed of your followers and any users and groups you specify.

Followers are users who have selected the **Follow** option on your user card or User Profile page.

See above: [Follow users](#follow-users)

Adding users and groups to a post makes the post appear in their news feed automatically, even if they are not following you. Specific users added to the post receive an email notification that they were added to it with a link to the post. Any users specifically added also see it in their Participating view.

Any user can search for your post.

To create a post, complete the following:

1.  At the top of the News feed, click **Click here to post…** or select the Post tab.
2.  Select the **Type post here** field, and enter your post.
    -   The maximum size for posts is 4,000 bytes.
3.  Add users or groups to the post by clicking the person icon in the bottom-left of the entry box and entering the user or group names in the text field. You can also select groups by clicking the group icon button to the right. You can remove users or groups before posting by clicking the "X" to the right of the name.
    -   Only groups added as a Tempo Message Audience Group are available for selection. See above: [Join Tempo Message Audience Groups](#join-tempo-message-audience-groups)
4.  Attach files to the post by clicking the paperclip icon below the text box and selecting the file that you want to attach using the file browser. You can remove any attached files before posting by clicking the "X" to the right of the file name.
5.  Click **Post** to add your post to the news feed.

The post displays on your News feed and the News feed of your followers and any users and groups you added to the post. By default, you receive an email notification when a user comments on it.

See also: [Notifications](Notifications.html)

### Send a message

Messages are entries you can send to a single user or group, multiple users and/or groups, or all users in the system. Only the recipients you send the message to and any users and groups added to the message can view it. The message will not show up in the search results of other users.

The message you send can be "locked" or "unlocked."

-   **Locked Messages**: Can only ever be seen by the target audience. Additional users and groups cannot be added after you send the message.
-   **Unlocked Messages**: Can only be seen by the target audience and any users and groups added after you create the message.

To send a message to a single user or group or a list of users and/or groups, complete the following:

1.  At the top of the News feed, click **Click here to post…** and then select the **Message** tab, or just select the **Message** tab.
2.  To add a user to the recipients list, type the name of the user in the To: field and select it from the dropdown list that appears.
    -   The selected user displays as a button in the To: field. Clicking this button removes the user from the recipients list.
3.  To add a group to the recipients list, click the To: field label and select it from the dropdown list that appears - or - search for the group by typing its name in the To: field and then select it from the dropdown list.
    -   The selected group displays as a button in the To: field. Clicking this button removes the group from the recipients list.
    -   Only groups added as a Tempo Message Audience Group are available for selection.
    -   See above: [Join Tempo Message Audience Groups](#join-tempo-message-audience-groups)
4.  Repeat the last two steps as needed for any other users or groups.
5.  To secure the message to only the original list of recipients and keep anyone from adding other users and groups to the message, click the lock icon in the top-right of the message box.
    -   This configures the message as a locked message and the icon changes to a locked state.
    -   Clicking it again returns it to its unlocked state.
6.  Select the **Type message here** field, and enter your message.
    -   The maximum size for messages is 4,000 bytes.
7.  Attach files to the message by clicking the paperclip icon below the text box and selecting the file that you want to attach using the file browser. You can remove any attached files before sending the message by clicking the "X" to the right of the file name.
8.  Finally, click **Send Message**. The message displays on the News feed of your selected recipients.

To send a message to all users (also known as the Everyone group):

1.  At the top of the News feed click **Click here to post…** and then select the **Message** tab, or just select the **Message** tab.
2.  Type "Everyone" in the To: field and select it from the dropdown list that appears. The Everyone group displays as a button in the To: field. Clicking this button removes it from the recipients list.
    -   The Everyone group will not display if a system administrator did not give you rights to send messages to all users.
    -   If you select the Everyone group, you cannot add select specific users or groups.
3.  Select the **Type message here** field, and enter your message.
    -   The maximum size for messages is 4,000 bytes.
4.  Attach files to the message by clicking the paperclip icon below the text box and using the file browser to select the file you want to attach. You can remove any attached files before sending the message by clicking on the "X" to the right of the file name.
5.  Click **Send Message**. The message displays on the News feed for all users.

By default, recipients receive an email notification that the message was created, and you receive an email notification when a user comments on your message. Users do not receive email notifications for messages sent to the Everyone group.

If another user adds additional users and groups to your message, you also receive an email notification by default.

See below: [Notify Others of an Entry](#notify-others-of-an-entry)

### Including links in feed postings

While you cannot add HTML tags to format your posts and messages in the News feed and Appian for Mobile Devices, you can enter a URL and it will render as a link.

Your URL must meet the following requirements to be recognized:

-   Upper or lowercase text that starts with `http://`, `https://`, `ftp://`, or `mailto://`— or —

-   Upper or lowercase text that starts with `www.`
-   Text that includes `.com`, `.org`, `.net`, `.edu`, `.ly`, or `.gl`
    -   Country specific and other types of domains are only detected when prefixed with a recognized URL scheme, such as `http://`

## Add comments

You can add a comment to any post, message, kudos, or event in your News Feed. Existing comments display below the entry.

To add a comment, complete the following:

1.  Select the **Comment** link on an entry, or, if comments are already added, select the **Add you comment here…** box under the last comment displayed.
2.  Type your comment in the text box that displays.
    -   The maximum size for comments is 4,000 bytes.
3.  Attach files to the comment by clicking the paperclip icon below the text box and using the file browser to select the file you want to attach. You can remove any attached files before posting by clicking on the "X" to the right of the file name.
4.  Click **Comment** to add your comment to the entry. Your comment is added to the existing list. If the entry previously did not display in your Participating or Updates view, it does now.

By default, you receive an email notification when another user comments on something you already commented on.

### Add comments on mobile

Instructions for viewing and posting comments differ based on your type of mobile device.

#### iOS users

1.  Tap the feed entry. The entry details are displayed.
2.  To post a comment,
    -   Tap the **Comment** text box in the footer. — OR —
    -   Tap the **Comments** button if you are viewing additional information or Participants. Then tap the **Comment** text box.
3.  The **Add Comment** dialog is displayed.
4.  Type your comment.
    -   You cannot add comments that are longer than 1000 characters.
5.  Tap **Add**.

#### Android users

1.  Tap the feed entry. The entry details are displayed.
2.  To post a comment,
    -   Tap the **Comment** field. — OR —
    -   Tap and hold a feed entry. Select **Comment**.
3.  The **Add Comment** screen is displayed.
4.  Type your message.
    -   You cannot add comments that are longer than 1000 characters.
5.  Tap **Add Comment**.

## Give kudos

Giving kudos to a user is a way to publicly show your praise for another user's work. The kudos display on the News feed of the recipient and your followers and can also be viewed from the recipient's User Profile page by all users. You can only give kudos to a single user to which you have viewer rights.

**Note:**  You cannot send kudos to yourself, deactivated users, or users you do not have viewer rights to.

To give kudos to another user, complete the following:

1.  At the top of the News feed, click **Click here to post…** and then select the **Kudos** tab, or just select the **Kudos** tab.
2.  Begin typing the name of the user you want to give kudos to, and select them from the list when the name appears.
3.  Enter text for your kudos (you must enter at least one character).
    -   Kudos can be a maximum of 4,000 bytes.
4.  Attach files to the kudos by clicking the paperclip icon below the text box and using the file browser to select the file you want to attach. You can remove any attached files before giving the kudos by clicking on the "X" to the right of the file name.
5.  Click **Give Kudos**. The kudos displays on the News feed for any users currently following you as well as the user you gave the kudos to.

By default, the user receiving the kudos receives an email notification that the kudos was created and you receive an email notification when a user comments on the kudos given by you.

## Send a social task

Sending a social task to a user is a way to create a task for another user or yourself through Tempo.

-   Social tasks can only be completed through Tempo.
-   The tasks are not based on a process, but instead are only based on text entered by you.

**Note:**  You cannot send a task to multiple users, deactivated users, or users you do not have viewer rights to.

To send a social task, complete the following:

1.  Click **Click here to post…** at the top of the News feed.
2.  Select the **Task** tab.
3.  In the **To:** field, begin typing the name of the user you want to assign the social task to, and select them from the dropdown list when the user appears.
    -   You can also create social tasks for yourself.
4.  Enter your social task description (you must enter at least one character).
    -   The task description cannot exceed 4,000 bytes.
5.  Attach files to the task by clicking the paperclip icon below the text box and using the file browser to select the file you want to attach. You can remove any attached files before sending the task by clicking on the "X" to the right of the file name.
6.  Click **Send Task**. The social task is added to the **Assigned to Me** view of the assignee's **Tasks** tab and your **Sent by Me** view.

By default, you will receive an email notification when the assignee comments on or closes a social task assigned by you.

See also: [Closing Social Tasks](Tasks.html#closing)

## Search entries

Each time you perform a search, you can restrict your results in one or more of the ways described below.

**Note**: These search options do not search through event source system names or event Data ("More Info").

### By keyword

Enter a word, the first part of a word, or multiple words into the search box and press **Enter**. The News feed returns posts, messages, kudos, and events that contain the search term(s) either in the main entry or a comment in the entry.

To search for a specific phrase, enclose the phrase in quotes (`""`).

### By author

Enter the text `from:` followed by a all or part of a name and press **Enter**. The News feed returns entries attributed to a user with a partial or full matching first name, last name, or username. For example, `from:Smith` might return entries by John Smith, Matt Smithers, Smith Jordan, Smithe Company, or robert.smith.

It does not search through comments attributed by the user.

To include both a first and last name, enclose the name in quotes. For example, `from:"John Smith"` will only returns entries attributed to John Smith.

### By keyword and author

By combining the two tactics above, you can search for entries that contain a specific keyword and were attributed by a specific author.

For example, `contract from:"John Smith"` only returns entries authored by John Smith that contain the word "contract." Entering `from:"John Smith" contract` returns the same results since `contract` is outside the quotes.

### By star status

Enter the text `is:starred` along with your other search requirements to restrict results to only those you previously starred.

For example, `is:starred contract` only returns entries containing the word "contract" that were starred by you. Entering `contract from:"John Smith" is:starred` only returns entries authored by John Smith, containing the word "contract", and starred by you.

See above: [Star Entries](#star-entries)

### By feed

Enter the text `feed:` followed by all or part of a feed name to restrict results to only those entries in that feed. If you enter part of a feed name, results from any feeds that start with that text are returned. If more than one feed starts with the text entered, results from all matching feeds are returned.

For example, depending on the feeds available, `feed:New` might return results from a New Customer feed and a New Support Case feed. If a New Support Case feed does exist, entering `feed:"New Support Case" critical` only returns results from the New Support Case feed that contain the word `critical`.

You do not need to be subscribed to a feed in order to return results from it.

See above: [Subscribe to Feeds](#subscribe-to-feeds)

## Star entries

By clicking the star icon at the bottom of an entry, you can add the entry to your Starred view and easily retrieve it through search.

-   The star icon turns gold when an entry is starred.
-   You can unstar an entry by clicking the star icon again. (The icon should return to white.)

## Notify others of an entry

If you want to bring a user's attention to an existing entry, you have two options:

-   Add them to the entry
-   Send them a direct link to the URL

### Add them as a participant

You can add users and groups to any post, unlocked message, kudos, or unsecured event already on your News feed. By adding them to an entry, you are proactively bringing them into the conversation. An email notification is sent to any users that are added by default with a link to the entry. For specific users called out, the entry is also added to their Participating and Updates view.

To add users and groups to an entry, complete the following:

1.  Locate the entry.
2.  Hover your mouse over the person icon below the entry text. A list of the existing participants displays.
    -   If a lock icon exists instead of a person icon, it is a locked message and you cannot add users or groups to the entry.
3.  In the text field above the participants list, type the name of a user or group and select it from the dropdown list that appears. The selected user or group displays as a button in the field. Clicking this button removes the user from the list.
    -   Only groups added as a Tempo Message Audience Group are available for selection.
    -   See above: [Join Tempo Message Audience Groups](#join-tempo-message-audience-groups)
4.  Click **Add**. The names of the users and groups you just added now appear in the list of participants.

### Send them a direct URL

While adding a user or group to an entry is the ideal way to notify them of an existing entry, you can also just send them the direct URL for it. The URL will only work if the user has viewer rights to the entry.

Click the timestamp on an entry to display the Entry Details. The URL for the Entry Details view is the intuitive URL.

You can send this to other users for quick access to just that entry. Sending them the URL, however, does not add the entry to their Participating view unless they start commenting on it.

## Delete entries

Users can delete their own posts, messages, kudos, and social tasks, as long as there are no comments on the entry.

System administrators can delete any feed entries, including system events. Deleting a feed entry deletes any comments and/or hazards associated with the entry. It also prevents the entry from returning in any search results.

If users attempt to access, post comments to, or post hazards to deleted entries, they receive an error. Starred entries (marked as a favorite by a user) are removed from the list of favorites and are no longer accessible by the user.

**Note:**  This functionality does not include the ability to delete feed entries via the mobile application.

### Deleting a Tempo feed entry

To delete a feed entry, complete the following:

1.  Open the Tempo Web User Interface.
2.  Search for the feed entry (event, system event, or message).
3.  Click on **Delete**, located next to the **Comment** link.
    -   A confirmation prompt displays: "Delete this entry?" \[Yes/No\].
4.  Click **Yes**.
    -   The entry is immediately removed from the user's view. Other sessions must be refreshed to reflect the change.

### Reviewing deleted entries

Deletions are logged in `deletion.log` with the following information for review:

-   INFO level
-   Message: `{username} deleted entry [id={id}] from {author&#124;source} and [body={first 50 characters of body}]`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...