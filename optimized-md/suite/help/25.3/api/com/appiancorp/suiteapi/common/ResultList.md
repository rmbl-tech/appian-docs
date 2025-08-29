---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/ResultList.html
original_path: api/com/appiancorp/suiteapi/common/ResultList.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class ResultList

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Result](Result.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.common.ResultList

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ResultList extends [Result](Result.html "class in com.appiancorp.suiteapi.common")

Class for storing the results returned by a service call. Service methods that return a `ResultList` will return successfully even if some of the requested entities cannot be retrieved on the server (unlike methods which return a `ResultPage`, which throw an exception if any one of the requested entities cannot be retrieved). The results that were successfully retrieved by the service call can be accessed using the [`Result.getResults()`](Result.html#getResults\(\)) method of the `Result` base class. Additionally, [`getResultCodes()`](#getResultCodes\(\)) can be used to retrive the list of result codes that represent the successful retrieval of an entity, or, if the entity could not be retrieved on the server, the reason for the failure. Some possible result codes are defined by this class, although individual methods may list separate result codes. Every service method that returns a `ResultList` should document the code constants that are returned by that specific call.

See Also:

-   [`Result`](Result.html "class in com.appiancorp.suiteapi.common")
-   [`ResultPage`](ResultPage.html "class in com.appiancorp.suiteapi.common")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.ResultList)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[CODE_INVALID](#CODE_INVALID)`

    Constant indicating that a particular result in the `ResultList` is invalid (typically, there is no entity in the database which corresponds to the given ID).

    `static final int`

    `[CODE_NO_PERMISSION](#CODE_NO_PERMISSION)`

    Constant indicating that the user does not have sufficient privilege to view a particular result in the `ResultList`.

    `static final int`

    `[CODE_SUBPROCESS_CANNOT_PUBLISH](#CODE_SUBPROCESS_CANNOT_PUBLISH)`

    Constant indicating that user does not permission to publish a subprocess within the process model.

    `static final int`

    `[CODE_SUBPROCESS_INVALID](#CODE_SUBPROCESS_INVALID)`

    Constant indicating that the subprocess within a process model is invalid and hence cannot be published.

    `static final int`

    `[CODE_VALID](#CODE_VALID)`

    Constant indicating that a particular result in the `ResultList` is valid.

    `static final int`

    `[COLLAB_CODE_CAN_ADMINISTRATE](#COLLAB_CODE_CAN_ADMINISTRATE)`

    Constant used in the collaboration application, which indicates that the user has administrator privileges to a particular result in the `ResultList`.

    `static final int`

    `[COLLAB_CODE_CAN_EDIT](#COLLAB_CODE_CAN_EDIT)`

    Constant used in the collaboration application, which indicates that the user has editor privileges to a particular result in the `ResultList`.

    `static final int`

    `[PORTAL_CODE_CAN_ADMINISTRATE](#PORTAL_CODE_CAN_ADMINISTRATE)`

    Constant used in the portal application, which indicates that the user has administrator privileges to a particular result in the `ResultList`.

    `static final int`

    `[PORTAL_CODE_CAN_EDIT](#PORTAL_CODE_CAN_EDIT)`

    Constant used in the portal application, which indicates that the user has editor privileges to a particular result in the `ResultList`.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ResultList](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getResultCodes](#getResultCodes\(\))()`

    Returns the result codes for each of the requested ids.

    `void`

    `[setResultCodes](#setResultCodes\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] resultCodes_)`

    See [`getResultCodes()`](#getResultCodes\(\)).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Result](Result.html "class in com.appiancorp.suiteapi.common")

    `[getNumResults](Result.html#getNumResults\(\)), [getResults](Result.html#getResults\(\)), [setResults](Result.html#setResults\(java.lang.Object%5B%5D\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### COLLAB\_CODE\_CAN\_ADMINISTRATE

        public static final int COLLAB\_CODE\_CAN\_ADMINISTRATE

        Constant used in the collaboration application, which indicates that the user has administrator privileges to a particular result in the `ResultList`.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ResultList.COLLAB_CODE_CAN_ADMINISTRATE)

    -   ### COLLAB\_CODE\_CAN\_EDIT

        public static final int COLLAB\_CODE\_CAN\_EDIT

        Constant used in the collaboration application, which indicates that the user has editor privileges to a particular result in the `ResultList`.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ResultList.COLLAB_CODE_CAN_EDIT)

    -   ### PORTAL\_CODE\_CAN\_ADMINISTRATE

        public static final int PORTAL\_CODE\_CAN\_ADMINISTRATE

        Constant used in the portal application, which indicates that the user has administrator privileges to a particular result in the `ResultList`.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ResultList.PORTAL_CODE_CAN_ADMINISTRATE)

    -   ### PORTAL\_CODE\_CAN\_EDIT

        public static final int PORTAL\_CODE\_CAN\_EDIT

        Constant used in the portal application, which indicates that the user has editor privileges to a particular result in the `ResultList`.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ResultList.PORTAL_CODE_CAN_EDIT)

    -   ### CODE\_NO\_PERMISSION

        public static final int CODE\_NO\_PERMISSION

        Constant indicating that the user does not have sufficient privilege to view a particular result in the `ResultList`.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ResultList.CODE_NO_PERMISSION)

    -   ### CODE\_INVALID

        public static final int CODE\_INVALID

        Constant indicating that a particular result in the `ResultList` is invalid (typically, there is no entity in the database which corresponds to the given ID).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ResultList.CODE_INVALID)

    -   ### CODE\_VALID

        public static final int CODE\_VALID

        Constant indicating that a particular result in the `ResultList` is valid.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ResultList.CODE_VALID)

    -   ### CODE\_SUBPROCESS\_CANNOT\_PUBLISH

        public static final int CODE\_SUBPROCESS\_CANNOT\_PUBLISH

        Constant indicating that user does not permission to publish a subprocess within the process model.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ResultList.CODE_SUBPROCESS_CANNOT_PUBLISH)

    -   ### CODE\_SUBPROCESS\_INVALID

        public static final int CODE\_SUBPROCESS\_INVALID

        Constant indicating that the subprocess within a process model is invalid and hence cannot be published.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.ResultList.CODE_SUBPROCESS_INVALID)

-   ## Constructor Details

    -   ### ResultList

        public ResultList()

-   ## Method Details

    -   ### getResultCodes

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getResultCodes()

        Returns the result codes for each of the requested ids. Each code represents the successful retrieval of an object, or, if the object could not be retrieved, the reason for the failure. Some possible result codes are defined by this class, although individual methods may list separate result codes. Every service method that returns a `ResultList` should document the code constants that are returned by that specific call.

        Returns:

        The result codes for each of the requested ids

        See Also:

        -   [`setResultCodes(Integer[])`](#setResultCodes\(java.lang.Integer%5B%5D\))

    -   ### setResultCodes

        public void setResultCodes([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] resultCodes\_)

        See [`getResultCodes()`](#getResultCodes\(\)).

        Parameters:

        `resultCodes_` - The result codes for each of the requested ids.

        See Also:

        -   [`getResultCodes()`](#getResultCodes\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](Result.html#toString\(\))` in class `[Result](Result.html "class in com.appiancorp.suiteapi.common")`