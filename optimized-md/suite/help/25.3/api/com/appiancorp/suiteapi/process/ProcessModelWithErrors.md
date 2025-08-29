---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessModelWithErrors.html
original_path: api/com/appiancorp/suiteapi/process/ProcessModelWithErrors.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessModelWithErrors

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.ProcessModelWithErrors

* * *

public class ProcessModelWithErrors extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Bean containing a ProcessModel and the errors that were found when trying to publish it.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessModelWithErrors](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getErrorsAndWarnings](#getErrorsAndWarnings\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getInvalidUsers](#getInvalidUsers\(\))()`

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getParentsOfPublishedChildren](#getParentsOfPublishedChildren\(\))()`

    `[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModel](#getProcessModel\(\))()`

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getPublishedChildren](#getPublishedChildren\(\))()`

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getUnpublishableChildren](#getUnpublishableChildren\(\))()`

    `boolean`

    `[isPublished](#isPublished\(\))()`

    `boolean`

    `[isSaved](#isSaved\(\))()`

    `void`

    `[setErrorsAndWarnings](#setErrorsAndWarnings\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] errorsAndWarnings_)`

    `void`

    `[setInvalidUsers](#setInvalidUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] invalidUsers_)`

    `void`

    `[setParentsOfPublishedChildren](#setParentsOfPublishedChildren\(com.appiancorp.suiteapi.common.ResultList\))([ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") parentsOfPublishedChildren_)`

    `void`

    `[setProcessModel](#setProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\))([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") processModel_)`

    `void`

    `[setPublished](#setPublished\(boolean\))(boolean published_)`

    `void`

    `[setPublishedChildren](#setPublishedChildren\(com.appiancorp.suiteapi.common.ResultList\))([ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") publishedChildren_)`

    `void`

    `[setSaved](#setSaved\(boolean\))(boolean saved_)`

    `void`

    `[setUnpublishableChildren](#setUnpublishableChildren\(com.appiancorp.suiteapi.common.ResultList\))([ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") unpublishableChildren_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessModelWithErrors

        public ProcessModelWithErrors()

-   ## Method Details

    -   ### getErrorsAndWarnings

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getErrorsAndWarnings()

    -   ### setErrorsAndWarnings

        public void setErrorsAndWarnings([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errorsAndWarnings\_)

    -   ### getInvalidUsers

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getInvalidUsers()

    -   ### setInvalidUsers

        public void setInvalidUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] invalidUsers\_)

    -   ### getProcessModel

        public [ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") getProcessModel()

    -   ### setProcessModel

        public void setProcessModel([ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process") processModel\_)

    -   ### isPublished

        public boolean isPublished()

    -   ### setPublished

        public void setPublished(boolean published\_)

    -   ### isSaved

        public boolean isSaved()

    -   ### setSaved

        public void setSaved(boolean saved\_)

    -   ### getPublishedChildren

        public [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getPublishedChildren()

    -   ### setPublishedChildren

        public void setPublishedChildren([ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") publishedChildren\_)

    -   ### getParentsOfPublishedChildren

        public [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getParentsOfPublishedChildren()

    -   ### setParentsOfPublishedChildren

        public void setParentsOfPublishedChildren([ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") parentsOfPublishedChildren\_)

    -   ### getUnpublishableChildren

        public [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getUnpublishableChildren()

    -   ### setUnpublishableChildren

        public void setUnpublishableChildren([ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") unpublishableChildren\_)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`