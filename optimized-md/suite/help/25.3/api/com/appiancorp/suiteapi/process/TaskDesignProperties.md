---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/TaskDesignProperties.html
original_path: api/com/appiancorp/suiteapi/process/TaskDesignProperties.html
version: "25.3"
title: "Class TaskDesignProperties"
page_id: "api/com/appiancorp/suiteapi/process/TaskDesignProperties"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class TaskDesignProperties

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.TaskDesignProperties

* * *

public class TaskDesignProperties extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Holds a task's high level metadata during design time (i.e. in the process modeler, not during execution.)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_MODEL_ID](#SORT_BY_PROCESS_MODEL_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROCESS_MODEL_NAME](#SORT_BY_PROCESS_MODEL_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_UUID](#SORT_BY_UUID)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TaskDesignProperties](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getFriendlyName](#getFriendlyName\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessModelId](#getProcessModelId\(\))()`

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getProcessModelName](#getProcessModelName\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessModelUuid](#getProcessModelUuid\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    `void`

    `[setFriendlyName](#setFriendlyName\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") friendlyName_)`

    `void`

    `[setProcessModelId](#setProcessModelId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    `void`

    `[setProcessModelName](#setProcessModelName\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") processModelName_)`

    `void`

    `[setProcessModelUuid](#setProcessModelUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid)`

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

    -   ### SORT\_BY\_UUID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_UUID

    -   ### SORT\_BY\_PROCESS\_MODEL\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_MODEL\_ID

    -   ### SORT\_BY\_PROCESS\_MODEL\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROCESS\_MODEL\_NAME

-   ## Constructor Details

    -   ### TaskDesignProperties

        public TaskDesignProperties()

-   ## Method Details

    -   ### getFriendlyName

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getFriendlyName()

        Returns:

        Returns the friendlyName, which is the name the user chose for the node in the user's locale.

    -   ### setFriendlyName

        public void setFriendlyName([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") friendlyName\_)

        Parameters:

        `friendlyName` - See [`getFriendlyName()`](#getFriendlyName\(\)).

    -   ### getProcessModelId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessModelId()

        Returns:

        Returns the processModelId.

    -   ### setProcessModelId

        public void setProcessModelId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_)

        Parameters:

        `processModelId` - The processModelId to set.

    -   ### getProcessModelUuid

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessModelUuid()

        Returns:

        process model UUID of process model with id corresponding to getProcessModelId().

    -   ### setProcessModelUuid

        public void setProcessModelUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid)

        Parameters:

        `processModelUuid` - The processModelUuid to set.

    -   ### getProcessModelName

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getProcessModelName()

        Returns:

        Returns the processModelName in the user's locale.

    -   ### setProcessModelName

        public void setProcessModelName([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") processModelName\_)

        Parameters:

        `processModelName` - See [`getProcessModelName()`](#getProcessModelName\(\))

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Returns:

        Returns the uuid.

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid\_)

        Parameters:

        `uuid` - The uuid to set.