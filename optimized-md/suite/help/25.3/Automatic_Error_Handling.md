---
source_url: https://docs.appian.com/suite/help/25.3/Automatic_Error_Handling.html
original_path: Automatic_Error_Handling.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Automatic Error Handling

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

If a process encounters a problem within a given activity, the process flow halts at the activity. One of two things occur.

1.  If it encounters a safeToRetry exception, it is automatically retried.
    -   If the error was transient, the activity completes and process flow resumes.
    -   If the error is not resolved after the maximum number of retries, the activity becomes canceled by exception.
2.  If it encounters an Activity Execution Exception it becomes canceled by exception.

See also: [Process Errors](Process_Errors.html)

## Automatic Retries

A number of internal and external operations provide error-handling retries to respond automatically should your application or network experience minor disruptions due to time-out errors, such as a very heavy transaction load.

The transaction is only retried when no data has been updated or changed.

### Internal Error Handling

-   If Appian smart services, Scripting functions, People functions, or `xpath*()` functions suffer an internal time-out error with a transaction that can be safely retried, the transaction is retried automatically.
-   Write transactions executed by the [Write to Data Store Entity Smart Service](Write_to_Data_Store_Entity_Smart_Service.html) and [Write to Multiple Data Store Entities Smart Service](Write_to_Multiple_Data_Store_Entities_Smart_Service.html) will be automatically retried if the write fails due to the data being locked by the database.

See also: [Process Nodes and Smart Services](Smart_Services.html) and [Appian Functions](Appian_Functions.html)

### External Error Handling

-   If the [Call Web Service Smart Service](Call_Web_Service_Smart_Service.html) encounters an unavailable web service or a request timeout (503 or 408 error), the activity is automatically retried.
-   If the [Send E-Mail Smart Service](Send_Email_Smart_Service.html) encounters a connection error when trying to send the email, the activity is automatically retried.
-   Transitory errors for the [Query Database Smart Service](Query_Database_Smart_Service.html) are not retried.

### Retry Intervals

Should an error occur, automatic retries occur at approximately the following intervals after each subsequent error. The interval between retries roughly doubles after each attempt.

-   32 seconds
-   64 seconds
-   127 seconds
-   4.5 minutes
-   9 minutes
-   17 minutes
-   34 minutes
-   67 minutes
-   135 minutes
-   4 hours and 30 minutes
-   9 hours
-   18 hours

If the retry that occurs after the last interval fails, no additional retries occur.

It is not possible to predict exactly when a subsequent retry occurs, due to the variable time spent retrying and catching each new error.

## Logging

Retries are logged at the `Debug` level in the engine server logs.

Final retries are logged as errors.

See also: [Application Engine and Gateway Logging](Customizing_Application_Logging.html#application-engine-logging)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...