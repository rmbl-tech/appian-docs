---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/cfg/Configuration.html
original_path: api/com/appiancorp/suiteapi/cfg/Configuration.html
version: "25.3"
title: "Interface Configuration"
page_id: "api/com/appiancorp/suiteapi/cfg/Configuration"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.cfg](package-summary.html)

# Interface Configuration

* * *

public interface Configuration

Interface that exposes the public configuration properties in custom.properties for use in custom code. To obtain an instance that implements the interface use [`ConfigurationLoader.getConfiguration()`](ConfigurationLoader.html#getConfiguration\(\)).

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAbsoluteStaticPluginResource](#getAbsoluteStaticPluginResource\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") moduleCompleteKey, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") resourceName)`

    A helper method to return a url for 'plugin' resources.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAeLogs](#getAeLogs\(\))()`

    Corresponds to conf.suite.AE\_LOGS in custom.properties.

    `int`

    `[getAlertMessageLimit](#getAlertMessageLimit\(\))()`

    Corresponds to conf.suite.ALERT\_MESSAGE\_LIMIT in custom.properties.

    `int`

    `[getAlertSubjectLimit](#getAlertSubjectLimit\(\))()`

    Corresponds to conf.suite.ALERT\_SUBJECT\_LIMIT in custom.properties.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getAliasMap](#getAliasMap\(\))()`

    Corresponds to conf.mailhandler.alias.\* in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAppianName](#getAppianName\(\))()`

    Corresponds to resources.appian.ap.application.appian.ap.appianName in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAppianVersion](#getAppianVersion\(\))()`

    Corresponds to Appian release version.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAppname](#getAppname\(\))()`

    Corresponds to resources.appian.ap.application.appian.ap.appname in custom.properties.

    `int`

    `[getArvLimit](#getArvLimit\(\))()`

    Corresponds to resources.appian.process.application.arv.limit in custom.properties.

    `int`

    `[getAutoArchiveDelay](#getAutoArchiveDelay\(\))()`

    Corresponds to conf.suite.AUTO\_ARCHIVE\_DELAY in custom.properties.

    `int`

    `[getAutocompleteCacheMaxSize](#getAutocompleteCacheMaxSize\(\))()`

    Corresponds to conf.suite.CACHE\_MAX\_SIZE in custom.properties.

    `int`

    `[getAutoDeleteDelay](#getAutoDeleteDelay\(\))()`

    Corresponds to conf.suite.AUTO\_DELETE\_DELAY in custom.properties.

    `[File](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html "class or interface in java.io")`

    `[getBasePath](#getBasePath\(\))()`

    Corresponds to conf.suite.BASE\_PATH in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getBaseUri](#getBaseUri\(\))()`

    Corresponds to Appian server.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getClientIdPrefix](#getClientIdPrefix\(\))()`

    Corresponds to conf.jms.clientIdPrefix.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getClientIds](#getClientIds\(\))()`

    Corresponds to conf.jms.clientIds in custom.properties.

    `int`

    `[getCollaborationAdministrationGroupId](#getCollaborationAdministrationGroupId\(\))()`

    Corresponds to resources.appian.ac.collaboration.COLLABORATION\_ADMINISTRATION\_GROUP\_ID in custom.properties.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getConnectionFactoryNames](#getConnectionFactoryNames\(\))()`

    Corresponds to conf.jms.connectionFactory in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getContextPath](#getContextPath\(\))()`

    Corresponds to conf.suite.APPLICATION\_CONTEXT in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCopyright](#getCopyright\(\))()`

    Corresponds to resources.appian.ap.application.appian.ap.copyright in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCopyrightYear](#getCopyrightYear\(\))()`

    Corresponds to resources.appian.ap.application.appian.ap.copyrightYear in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreateConnectionPassword](#getCreateConnectionPassword\(\))()`

    Corresponds to conf.jms.createConnectionPassword in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreateConnectionUsername](#getCreateConnectionUsername\(\))()`

    Corresponds to conf.jms.createConnectionUsername in custom.properties.

    `int`

    `[getDataCapArray](#getDataCapArray\(\))()`

    Corresponds to conf.suite.DATA\_CAP\_ARRAY in custom.properties.

    `int`

    `[getDataCapParagraphs](#getDataCapParagraphs\(\))()`

    Corresponds to conf.suite.DATA\_CAP\_PARAGRAPHS in custom.properties.

    `int`

    `[getDataCapSentences](#getDataCapSentences\(\))()`

    Corresponds to conf.suite.DATA\_CAP\_SENTENCES in custom.properties.

    `int`

    `[getDataCapWords](#getDataCapWords\(\))()`

    Corresponds to conf.suite.DATA\_CAP\_WORDS in custom.properties.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getDatasources](#getDatasources\(\))()`

    Deprecated.

    `int`

    `[getDataTruncSentences](#getDataTruncSentences\(\))()`

    Corresponds to conf.suite.DATA\_TRUNC\_SENTENCES in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDefaultEmailDomain](#getDefaultEmailDomain\(\))()`

    Corresponds to conf.mailhandler.email.domain.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDefaultEnvironment](#getDefaultEnvironment\(\))()`

    Corresponds to conf.suite.DEFAULT\_ENVIRONMENT in custom.properties.

    `int`

    `[getDefaultHomePageId](#getDefaultHomePageId\(\))()`

    Corresponds to conf.suite.DEFAULT\_HOME\_PAGE\_ID in custom.properties.

    `int`

    `[getDisplayNameMaxSize](#getDisplayNameMaxSize\(\))()`

    Corresponds to resources.appian.ag.constants.ag.nn.maxsize in custom.properties.

    `int`

    `[getFirstNameMaxSize](#getFirstNameMaxSize\(\))()`

    Corresponds to resources.appian.ag.constants.ag.fn.maxsize in custom.properties.

    `int`

    `[getLastNameMaxSize](#getLastNameMaxSize\(\))()`

    Corresponds to resources.appian.ag.constants.ag.ln.maxsize in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMailPassword](#getMailPassword\(\))()`

    Corresponds to conf.mailhandler.mail.password in custom.properties.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getMailSmtpHosts](#getMailSmtpHosts\(\))()`

    Corresponds to conf.mailhandler.mail.smtp.host.

    `int`

    `[getMailSmtpPort](#getMailSmtpPort\(\))()`

    Corresponds to conf.mailhandler.mail.smtp.port in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMailUser](#getMailUser\(\))()`

    Corresponds to conf.mailhandler.mail.user in custom.properties.

    `int`

    `[getMaxAutoCompleteSuggestions](#getMaxAutoCompleteSuggestions\(\))()`

    Corresponds to conf.suite.MAX\_AUTOCOMPLETE\_SUGGESTIONS in custom.properties.

    `int`

    `[getMaxClientConnections](#getMaxClientConnections\(\))()`

    Corresponds to conf.jms.maxConnections.

    `int`

    `[getMaxExportRows](#getMaxExportRows\(\))()`

    Deprecated.

    Not in use anymore

    `int`

    `[getMaxNumberOfMoveableObjects](#getMaxNumberOfMoveableObjects\(\))()`

    Corresponds to resources.appian.ac.collaboration.MAX\_NUMBER\_MOVEABLE\_OBJECTS in custom.properties.

    `int`

    `[getMaxUploadFileSize](#getMaxUploadFileSize\(\))()`

    Corresponds to resources.appian.ac.collaboration.MAX\_UPLOAD\_FILE\_SIZE in custom.properties.

    `int`

    `[getMiddleNameMaxSize](#getMiddleNameMaxSize\(\))()`

    Corresponds to resources.appian.ag.constants.ag.mn.maxsize in custom.properties.

    `int`

    `[getMinimumDocumentNameLength](#getMinimumDocumentNameLength\(\))()`

    Corresponds to resources.appian.ac.collaboration.MINIMUM\_DOCUMENT\_NAME\_LENGTH in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getNotificationSenderAddress](#getNotificationSenderAddress\(\))()`

    Corresponds to conf.mailhandler.ntf\_sndr\_addr in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPrivateScheme](#getPrivateScheme\(\))()`

    Corresponds to conf.suite.PRIVATE\_SCHEME in custom.properties.

    `[URL](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/net/URL.html "class or interface in java.net")`

    `[getPrivateSchemeLinkRoot](#getPrivateSchemeLinkRoot\(\))()`

    Combines [`getPrivateScheme()`](#getPrivateScheme\(\)), [`getServerAndPort()`](#getServerAndPort\(\)), [`getContextPath()`](#getContextPath\(\)) to form the URL base of private (internal) links.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessStatusIcon](#getProcessStatusIcon\(long\))(long index)`

    Corresponds to resources.appian.analytics.application.processstatus.icon.# in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessStatusIconDefault](#getProcessStatusIconDefault\(\))()`

    Corresponds to resources.appian.analytics.application.processstatus.icon.default in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessTopic](#getProcessTopic\(\))()`

    Corresponds to conf.jms.processTopic in custom.properties.

    `[URL](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/net/URL.html "class or interface in java.net")`

    `[getPublicSchemeLinkRoot](#getPublicSchemeLinkRoot\(\))()`

    Combines [`getScheme()`](#getScheme\(\)), [`getServerAndPort()`](#getServerAndPort\(\)), [`getContextPath()`](#getContextPath\(\)) to form the URL base of public links.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getQueuePrefix](#getQueuePrefix\(\))()`

    Corresponds to conf.jms.queuePrefix in custom.properties.

    `int`

    `[getRequestTimeoutInSeconds](#getRequestTimeoutInSeconds\(\))()`

    Corresponds to conf.suite.REQUEST\_TIMEOUT\_IN\_SEC in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getScheme](#getScheme\(\))()`

    Corresponds to conf.suite.SCHEME in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getServerAndPort](#getServerAndPort\(\))()`

    Corresponds to conf.suite.SERVER\_AND\_PORT in custom.properties.

    `int`

    `[getSessionTimeoutWarn](#getSessionTimeoutWarn\(\))()`

    Corresponds to resources.appian.ap.application.appian.ap.session.timeoutwarn in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTopicPrefix](#getTopicPrefix\(\))()`

    Corresponds to conf.jms.topicPrefix in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getVersion](#getVersion\(\))()`

    Corresponds to resources.appian.ap.application.appian.ap.version in custom.properties.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getWebServiceBaseUrl](#getWebServiceBaseUrl\(\))()`

    Corresponds to resources.appian.webservices.application.webservice.baseurl in custom.properties.

    `boolean`

    `[isAutocompleteEnabled](#isAutocompleteEnabled\(\))()`

    Corresponds to conf.suite.AUTOCOMPLETE\_ENABLED in custom.properties.

    `boolean`

    `[isMailSmtpAuth](#isMailSmtpAuth\(\))()`

    Corresponds to conf.mailhandler.mail.smtp.auth in custom.properties.

    `boolean`

    `[isProduction](#isProduction\(\))()`

    Corresponds to conf.suite.PRODUCTION in custom.properties.

    `boolean`

    `[isUddiEnabled](#isUddiEnabled\(\))()`

    Determined by the settings in uddi-config.xml.

-   ## Method Details

    -   ### getMaxExportRows

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") int getMaxExportRows()

        Deprecated.

        Not in use anymore

        Corresponds to resources.appian.analytics.application.maxexportrows in custom.properties. The default is 5000.

        Returns:

        the maximum number of rows that will be included when a report is exported or printed.

    -   ### getProcessStatusIcon

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessStatusIcon(long index)

        Corresponds to resources.appian.analytics.application.processstatus.icon.# in custom.properties.

        Parameters:

        `index` - - the index # of the icon

        Returns:

        a path to the process status icon image

    -   ### getProcessStatusIconDefault

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessStatusIconDefault()

        Corresponds to resources.appian.analytics.application.processstatus.icon.default in custom.properties.

        Returns:

        the path to the image for the default process status icon

    -   ### getMaxUploadFileSize

        int getMaxUploadFileSize()

        Corresponds to resources.appian.ac.collaboration.MAX\_UPLOAD\_FILE\_SIZE in custom.properties. The default is 1024000000 (~1GB).

        Returns:

        the maximum size in bytes that is allowed for a file upload

    -   ### getCollaborationAdministrationGroupId

        int getCollaborationAdministrationGroupId()

        Corresponds to resources.appian.ac.collaboration.COLLABORATION\_ADMINISTRATION\_GROUP\_ID in custom.properties. The default is group id 0.

        Returns:

        the id of the Collaboration Administrators group

    -   ### getMinimumDocumentNameLength

        int getMinimumDocumentNameLength()

        Corresponds to resources.appian.ac.collaboration.MINIMUM\_DOCUMENT\_NAME\_LENGTH in custom.properties. The default is 4 characters.

        Returns:

        the minimum number of characters required for a document name.

    -   ### getMaxNumberOfMoveableObjects

        int getMaxNumberOfMoveableObjects()

        Corresponds to resources.appian.ac.collaboration.MAX\_NUMBER\_MOVEABLE\_OBJECTS in custom.properties. The defualt is 4 objects.

        Returns:

        the number of Documents, Knowledge Center, or Folders that can be moved simultaneously.

    -   ### getDatasources

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getDatasources()

        Deprecated.

        Corresponds to conf.data.datasources in custom.properties. The datasources must be configured with the application server and registered via JNDI. These datasources are available to the Query Database smart service.

        Returns:

        the list of JNDI names of the datasources.

    -   ### getLastNameMaxSize

        int getLastNameMaxSize()

        Corresponds to resources.appian.ag.constants.ag.ln.maxsize in custom.properties. Default is 35.

        Returns:

        the maximum length in characters of a user's last name

    -   ### getMiddleNameMaxSize

        int getMiddleNameMaxSize()

        Corresponds to resources.appian.ag.constants.ag.mn.maxsize in custom.properties. Default is 35.

        Returns:

        the maximum length in characters of a user's name name

    -   ### getFirstNameMaxSize

        int getFirstNameMaxSize()

        Corresponds to resources.appian.ag.constants.ag.fn.maxsize in custom.properties. Default is 35.

        Returns:

        the maximum length in characters of a user's first name

    -   ### getDisplayNameMaxSize

        int getDisplayNameMaxSize()

        Corresponds to resources.appian.ag.constants.ag.nn.maxsize in custom.properties. Default is 35.

        Returns:

        the maximum length in characters of a user's nickname

    -   ### getClientIds

        [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getClientIds()

        Corresponds to conf.jms.clientIds in custom.properties. If this is not defined, both conf.jms.clientIdPrefix and conf.jms.maxConnections must be defined.

        Returns:

        the client IDs to use for connecting to the JMS provider

    -   ### getClientIdPrefix

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getClientIdPrefix()

        Corresponds to conf.jms.clientIdPrefix. If the conf.jms.clientIds list is defined in custom.properties, that will be used. The default is "CLIENT\_"

        Returns:

        the prefix to use for auto-generated client IDs to use for connecting to the JMS provider

    -   ### getMaxClientConnections

        int getMaxClientConnections()

        Corresponds to conf.jms.maxConnections. Used in conjunction with conf.jms.clientIdPrefix to generated JMS client ids automatically. E.g., "CLIENT\_3" Default is 20.

        Returns:

        the maximum number of connections

    -   ### getConnectionFactoryNames

        [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getConnectionFactoryNames()

        Corresponds to conf.jms.connectionFactory in custom.properties. Default is "jms/AppianProcessIntegrationConnectionFactory"

        Returns:

        the list of connection factory names for creating connections to the JMS provider

    -   ### getProcessTopic

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessTopic()

        Corresponds to conf.jms.processTopic in custom.properties. The default is "Process."

        Returns:

        the name of the Topic or Queue that contains messaged destined for Appian processes

    -   ### getTopicPrefix

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTopicPrefix()

        Corresponds to conf.jms.topicPrefix in custom.properties. Empty by default.

        Returns:

        the prefix prepended to all topic names before sending a message to JMS topics.

    -   ### getQueuePrefix

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getQueuePrefix()

        Corresponds to conf.jms.queuePrefix in custom.properties. Empty by default.

        Returns:

        the prefix prepended to all topic names before sending a message to JMS topics.

    -   ### getCreateConnectionUsername

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreateConnectionUsername()

        Corresponds to conf.jms.createConnectionUsername in custom.properties.

        Returns:

        the username used to connect to the JMS provider

    -   ### getCreateConnectionPassword

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreateConnectionPassword()

        Corresponds to conf.jms.createConnectionPassword in custom.properties.

        Returns:

        the password used to connect to the JMS provider

    -   ### getNotificationSenderAddress

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getNotificationSenderAddress()

        Corresponds to conf.mailhandler.ntf\_sndr\_addr in custom.properties. Default is appian-alerts@serverdomain.

        Returns:

        the sender address of notification emails sent from the system.

    -   ### getMailSmtpHosts

        [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getMailSmtpHosts()

        Corresponds to conf.mailhandler.mail.smtp.host. If the list is empty, no email messages will be sent from the system. Ports other than 25 can be combined with the host in the form "host:port." When sending email, the list of host is tried in sequential order until success.

        Returns:

        the list of SMTP hosts used for sending email.

    -   ### getMailSmtpPort

        int getMailSmtpPort()

        Corresponds to conf.mailhandler.mail.smtp.port in custom.properties. Default is 25.

        Returns:

        the port used to connect to the SMTP host for sending emails

    -   ### isMailSmtpAuth

        boolean isMailSmtpAuth()

        Corresponds to conf.mailhandler.mail.smtp.auth in custom.properties. If it is `true`, it is used in conjunction with [`getMailUser()`](#getMailUser\(\)) and [`getMailPassword()`](#getMailPassword\(\)) to connect to the SMTP server to send email.

        Returns:

        whether or not smtp authentication is enabled

    -   ### getMailUser

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMailUser()

        Corresponds to conf.mailhandler.mail.user in custom.properties. If [`isMailSmtpAuth()`](#isMailSmtpAuth\(\)) is `true`, it is used in conjunction with [`getMailPassword()`](#getMailPassword\(\)) to connect to the SMTP server to send email.

        Returns:

        the username used to connect to the SMTP server

    -   ### getMailPassword

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMailPassword()

        Corresponds to conf.mailhandler.mail.password in custom.properties. If [`isMailSmtpAuth()`](#isMailSmtpAuth\(\)) is `true`, it is used in conjunction with [`getMailUser()`](#getMailUser\(\)) to connect to the SMTP server to send email.

        Returns:

        the password used to connect to the SMTP server

    -   ### getAliasMap

        [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getAliasMap()

        Corresponds to conf.mailhandler.alias.\* in custom.properties.

        Returns:

        a map of aliases to destinations for incoming email messages

    -   ### getDefaultEmailDomain

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDefaultEmailDomain()

        Corresponds to conf.mailhandler.email.domain. Default is determined automatically from the host machine's domain. REPLACE.com is returned if the machine's domain cannot be determined.

        Returns:

        the domain (part after the @ sign) for the from address for emails sent from the system if conf.mailhandler.ntf\_sndr\_addr is not set.

    -   ### getAppname

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAppname()

        Corresponds to resources.appian.ap.application.appian.ap.appname in custom.properties.

        Returns:

        the name of the software suite

    -   ### getVersion

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getVersion()

        Corresponds to resources.appian.ap.application.appian.ap.version in custom.properties.

        Returns:

        the version of the software suite

        See Also:

        -   [`getAppianVersion()`](#getAppianVersion\(\))

    -   ### getAppianVersion

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAppianVersion()

        Corresponds to Appian release version. Unlike [`getVersion()`](#getVersion\(\)), this version is not configurable.

        Returns:

        the version of the Appian suite

        See Also:

        -   [`getVersion()`](#getVersion\(\))

    -   ### getBaseUri

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getBaseUri()

        Corresponds to Appian server.

        Returns:

        the server, with port, with context path.

    -   ### getCopyright

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCopyright()

        Corresponds to resources.appian.ap.application.appian.ap.copyright in custom.properties. By default it is made up of [`getAppname()`](#getAppname\(\)), [`getVersion()`](#getVersion\(\)), [`getCopyrightYear()`](#getCopyrightYear\(\)), [`getAppianName()`](#getAppianName\(\)).

        Returns:

        the copyright statement

    -   ### getCopyrightYear

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCopyrightYear()

        Corresponds to resources.appian.ap.application.appian.ap.copyrightYear in custom.properties.

        Returns:

        the copyright year or year range

    -   ### getAppianName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAppianName()

        Corresponds to resources.appian.ap.application.appian.ap.appianName in custom.properties.

        Returns:

        the name of the company

    -   ### getSessionTimeoutWarn

        int getSessionTimeoutWarn()

        Corresponds to resources.appian.ap.application.appian.ap.session.timeoutwarn in custom.properties.

        Returns:

        the number of minutes before the timeout warning is displayed.

    -   ### getArvLimit

        int getArvLimit()

        Corresponds to resources.appian.process.application.arv.limit in custom.properties. Default is 10.

        Returns:

        the limit to the number of rows processed by the Database Access node for return values

    -   ### isProduction

        boolean isProduction()

        Corresponds to conf.suite.PRODUCTION in custom.properties. Default is true.

        Returns:

        whether or not the system is set to production mode

    -   ### getAeLogs

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAeLogs()

        Corresponds to conf.suite.AE\_LOGS in custom.properties. Default is the "logs" directory in the installation directory.

        Returns:

        the path to the directory containing the log files.

    -   ### getBasePath

        [File](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html "class or interface in java.io") getBasePath()

        Corresponds to conf.suite.BASE\_PATH in custom.properties. Default is the "\_admin" directory in the installation directory.

        Returns:

        the directory containing the file system data (accdocs, mini, models, etc.)

    -   ### getContextPath

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getContextPath()

        Corresponds to conf.suite.APPLICATION\_CONTEXT in custom.properties. Default is "suite."

        Returns:

        the application context used to build URLs for links

    -   ### getServerAndPort

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getServerAndPort()

        Corresponds to conf.suite.SERVER\_AND\_PORT in custom.properties. The port portion is not needed if [`getScheme()`](#getScheme\(\)) is http and the port is 80 or if [`getScheme()`](#getScheme\(\)) is https and the port is 443.

        Returns:

        the host:port of the system

    -   ### getScheme

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getScheme()

        Corresponds to conf.suite.SCHEME in custom.properties.

        Returns:

        the public facing URL scheme

    -   ### getPrivateScheme

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPrivateScheme()

        Corresponds to conf.suite.PRIVATE\_SCHEME in custom.properties.

        Returns:

        the URL scheme used for internal server-to-server http communication

    -   ### getPublicSchemeLinkRoot

        [URL](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/net/URL.html "class or interface in java.net") getPublicSchemeLinkRoot()

        Combines [`getScheme()`](#getScheme\(\)), [`getServerAndPort()`](#getServerAndPort\(\)), [`getContextPath()`](#getContextPath\(\)) to form the URL base of public links. E.g., "https://myserver.mydomain.com/suite"

        Returns:

        the base of public links

    -   ### getPrivateSchemeLinkRoot

        [URL](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/net/URL.html "class or interface in java.net") getPrivateSchemeLinkRoot()

        Combines [`getPrivateScheme()`](#getPrivateScheme\(\)), [`getServerAndPort()`](#getServerAndPort\(\)), [`getContextPath()`](#getContextPath\(\)) to form the URL base of private (internal) links. E.g., "http://appserver1/suite"

        Returns:

        the base of private (internal) links

    -   ### getDataCapWords

        int getDataCapWords()

        Corresponds to conf.suite.DATA\_CAP\_WORDS in custom.properties. Default is 500.

        Returns:

        the maximum number of characters for inputs that are intended to take words.

    -   ### getDataCapSentences

        int getDataCapSentences()

        Corresponds to conf.suite.DATA\_CAP\_SENTENCES in custom.properties. Default is 500.

        Returns:

        the maximum number of characters for inputs that are intended to take sentences.

    -   ### getDataCapParagraphs

        int getDataCapParagraphs()

        Corresponds to conf.suite.DATA\_CAP\_PARAGRAPHS in custom.properties. Default is 1000.

        Returns:

        the maximum number of characters for inputs that are intended to take paragraphs.

    -   ### getDataCapArray

        int getDataCapArray()

        Corresponds to conf.suite.DATA\_CAP\_ARRAY in custom.properties. Default is 1000.

        Returns:

        the maximum number of items in an array.

    -   ### getDataTruncSentences

        int getDataTruncSentences()

        Corresponds to conf.suite.DATA\_TRUNC\_SENTENCES in custom.properties. Default is 200.

        Returns:

        the maximum number of characters to display where output is capped (e.g., in grid cells).

    -   ### getRequestTimeoutInSeconds

        int getRequestTimeoutInSeconds()

        Corresponds to conf.suite.REQUEST\_TIMEOUT\_IN\_SEC in custom.properties. Default is 8 seconds.

        Returns:

        number of seconds of waiting for the next task in the chain to load before which the user will be redirected to the Task list

    -   ### getAutoArchiveDelay

        int getAutoArchiveDelay()

        Corresponds to conf.suite.AUTO\_ARCHIVE\_DELAY in custom.properties. Default is 7 days.

        Returns:

        the default number of days used when configuring a model to auto-archive processes

    -   ### getAutoDeleteDelay

        int getAutoDeleteDelay()

        Corresponds to conf.suite.AUTO\_DELETE\_DELAY in custom.properties. Default is 0 days. Requires the process model to be configured to automatically delete completed processes.

        Returns:

        the number of days used when configuring a model to auto-delete processes

    -   ### getAlertSubjectLimit

        int getAlertSubjectLimit()

        Corresponds to conf.suite.ALERT\_SUBJECT\_LIMIT in custom.properties. Default is 150.

        Returns:

        the maximum number of characters allowed in an alert subject

    -   ### getAlertMessageLimit

        int getAlertMessageLimit()

        Corresponds to conf.suite.ALERT\_MESSAGE\_LIMIT in custom.properties. Default is 1000.

        Returns:

        the maximum number of characters allowed in an alert message

    -   ### isAutocompleteEnabled

        boolean isAutocompleteEnabled()

        Corresponds to conf.suite.AUTOCOMPLETE\_ENABLED in custom.properties. Default is true.

        Returns:

        whether or not autocomplete is enabled.

    -   ### getMaxAutoCompleteSuggestions

        int getMaxAutoCompleteSuggestions()

        Corresponds to conf.suite.MAX\_AUTOCOMPLETE\_SUGGESTIONS in custom.properties. Default is 12.

        Returns:

        the maximum number of suggestions to return with an autocomplete query

    -   ### getAutocompleteCacheMaxSize

        int getAutocompleteCacheMaxSize()

        Corresponds to conf.suite.CACHE\_MAX\_SIZE in custom.properties. Default is 1000.

        Returns:

        the maximum number of items to cache for autocomplete

    -   ### getDefaultHomePageId

        int getDefaultHomePageId()

        Corresponds to conf.suite.DEFAULT\_HOME\_PAGE\_ID in custom.properties. Default is page 0.

        Returns:

        the id of the default home page that users see if they do not have a custom home page

    -   ### getDefaultEnvironment

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDefaultEnvironment()

        Corresponds to conf.suite.DEFAULT\_ENVIRONMENT in custom.properties. Default is "apps." Possible values are "designer" or "apps."

        Returns:

        the name of the environment that users will log into if the URL contains only the context

    -   ### getWebServiceBaseUrl

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getWebServiceBaseUrl()

        Corresponds to resources.appian.webservices.application.webservice.baseurl in custom.properties. Default is the same as [`getPublicSchemeLinkRoot()`](#getPublicSchemeLinkRoot\(\)) but may be set to a different value if the system is configured to expose web services through a different URL than the main site (uncommon).

        Returns:

        the base url of the web service WSDL and endpoint (part before "/webservice/processmodel/")

    -   ### isUddiEnabled

        boolean isUddiEnabled()

        Determined by the settings in uddi-config.xml. If a `<publish-registry>` element is present, this is true.

        Returns:

        whether or not the system is configured to publish WSDL urls to a UDDI registry

    -   ### getAbsoluteStaticPluginResource

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAbsoluteStaticPluginResource([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") moduleCompleteKey, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") resourceName)

        A helper method to return a url for 'plugin' resources. Typical usage is to replace:

        `<%= request.getContextPath() %>/download/resources/plugin.key:module.key/resource.name` with `<%= webResourceManager.getStaticPluginResource(descriptor, resourceName) %>`

        This method returns a URL in an absolute format

        Parameters:

        `moduleCompleteKey` - complete plugin module key

        `resourceName` - the name of the resource as defined in the plugin manifest

        Returns:

        A url that can be used to request 'plugin' resources.