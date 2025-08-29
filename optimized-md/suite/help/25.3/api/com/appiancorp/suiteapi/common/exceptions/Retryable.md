---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/Retryable.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/Retryable.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Interface Retryable

All Known Implementing Classes:

`[RetryableActivityExecutionException](../../process/framework/RetryableActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")`, `[RetryableAppianException](RetryableAppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[RetryableAppianRuntimeException](RetryableAppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[RetryableSmartServiceException](../../process/exceptions/RetryableSmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")`

* * *

public interface Retryable

A marker interface indicating that an Exception is transient. It is used when it is reasonable to expect that a previously failed operation could succeed if retried later (e.g. a required resource is temporarily unavailable). Exceptions implementing this interface should only be thrown when the operation has not already had side effects that should not be duplicated.