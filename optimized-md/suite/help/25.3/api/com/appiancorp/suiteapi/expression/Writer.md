---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/Writer.html
original_path: api/com/appiancorp/suiteapi/expression/Writer.html
version: "25.3"
title: "Interface Writer"
page_id: "api/com/appiancorp/suiteapi/expression/Writer"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.expression](package-summary.html)

# Interface Writer

* * *

public interface Writer

The Writer is used for writing values to External Systems during the Save process of a SAIL expression re-evaluation. Implementations should take configuration information and the value to be saved as parameters to a constructor. This configuration information and the value to be stored should then be used within the execute method to send the update to the external system. Writer objects are passed to the Appian system using an Expression Function Plugin. These expression functions should be implemented in the same way as other Appian Expression Function Plugins. An example that returns a writer to an imaginary "Example" system is shown below. `public class ExampleWriter implements Writer { private String systemName; private String value; public ExampleWriter(String systemName, String value) { this.systemName = systemName; this.value = value; }`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `void`

    `[execute](#execute\(\))()`

    The method that will be called after the save phase of a SAIL expression re evaluation.

-   ## Method Details

    -   ### execute

        void execute()

        The method that will be called after the save phase of a SAIL expression re evaluation. This method takes no parameters. It expects all information required to make the update to be passed in before being returned to the Appian expression framework. This method is gauranteed to only be called once. There is no return value, so any error that occurs while trying to execute the update should result in an Exception being thrown. The Appian expression framework will catch this exception and log it as an Error in the server log. Note that an Exception from this method **will not** stop expression evaluation. If multiple Writer objects are created during the save phase they will all be executed in the order of creation.