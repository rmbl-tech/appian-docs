---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/ActivityParameterHelper.html
original_path: api/com/appiancorp/suiteapi/process/framework/ActivityParameterHelper.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Interface ActivityParameterHelper

All Superinterfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

All Known Implementing Classes:

`[EmptyActivityParameterHelper](EmptyActivityParameterHelper.html "class in com.appiancorp.suiteapi.process.framework")`

* * *

public interface ActivityParameterHelper extends [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Classes that implement this interface provide additional functionality for passing parameters to and receiving parameters from a user interface.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[createExtraOutputMap](#createExtraOutputMap\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] acps_)`

    Produce an output map that contains values used in populating the user interface that are not passed to the UI by default.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[inputMapToExtraParameters](#inputMapToExtraParameters\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") fromRequest_)`

    Convert an input map containing all the input parameters into an object containing only the parameters that are both necessary for the activity to execute and that are not converted by default.

    `boolean`

    `[validate](#validate\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,java.lang.Object,boolean,com.appiancorp.services.ServiceContext,com.appiancorp.suiteapi.process.framework.MessageHolder\))([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] acps_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters_, boolean isSubmit_, [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, [MessageHolder](MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework") errorHolder_)`

    Validate user input.

-   ## Method Details

    -   ### validate

        boolean validate([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] acps\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters\_, boolean isSubmit\_, [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, [MessageHolder](MessageHolder.html "interface in com.appiancorp.suiteapi.process.framework") errorHolder\_)

        Validate user input. This method will execute after user-entered values are pushed into `ActivityClassParameter[]`. The framework guarantees that all values are the correct types. Return `true` if there are no validation errors; otherwise, return `false`. Validation error messages to be displayed to the user should be stored on the relevant `ActivityClassParameter`.

        Parameters:

        `acps_` - The parameters.

        `extraParameters_` - The output from `inputMapToExtraParameters()`.

        `isSubmit_` - `true` if the task is being submitted for completion, `false` if the task is simply being saved for completion later. Validations performed if the task is being submitted may not need to be performed if it is simply being saved.

        `sc_` - the service context of the current user.

        `errorHolder_` - a way to add error messages to the appianwebmvc action that called this method.

        Returns:

        `true` if there are no validation errors; otherwise, `false`.

    -   ### createExtraOutputMap

        [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") createExtraOutputMap([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] acps\_)

        Produce an output map that contains values used in populating the user interface that are not passed to the UI by default. Any value specified as an `ActivityClassParameter` is passed by default. If there are no extra values to populate, the returned map should be empty. The primary intended use of this method is to pass enumerations meant to be rendered as a select box or radio buttons or some other form of widget that allows choosing from a list of alternatives.

        Parameters:

        `acps_` - The parameters.

        Returns:

        The map of output values.

    -   ### inputMapToExtraParameters

        [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") inputMapToExtraParameters([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") fromRequest\_)

        Convert an input map containing all the input parameters into an object containing only the parameters that are both necessary for the activity to execute and that are not converted by default. Any parameter that corresponds to an `ActivityClassParameter` is converted by default. If there are no extra parameters, the method should return `null`. The primary intended use of this method is for handling files submitted via the browser.

        Parameters:

        `fromRequest_` - The map of input parameters.

        Returns:

        The extra activity parameters.