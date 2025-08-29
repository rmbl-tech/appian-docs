---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/EmptyActivityParameterHelper.html
original_path: api/com/appiancorp/suiteapi/process/framework/EmptyActivityParameterHelper.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Class EmptyActivityParameterHelper

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.framework.EmptyActivityParameterHelper

All Implemented Interfaces:

`[ActivityParameterHelper](ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class EmptyActivityParameterHelper extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [ActivityParameterHelper](ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework")

This class provides default, do-nothing implementations of all `ActivityParameterHelper` methods. It can be extended with only the relevant methods overridden.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.framework.EmptyActivityParameterHelper)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[EmptyActivityParameterHelper](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[createExtraOutputMap](#createExtraOutputMap\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] acps_)`

    Default do-nothing implementation.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[inputMapToExtraParameters](#inputMapToExtraParameters\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") fromRequest_)`

    Default do-nothing implementation.

    `boolean`

    `[validate](#validate\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,java.lang.Object,boolean,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.process.framework.MessageHolder\))([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] acps_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters_, boolean isSubmit_, [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, [MessageHolder](MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework") errorHolder_)`

    Default do-nothing implementation.

    `boolean`

    `[validate](#validate\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,java.lang.Object,boolean,com.appiancorp.suiteapi.personalization.User\))([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] acps_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters_, boolean isSubmit_, [User](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization") user_)`

    Deprecated. 

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### EmptyActivityParameterHelper

        public EmptyActivityParameterHelper()

-   ## Method Details

    -   ### createExtraOutputMap

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") createExtraOutputMap([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] acps\_)

        Default do-nothing implementation.

        Specified by:

        `[createExtraOutputMap](ActivityParameterHelper.html#createExtraOutputMap\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))` in interface `[ActivityParameterHelper](ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework")`

        Parameters:

        `acps_` - the parameters.

        Returns:

        an empty `java.util.HashMap`.

        See Also:

        -   [`ActivityParameterHelper.createExtraOutputMap(com.appiancorp.suiteapi.process.ActivityClassParameter[])`](ActivityParameterHelper.html#createExtraOutputMap\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))

    -   ### inputMapToExtraParameters

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") inputMapToExtraParameters([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") fromRequest\_)

        Default do-nothing implementation.

        Specified by:

        `[inputMapToExtraParameters](ActivityParameterHelper.html#inputMapToExtraParameters\(java.util.Map\))` in interface `[ActivityParameterHelper](ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework")`

        Parameters:

        `fromRequest_` - the map of input parameters

        Returns:

        `null`

        See Also:

        -   [`ActivityParameterHelper.inputMapToExtraParameters(java.util.Map)`](ActivityParameterHelper.html#inputMapToExtraParameters\(java.util.Map\))

    -   ### validate

        public boolean validate([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] acps\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters\_, boolean isSubmit\_, [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, [MessageHolder](MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework") errorHolder\_)

        Default do-nothing implementation.

        Specified by:

        `[validate](ActivityParameterHelper.html#validate\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,java.lang.Object,boolean,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.process.framework.MessageHolder\))` in interface `[ActivityParameterHelper](ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework")`

        Parameters:

        `acps_` - The parameters.

        `extraParameters_` - The output from `inputMapToExtraParameters()`.

        `isSubmit_` - `true` if the task is being submitted for completion, `false` if the task is simply being saved for completion later. Validations performed if the task is being submitted may not need to be performed if it is simply being saved.

        `sc_` - The service context of the current user.

        `errorHolder_` - A way for the implementation to add error messages as though it were a part of the calling action.

        Returns:

        `true`

        See Also:

        -   [`ActivityParameterHelper.validate(com.appiancorp.suiteapi.process.ActivityClassParameter[], java.lang.Object, boolean, com.appiancorp.services.ServiceContext, com.appiancorp.suiteapi.process.framework.MessageHolder)`](ActivityParameterHelper.html#validate\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,java.lang.Object,boolean,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.process.framework.MessageHolder\))

    -   ### validate

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public boolean validate([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] acps\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters\_, boolean isSubmit\_, [User](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization") user\_)

        Deprecated.

        Parameters:

        `acps_` -

        `extraParameters_` -

        `isSubmit_` -

        `user_` -

        Returns: