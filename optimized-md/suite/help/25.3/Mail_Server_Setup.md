---
source_url: https://docs.appian.com/suite/help/25.3/Mail_Server_Setup.html
original_path: Mail_Server_Setup.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Mail Server Setup

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian sends email to notify users of task assignments and various alerts. It receives email to start processes and receive process information. Process designers can also configure the Send E-Mail Smart Service to send email from a process application. Before Appian can send or receive emails, however, you must configure Appian to use your email server.

## Sending emails

The initial configuration is not ready to send email. The following configuration steps are required.

**Tip:**  Appian Cloud supports routing outbound e-mail over a [VPN tunnel](Cloud_VPN_Integration.html). For assistance in setting up secure outbound e-mail, contact [Appian Support](https://community.appian.com/support).

### Configuring Appian to send email

To configure Appian to send email:

1.  Open (or create) `<APPIAN_HOME>/conf/custom.properties`.
2.  On a new line, add the IP address, hostname, or fully qualified domain name of the SMTP server to the following setting:`conf.mailhandler.mail.smtp.host=`
    -   If the SMTP server runs on a port other than port 25, the : format can be used to specify the port to use for that host.
    -   Multiple SMTP servers can be specified using a comma-separated list. They will be tried in the order specified and mail will be sent using the first available.

For SMTP server authentication (if required) add the following properties to `<APPIAN_HOME>/conf/custom.properties`:

```
1
2
conf.mailhandler.mail.smtp.auth=true
conf.mailhandler.mail.user
```

Also add the following to `<APPIAN_HOME>/conf/passwords.properties` (create the file if not already present):

```
1
conf.password.SMTP
```

To send email over SMTPS (a Secure Sockets Layer connection) add the following properties to `<APPIAN_HOME>/conf/custom.properties` (create the file if not already present):

```
1
conf.mailhandler.mail.transport.protocol=smtps
```

You can enable starttls with the "smtp" protocol by adding the following property:

```
1
conf.mailhandler.mail.smtp.starttls.enable=true
```

This will cause outgoing mail to use STARTTLS if supported by the remote server but will fall back to plain smtp otherwise.

You can require starttls with the "smtp" protocol by adding the following property:

```
1
conf.mailhandler.mail.smtp.starttls.required=true
```

This will cause mail to fail if the remote server does not support STARTTLS.

### Default SMTP timeout value

The default SMTP timeout value for email messages sent from the Appian platform is 10 minutes, which is the recommended value per SMTP standards. If for some reason you need to update this value, please contact [Appian Support](https://community.appian.com/support).

### Configuring a process to send email

See also: [Send E-Mail Smart Service](Send_Email_Smart_Service.html)

## Setting the prefix and domain for emails from processes and process models

The domain and the prefix of the email address used when the **From** field is set to `Process` or `Process Model` can be configured by using the following properties in `custom.properties`:

```
1
2
3
resources.appian.process.email-expressions.email.domain=your-appian-instance.com
resources.appian.process.email-expressions.email.prefix.process=process
resources.appian.process.email-expressions.email.prefix.processmodel=processmodel
```

| Property | Description |
| --- | --- |
| `email.domain` | Refers to the domain part of the email address (the part after the `@`). |
| `email.prefix.process` | Refers to the prefix prepended to the ID of the process from which the email is sent. |
| `email.prefix.processmodel` | Refers to the prefix prepended to the ID of the process model from which the email is sent. |

See also: [Custom Configurations](Custom_Configurations.html)

### Available custom properties

The following custom properties can be configured in `<APPIAN_HOME>/conf/custom.properties` to configure sending email (inclusive of properties described elsewhere in this page).

| Property | Description |
| --- | --- |
| `conf.mailhandler.mail.smtp.host` | The designated host name of the email sender. List the port number if your SMTP server isn't running on port 25. |
| `conf.mailhandler.mail.smtp.auth` | Set to `true` in order to provide credentials to the email server when establishing a connection. |
| `conf.mailhandler.ntf_sndr_addr` | The default email address a site will use to send notifications. Note that this will also be the default value of the `MAIL FROM` envelope header which is used to validate DKIM signatures. |
| `conf.mailhandler.mail.user` | The username of the account used to connect to the email server. Only used when `conf.mailhandler.mail.smtp.auth` is set to true. |
| `conf.password.SMTP`

**NOTE:** This property must be configured in `passwords.properties`, not `custom.properties`. | The password of the account used to connect to the email server. Only used when `conf.mailhandler.mail.smtp.auth` is set to true. |
| `conf.suite.MAIL_SCHEME` | This property (together with `MAIL_APPLICATION_CONTEXT` and `MAIL_SERVER_AND_PORT`) is used to tell the application server where to retrieve the body of an email before it is sent. You should define this property (together with the mail application context and the mail server and port) if the application server cannot readily connect to your configured site URL. The default setting is taken from your `conf.suite.SCHEME` configuration. |
| `conf.suite.MAIL_APPLICATION_CONTEXT` | The default setting is taken from your `conf.suite.APPLICATION_CONTEXT` configuration. |
| `conf.suite.MAIL_SERVER_AND_PORT` | The default setting is taken from your `conf.suite.SERVER_AND_PORT` configuration. |

See also: [Email Alert Address](Post-Install_Configurations.html#email-alert-address) for the properties for setting the sender's email address and email display name.

## Receiving emails

The initial configuration is not ready to receive email. The following configuration steps are required:

### Anonymous access

The Anonymous user account must be enabled to allow the receipt of email messages to start a process.

See also: [Anonymous User](Anonymous_User.html)

### Public events

Public events must be enabled on the General tab of your process model's properties dialog to enable the receipt of email messages to start a process.

See also: [Public Events](process-model-object.html#general-tab)

### Configuring Appian to poll an email account

Appian does not include an email server. You must set up an email server (with unique credentials for each Appian instance) in the following manner:

1.  Download a mail server (such as [Apache James](https://james.apache.org/)) and configure it to route email destined for Appian, or create an account on your existing email server to receive Appian email.
2.  On the email server, create an email address for Appian to use.
3.  Write down the email address for future reference. This account is used when sending email to Appian.
4.  If you are migrating an existing process that receives email, create an email account for each process that needs to receive email.
5.  Open `<APPIAN_HOME>/conf/custom.properties` and configure the following properties. Note that all properties are in the `conf.mailhandler.poller` namespace (e.g. `conf.mailhandler.poller.EmailHandlerBean.mailServer`)

| Property | Default Value | Description |
| --- | --- | --- |
| `EmailHandlerBean.mailServer` |   | The hostname, IP address, or fully qualified domain name of the mail server that Appian checks for mail messages |
| `EmailHandlerBean.userName` |   | The username associated with the mailbox (the email account that is setup for use by Appian) storing the messages for your processes. Appian reads the email for the address of whatever account you are using to log into the email server. |
| `EmailHandlerBean.mailFolder` | INBOX | The folder from which new messages should be read. The typical value for this property is `INBOX`. |
| `EmailHandlerBean.storeProtocol` | imap | The protocol that is used by the mailstore (`pop3`, `imap`, or `imaps`). Value must be lowercase (for example, `imaps` and not `IMAPS`). |
| `EmailHandlerBean.port` | 143 | The port number used to communicate with your mail server |
| `EmailHandlerBean.starttls` | true | Whether or not to use SSL when connecting to the mail server. If you set this property to `true`, and you're using IMAP, `storeProtocol` must be set to `imaps` |
| `EmailHandlerBean.pollingInterval` | 300000 | The frequency in milliseconds of how often Appian into the mail server to check for new messages. Polling intervals more frequent than 5 minutes may not be allowed by the mail server (consult with your organization's email administrator when setting this value). |
| `EmailHandlerBean.partialFetch` | true | Controls whether the IMAP partial-fetch capability should be used. If fetch time for large emails is too long, you may need to disable partial fetch. |
| `EmailHandlerBean.forceImapLogin` | false | Setting this property to `true` forces Appian to use IMAP `LOGIN` instead of IMAP `AUTHENTICATE` when attempting to connect to the email server. You need to set this property to `true` when attempting to poll a Microsoft Exchange shared mailbox. A shared mailbox will have a username pattern similar to `DOMAIN\username\mailboxname` |
| `EmailHandlerBean.debug` | false | Enables debug-level logging for mail polling. Debug logging will include sensitive information such as the plain-text password used to connect to the mail server. |

Depending on the brand, version, and configuration of your mail server, one of the following username formats may be applicable: `username`, `username@domain.tld`, `DOMAIN\\username`, `DOMAIN\\username\\mailboxname`

Setting the password for the email account(s) polled by Appian is accomplished using the `passwords.properties` configuration file.

1.  Open or create `<APPIAN_HOME/conf/passwords.properties`.
2.  Add the property `conf.password.EmailHandlerBean.EMAIL_HANDLER`
3.  Set the value of this property to the password corresponding to the username configured in `conf.mailhandler.poller.EmailHandlerBean.userName` above.

### Configuring Appian to poll additional email accounts

To configure Appian to poll additional email accounts:

1.  Open `<APPIAN_HOME>/conf/custom.properties`
2.  Copy all of the properties the start with `conf.mailhandler.poller.EmailHandlerBean.`
3.  Replace the `EmailHandlerBean` segment of the property names with a unique name for that email account
4.  Configure the properties (`mailServer`, `userName`, etc) for the new email account
5.  Add the `password` for the new account
    -   Open or create `<APPIAN_HOME>/conf/passwords.properties`
    -   Add the property `conf.password.<mail_poller_name>.EMAIL_HANDLER`, where `<mail_poller_name>` is replaced with the unique name from the previous step

Repeat this for each of the email accounts configured for polling.

**Tip:**  Appian Cloud email infrastructure supports polling only a single mailbox. If additional mailbox polling is needed, a custom mail server will need to be used.

### Routing email messages

**Tip:**  Inbound email routing works differently in Appian Cloud. See [Email on Appian Cloud](Email_on_Appian_Cloud.html#sending-an-email-message-to-a-process-in-appian-cloud) for more details.

Email messages are routed to process models, processes, or events using destination key value pairs embedded within the subject or body of the email. When formatting a routing key and value, use the bracketed `[key=value]` format. For example:

```
1
[DestinationPMUUID=0006d222-3c28-8000-1944-82000]
```

This key/value pair routes a message to a process model with the process model UUID of `0006d222-3c28-8000-1944-82000`.

The following destination keys are available:

| Destination Key | Description |
| --- | --- |
| `DestinationPMID` | The ID of the process model. |
| `DestinationPMUUID` | The UUID of the process model. |
| `DestinationProcessID` | The ID of the process instance. |
| `DestinationEventPersistentID` | The event persistent ID of the Receive Message Event node. |

### Email routing details

If an email does not contain a proper key/value pair for routing, the message routing fails and an error message is logged.

-   Mail that cannot be routed because of missing destination information is returned to the original sender.

Key/value pairs remain in the email message after it is routed to its destination.

-   To exclude the routing information from the body of an email message, you can place the key/value pair in the subject line of the message.

Destination keys can only contain alpha-numeric characters and cannot begin with a numeric character.

-   If a destination key begins with an invalid character, it is automatically replaced in the following manner.

| Starts With | Replaced With | Comment |
| --- | --- | --- |
| Numeric character (0-9) | `initial_#_` | The `#` symbol refers to the disallowed numeric character (0-9). |
| Any non alpha-numeric character | `initial___` | Three underscore characters are used. |

If a non alpha-numeric character (such as `@`) appears in the destination key (after the starting character) it is replaced with an underscore character (`_`).

As a best practice, adhere to the following:

-   Use the process model UUID instead of the process model ID for email routing.
-   Unlike the process model's ID property, the process model's UUID does not change when the process model is moved to a different server.
-   Email routing does not have to be reconfigured for events in process models that are exported and imported (as part of an application) when messages are routed to the event using a DestinationPMUUID key value pair.

### Adding a routing alias to custom.properties

Message driven beans can use aliases for routing the email messages received. You can create aliases for process models UUIDs, process model IDs, processes, or events. Configuring an email alias is recommended when handling legacy email addresses.

To add a routing alias:

1.  Open (or create) `<APPIAN_HOME>/conf/custom.properties`.
2.  Add a custom alias definition using the following pattern.

    conf.mailhandler.alias.\=

For example, with an email alias of `HelpDeskRequest@mydomain.topdomain`, define a process model start event target using a UUID with the following parameters.

```
1
conf.mailhandler.alias.HelpDeskRequest=processmodeluuid0004cedf-a045-8000-234b-c0a8031014c0
```

The following routing prefixes can be used when defining an alias.

-   `processmodeluuid`
-   `processmodel`
-   `process`
-   `event`

Any routing key/value pairs in email sent to an address with an alias are used for routing instead of the alias; key/value pairs are evaluated first. Alias definitions are only used when routing information is not available.

### Configuring a process to receive email

See also: [Start Event: Receive Message](Receive_Message_Event.html)

### Available custom properties

The following custom properties can be configured in `<APPIAN_HOME>/conf/custom.properties` to configure receiving email (inclusive of properties described elsewhere in this page).

| Property | Description |
| --- | --- |
| `conf.mailhandler.alias.<recipientName>=<routing>` | A routing alias for email received by Appian. |

**Tip:**  The mailhandler alias custom property outlined above is not available in Appian Cloud.

## Testing and troubleshooting

### Testing the email service

To test the email service:

1.  Verify that your mail server is running.
2.  From a command prompt, type the following:

    ```
    1
    telnet [mail.server.name] [port#]
    ```

    For example, if Appian is installed on `server_name.mydomain.com`, and the mail server is running on port 26, you would enter the following command.

    ```
    1
    telnet server_name.mydomain.com 26
    ```

3.  Verify the mail server is running properly. For example, for Apache James, the following reply is displayed:

    ```
    1
    220 servername SMTP Server (JAMES SMTP Server 2.2.0) ready Day, #1. Mmm yyyy hh:mm:ss -1200 (GMT-12:00)
    ```

4.  Type the following based your email address:

    ```
    1
    EHLO myemail@mydomain.com
    ```

    You should receive the following reply.

    ```
    1
    250 server-name Hello youremail@yourdomain.com (connecting.machine.hostname [ip.address])
    ```

5.  If you are using an older SMTP server version that does not support `EHLO`, use the `HELO` command.
6.  Log into Appian.
7.  Create a simple process that sends yourself an email.
    -   See also: [Send E-Mail Smart Service](Send_Email_Smart_Service.html)
8.  Save, publish, and run the process.
    -   If your user profile lists your correct email address, you should receive an email notification when the process completes.
9.  If you do not receive the email, check the mail server log files, as well as the application server log

### Troubleshooting email configuration

#### What if it doesn't appear to be working?

1.  Connect to the email server from an email client using the credentials you've specified in `custom.properties` and `passwords.properties`.
2.  Verify that the account is the one that you want to use for Appian.
3.  Test this account's ability to send and receive email.
4.  Note the username format and the protocol used by the email client (such as POP3 or IMAP). Use the same format and settings in your configuration.
5.  If using a secure protocol, verify that the certificate presented by the email server is trusted by the JVM.

#### What if I send email to an Appian event and nothing happens?

The mail server might be down.

1.  Verify its status and restart it if necessary.
2.  Make sure that you are sending all the properties that are expected by the event and that the event is active.
3.  Make sure the latest version of your process is published. If you are trying to send email to a start event, check your alerts. In some scenarios, an error alert is generated that explains the issue.
4.  Double-check the email address you are using.

#### How can I determine whether or not emails are reaching my mail server?

Check the `smtpserver.log` for your mail server. This file should have an entry for every email received.

You can also check the [mail-listener.log](Logging.html#received-emails) in the `<APPIAN_HOME>/logs` directory.

#### How can I determine whether my mail server is establishing a connection with Appian to receive emails?

Add the following property definition to your `custom.properties` file.

```
1
conf.mailhandler.poller.EmailHandlerBean.debug=true
```

**Note:**  Debug logging will include sensitive information such as the plain-text password used to connect to the mail server.

Review the application server log output to confirm whether a connection is being established.

## Configuring Notifications

See also: [Configuring Notifications](Configuring_Notifications.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...