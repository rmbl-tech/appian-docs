---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/rules/package-summary.html
original_path: api/com/appiancorp/suiteapi/rules/package-summary.html
version: "25.3"
---

# Package com.appiancorp.suiteapi.rules

* * *

package com.appiancorp.suiteapi.rules

Provides rules and constants functionality for use within expressions. These rules and constants are automatically published to the expression servers. This is associated with [`com.appiancorp.suiteapi.content`](../content/package-summary.html). Use [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") to manipulate the content.

The most important classes are [`Rule`](Rule.html "class in com.appiancorp.suiteapi.rules") and its sub-classes, which represent rules and constants.

-   All Classes and InterfacesClassesAnnotation Interfaces

    Class

    Description

    [Constant](Constant.html "class in com.appiancorp.suiteapi.rules")

    Represents a constant, which can be used in expressions throughout the product.

    [ConstantDataType](ConstantDataType.html "annotation interface in com.appiancorp.suiteapi.rules")

    Convenience annotation to indicate a value represents an Appian Object.

    [FreeformRule](FreeformRule.html "class in com.appiancorp.suiteapi.rules")

    Represents a freeform rule, which has a set of parameters and an expression which is run whenever the rule is called.

    [Rule](Rule.html "class in com.appiancorp.suiteapi.rules")

    Represents a rule or a constant in rules (constants are actually a special case of rules).

    [RuleDataType](RuleDataType.html "annotation interface in com.appiancorp.suiteapi.rules")

    Convenience annotation to indicate a value represents an Appian Object.

    [RulesFolder](RulesFolder.html "class in com.appiancorp.suiteapi.rules")

    Represents a folder in the Rules application.