---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/MessageHolder.html
original_path: api/com/appiancorp/suiteapi/process/framework/MessageHolder.html
version: "25.3"
title: "Interface MessageHolder"
page_id: "api/com/appiancorp/suiteapi/process/framework/MessageHolder"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Interface MessageHolder

All Known Implementing Classes:

`[StrutsMessageHolder](StrutsMessageHolder.html "class in com.appiancorp.suiteapi.process.framework")`

* * *

public interface MessageHolder

Interface to hold error messages.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addError](#addError\(com.appiancorp.web.framework.kernel.main.ActionMessage\))(com.appiancorp.web.framework.kernel.main.ActionMessage error_)`

    Adds an error using the default bundle for this Action.

-   ## Method Details

    -   ### addError

        void addError(com.appiancorp.web.framework.kernel.main.ActionMessage error\_)

        Adds an error using the default bundle for this Action. Bundles are associated to actions by the package of the concrete action class.

        Parameters:

        `error_` - the `ActionError` representing the error