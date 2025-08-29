---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/java-module-ms-outlook.html
original_path: rpa-9.17/java-module-ms-outlook.html
version: "25.3"
title: "MS Outlook Java Module"
page_id: "rpa-9.17/java-module-ms-outlook"
section: "Prerequisites"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# MS Outlook Java Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The MS Outlook module allows you to use Microsoft Outlook in your robotic task. Using this module, your robotic task can view and reply to emails, download email attachments, and even create and send new emails.

## Prerequisites

To use the module, ensure you've completed the following prerequisites:

-   [Include the module dependency](develop-java.html#add-dependencies) in the pom.xml.
-   Install the Microsoft Outlook client on your host machine.
-   Ensure you have a valid email account configured on your host machine.
-   Download the [Jacob COM Bridge](files/2233900.dll) library to your host machine. Note that this library only applies to 64-bit systems. Rename the downloaded .dll file to `jacob-1.18-x64.dll` and place it in the same directory as the `AppianRPAagent.exe` utility.

## Using the MS Outlook module

The _IJidokaOutlook_ interface contains the objects, methods, and properties the Appian robotic task needs to interact with Outlook. This interface was developed using [Outlook Visual Basic for Applications (VBA)](https://docs.microsoft.com/office/vba/api/overview/outlook), so the elements created from the interface implement elements defined in the Outlook VBA object model.

To instantiate the _IJidokaOutlook_ interface, use the following code snippet:

```
1
IJidokaOutlook outlook = IJidokaOutlook.getInstance(this);
```

Where `this` refers to the class that implements the _IRobot_ interface.

Once the interface is initialized, you can begin [managing folders in Outlook](#managing-folders-in-outlook) using the _IOlFolderManager_ interface, or [managing new and existing emails in Outlook](#managing-emails-in-outlook) using the _IOlMailManager_ interface.

### Managing folders in Outlook

In the Outlook VBA object model, a folder is represented by a [folder object](https://docs.microsoft.com/en-us/office/vba/api/outlook.folder). In Appian RPA, folder objects are represented by the _IOlFolder_ interface.

To get an instance of a folder, you'll use the _IOlFolderManager_ interface. The _IOlFolderManager_ interface provides methods for managing the folders in an Outlook account on your host machine. The most commonly used methods are listed below.

#### List all folders

The _getAllFolderList()_ method returns a list of _IOlFolder_ objects and their location in the Outlook account. As one of the first commonly used methods, invoking the _getAllFolderList()_ method allows you to validate your access to the configured account and view all available folders.

```
1
2
3
4
5
server.info("Show Folders:");
List<IOlFolder> foldersList = outlook.getOlFolderManager().getAllFoldersList();
for (IOlFolder folder : foldersList) {
    server.info("Folder Path <" + folder.getFolderPath()+">");
}
```

To locate a list of subfolders, use the _getFolders()_ method of the _IOlFolder_ object. This method allows you to get a list of folders contained in the specified folder object.

To search for a list of folders, use the _findMailFolder()_ method of the _IOlFolderFW_ object. The _IOlFolderFW_ object is used to search for instances of _IOlFolder_. This method returns one or more objects that match the criteria specified by the _IOlFolderFW_ object.

```
1
2
3
4
5
6
7
8
9
IOlFolderFW criteria = new OlFolderFW();
criteria.setFolderPath("\\\\myaccount@mycompany.com POP");

List<IOlFolder> folderList = outlook.getOlFolderManager().findMailFolder(criteria);
IOlFolder mainFolder = folderList.get(0);

for (IOlFolder folder : mainFolder.getFolders()) {
    server.info("- " + folder.getFolderPath());
}
```

#### List emails from a folder

The _getMailList()_ method returns a list of emails from a specified folder. The objects listed will be of type _IOlMailItem_, which represents an email.

```
1
2
3
4
5
6
7
8
9
IOlFolderFW criteria = new OlFolderFW();
criteria.setFolderPath("\\\\myaccount@mycompany.com POP\\Inbox");
List<IOlFolder> folderList = outlook.getOlFolderManager().findFolder(criteria);

List<IOlMailItem> mailList = outlook.getOlFolderManager().getMailList(folderList.get(0).getEntryID());

for (IOlMailItem mailItem : mailList) {
    server.info("Mail Subject <"+mailItem.getSubject()+">");
}
```

For a full list of methods available from the _IOlFolderManager_ interface, see the Javadocs.

### Managing emails in Outlook

In the Outlook VBA object model, an email is represented by a [mailItem object](https://docs.microsoft.com/en-us/office/vba/api/outlook.mailitem). In Appian RPA, mailItem objects are represented by the _IOlMailItem_ interface.

The _IOlMailItem_ object contains information about a specific email, such as the subject line, sender, recipient, creation time, and more. The properties of the object are based on the [VBA MailItem object](https://docs.microsoft.com/en-us/office/vba/api/outlook.mailitem).

To print the properties of the _IOlMailItem_ object, use the following code snippet:

```
1
2
3
4
5
6
7
8
9
10
11
12
List<IOlMailItem> mailList = outlook.getOlFolderManager().getMailList(folderEntryId);

for (IOlMailItem mailItem : mailList) {
    server.info("Mail Subject <"+mailItem.getSubject()+">");
    server.info("     Sender <"+mailItem.getSenderEmailAddress()+">");
    server.info("     To <"+mailItem.getTo()+">");
    server.info("     CC <"+mailItem.getCc()+">");
    server.info("     BCC <"+mailItem.getBcc()+">");
    server.info("     HtmlBody <"+mailItem.getHtmlBody()+">");
    server.info("     Body <"+mailItem.getBody()+">");
    server.info("     CreationTime <"+mailItem.getCreationTime()+">");
}
```

To interact with _IOlMailItem_ objects, you'll use the _IOlMailManager_ interface. The methods in this interface allow you to do the following:

| Method | Description |
| --- | --- |
| [_showMail()_](#open-an-email) | Open an email. |
| [_closeMail()_](#close-an-email) | Close an email. |
| [_downloadAttachments()_](#download-attached-files) | Download file attachments from an email. |
| [_saveMail()_](#save-an-email) | Save an email to a folder. |
| [_move()_](#move-an-email) | Move an email to a different folder. |
| [_createMail()_](#create-an-email) | Create a new email. |
| [_sendMail()_](#send-an-email) | Send an email. |
| [_replyMail()_](#reply-to-an-email) | Reply to an email. Use _replyAllMail()_ to reply to all email recipients. |
| [_forward()_](#forward-an-email) | Forward an email. |

#### Open an email

Use the _showMail()_ method to open an email on the screen

```
1
outlook.getOlMailManager().showMail(mailItem);
```

#### Close an email

Use the _closeMail()_ method to close an email on the screen.

```
1
outlook.getOlMailManager().closeMail(mailItem.getEntryID(),EInspectorClose.SAVE);
```

#### Download attached files

Use the _downloadAttachments()_ method to download file attachments from an email.

In the following example, the attachments are saved in a temporary directory that is deleted at the end of the execution.

```
1
2
3
4
5
6
7
IOlMailItem mailItem = mailList.get(0);
File directory = FileUtil.createTempDirectory();
outlook.getOlMailManager().downloadAttachments( mailItem, directory.getAbsolutePath());

for (File fileDownloaded : directory.listFiles()) {
    server.info(String.format("Downloaded file %s", fileDownloaded.getAbsolutePath()));
}
```

#### Save an email

Use the _saveMail()_ method to save an email to a specified file path.

In the following example, the email is saved in a temporary file.

```
1
2
3
4
File directory = FileUtil.createTempDirectory();
File messageFile = FileUtils.getFile(directory, mailItem.getSubject());
outlook.getOlMailManager().saveMail(mailItem, messageFile.getAbsolutePath());
server.info(String.format("Downloaded Message to %s",   messageFile.getAbsolutePath()));
```

#### Move an email

Use the _move()_ method to move an email between two folders. This method requires two parameters: the _IOlMailItem_ object and a reference to the target folder.

```
1
2
3
4
5
IOlFolderFW destFolderCriteria = new OlFolderFW();
destFolderCriteria.setFolderPath("\\\\myaccount@mycompany.com POP\\Inbox\\destFolder");
List<IOlFolder> folderDestList = outlook.getOlFolderManager().findFolder(destFolderCriteria);
IOlFolder target = folderDestList.get(0);
outlook.getOlMailManager().move(mailItem, target);
```

#### Create an email

Use the _createMail_() method to create a new email. By default, created emails are stored in the drafts folder. This method returns an _IOlMailItem_ object.

In the following example, an email is created and files are attached. After, the window is closed.

```
1
2
3
4
5
6
7
8
9
10
IOlMailItem newMail = new OlMailItem();
newMail.setSubject("Subject for IJidokaOutlook mail");
newMail.setTo("toAccount@myCompany.com");
newMail.setCc("ccAccount@myCompany.com");
newMail.setBody("Body for IJidokaOutlook mail");
IOlMailItem createdMail = outlook.getOlMailManager().createMail(newMail, true);

outlook.getOlMailManager().addAttachmets(createdMail, "C:\\temp\\attachment.pdf");

outlook.getOlMailManager().closeMail(createdMail.getEntryID(),EInspectorClose.SAVE);
```

#### Send an email

Use the _sendMail()_ method to send a new email created from the _createMail()_ method.

The following example is similar to the _createMail()_ method example; however, instead of closing the window, the email is sent.

```
1
2
3
4
5
6
7
8
9
10
11
IOlMailItem newMail = new OlMailItem();
newMail.setSubject("Subject for IJidokaOutlook mail");
newMail.setTo("toAccount@myCompany.com");
newMail.setCc("ccAccount@myCompany.com");
newMail.setBody("Body for IJidokaOutlook mail");
IOlMailItem createdMail = outlook.getOlMailManager().createMail(newMail, true);

outlook.getOlMailManager().addAttachmets(createdMail, "C:\\temp\\attachment.pdf");

outlook.getOlMailManager().sendMail(createdMail);

```

#### Reply to an email

Use the _replyMail()_ method to reply to an email.

```
1
outlook.getOlMailManager().replyMail(mailItem, "This is a reply");
```

To reply to all recipients on the email, use the _replyAllMail()_ method.

```
1
outlook.getOlMailManager().replyAllMail(mailItem, "This is a reply");
```

#### Forward an email

Use the _forward()_ method to forward an email. You must add the destination address before executing this method.

```
1
2
3
4
5
6
IOlMailItem mailItem = mailList.get(0);

mailItem.setTo("forwardAccount@myCompany.com");
mailItem.setCc("");

outlook.getOlMailManager().forward(mailItem, "This is a Forward");
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...