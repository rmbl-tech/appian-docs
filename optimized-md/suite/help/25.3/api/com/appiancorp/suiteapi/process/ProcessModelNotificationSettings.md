---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessModelNotificationSettings.html
original_path: api/com/appiancorp/suiteapi/process/ProcessModelNotificationSettings.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessModelNotificationSettings

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.ProcessModelNotificationSettings

All Implemented Interfaces:

`[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessModelNotificationSettings extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessModelNotificationSettings)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessModelNotificationSettings](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getRecipientsExpression](#getRecipientsExpression\(\))()`

    `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[]`

    `[getUsersAndGroups](#getUsersAndGroups\(\))()`

    `boolean`

    `[isCustomSettings](#isCustomSettings\(\))()`

    `boolean`

    `[isNotifyInitiator](#isNotifyInitiator\(\))()`

    `boolean`

    `[isNotifyOwner](#isNotifyOwner\(\))()`

    `boolean`

    `[isNotifyRecipientsInExpression](#isNotifyRecipientsInExpression\(\))()`

    `boolean`

    `[isNotifyUsersAndGroups](#isNotifyUsersAndGroups\(\))()`

    `void`

    `[setCustomSettings](#setCustomSettings\(boolean\))(boolean customSettings_)`

    `void`

    `[setNotifyInitiator](#setNotifyInitiator\(boolean\))(boolean notifyInitiator_)`

    `void`

    `[setNotifyOwner](#setNotifyOwner\(boolean\))(boolean notifyOwner_)`

    `void`

    `[setNotifyRecipientsInExpression](#setNotifyRecipientsInExpression\(boolean\))(boolean notifyRecipientsInExpression_)`

    `void`

    `[setNotifyUsersAndGroups](#setNotifyUsersAndGroups\(boolean\))(boolean notifyUsersAndGroups_)`

    `void`

    `[setRecipientsExpression](#setRecipientsExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") recipientsExpression_)`

    `void`

    `[setUsersAndGroups](#setUsersAndGroups\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] people_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessModelNotificationSettings

        public ProcessModelNotificationSettings()

-   ## Method Details

    -   ### isCustomSettings

        public boolean isCustomSettings()

    -   ### setCustomSettings

        public void setCustomSettings(boolean customSettings\_)

    -   ### isNotifyInitiator

        public boolean isNotifyInitiator()

    -   ### setNotifyInitiator

        public void setNotifyInitiator(boolean notifyInitiator\_)

    -   ### isNotifyOwner

        public boolean isNotifyOwner()

    -   ### setNotifyOwner

        public void setNotifyOwner(boolean notifyOwner\_)

    -   ### isNotifyRecipientsInExpression

        public boolean isNotifyRecipientsInExpression()

    -   ### setNotifyRecipientsInExpression

        public void setNotifyRecipientsInExpression(boolean notifyRecipientsInExpression\_)

    -   ### isNotifyUsersAndGroups

        public boolean isNotifyUsersAndGroups()

    -   ### setNotifyUsersAndGroups

        public void setNotifyUsersAndGroups(boolean notifyUsersAndGroups\_)

    -   ### getUsersAndGroups

        public [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] getUsersAndGroups()

    -   ### setUsersAndGroups

        public void setUsersAndGroups([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] people\_)

    -   ### getRecipientsExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getRecipientsExpression()

    -   ### setRecipientsExpression

        public void setRecipientsExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") recipientsExpression\_)

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Description copied from interface: `[AppianTypeHolder](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))`

        If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache. Later, the cache will populate itself with the display strings that correspond to all of its ids, such as "Human Resources" for group 9.

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - cache of Appian-typed objects.