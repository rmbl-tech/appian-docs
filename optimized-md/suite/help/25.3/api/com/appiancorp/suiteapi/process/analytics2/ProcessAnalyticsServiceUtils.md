---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsServiceUtils.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsServiceUtils.html
version: "25.3"
title: "Class ProcessAnalyticsServiceUtils"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/ProcessAnalyticsServiceUtils"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class ProcessAnalyticsServiceUtils

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsServiceUtils

* * *

public class ProcessAnalyticsServiceUtils extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class supplements the `ProcessAnalyticsService` with additional methods. These methods were not put directly on the service only because they would have coupled the services to the servlet container.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessAnalyticsServiceUtils](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getProcessReportsUsingAlias](#getProcessReportsUsingAlias\(java.lang.String%5B%5D,javax.servlet.ServletContext,com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] aliases_, javax.servlet.ServletContext servletContext_, [ProcessAnalyticsService](ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2") service_)`

    Retrieve multiple process reports by their aliases.

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getProcessReportUsingAlias](#getProcessReportUsingAlias\(java.lang.String,javax.servlet.ServletContext,com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias_, javax.servlet.ServletContext servletContext_, [ProcessAnalyticsService](ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2") service_)`

    Retrieve a process report using the alias that is defined for that report in the analytics configuration file.

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getSystemProcessViews](#getSystemProcessViews\(javax.servlet.ServletContext,com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService,java.util.Locale\))(javax.servlet.ServletContext servletContext_, [ProcessAnalyticsService](ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2") service_, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Retrieve the process reports defining the system process views.

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getSystemTaskViews](#getSystemTaskViews\(javax.servlet.ServletContext,com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService\))(javax.servlet.ServletContext servletContext_, [ProcessAnalyticsService](ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2") service_)`

    Retrieve the process reports defining the system task views.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessAnalyticsServiceUtils

        public ProcessAnalyticsServiceUtils()

-   ## Method Details

    -   ### getProcessReportUsingAlias

        public [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") getProcessReportUsingAlias([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias\_, javax.servlet.ServletContext servletContext\_, [ProcessAnalyticsService](ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2") service\_) throws [PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieve a process report using the alias that is defined for that report in the analytics configuration file.

        Parameters:

        `alias_` - the alias for the report.

        `servletContext_` - the context for the servlet container.

        `service_` - the `ProcessAnalyticsService`.

        Returns:

        the report.

        Throws:

        `[PrivilegeException](../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have rights to view the report.

    -   ### getProcessReportsUsingAlias

        public [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getProcessReportsUsingAlias([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] aliases\_, javax.servlet.ServletContext servletContext\_, [ProcessAnalyticsService](ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2") service\_)

        Retrieve multiple process reports by their aliases.

        Parameters:

        `aliases_` - the aliases for the reports.

        `servletContext_` - the context for the servlet container.

        `service_` - the `ProcessAnalyticsService`.

        Returns:

        the reports.

        See Also:

        -   [`getProcessReportUsingAlias(String, ServletContext, ProcessAnalyticsService)`](#getProcessReportUsingAlias\(java.lang.String,javax.servlet.ServletContext,com.appiancorp.suiteapi.process.analytics2.ProcessAnalyticsService\))

    -   ### getSystemTaskViews

        public [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getSystemTaskViews(javax.servlet.ServletContext servletContext\_, [ProcessAnalyticsService](ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2") service\_)

        Retrieve the process reports defining the system task views. The system task views are the reports declared as such in the analytics configuration file.

        Parameters:

        `servletContext_` - the context for the servlet container.

        `service_` - the `ProcessAnalyticsService`.

        Returns:

        the system task views.

    -   ### getSystemProcessViews

        public [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getSystemProcessViews(javax.servlet.ServletContext servletContext\_, [ProcessAnalyticsService](ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2") service\_, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Retrieve the process reports defining the system process views. The system process views are the reports declared as such in the analytics configuration file.

        Parameters:

        `servletContext_` - the context for the servlet container.

        `service_` - the `ProcessAnalyticsService`.

        `locale_` - the locale for the current user

        Returns:

        the system process views.