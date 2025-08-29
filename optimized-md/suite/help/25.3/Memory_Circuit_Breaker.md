---
source_url: https://docs.appian.com/suite/help/25.3/Memory_Circuit_Breaker.html
original_path: Memory_Circuit_Breaker.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Memory Circuit Breaker

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Expressions that use a large amount of memory can cause performance problems, both for that particular expression and possibly even the system as a whole. To prevent this, the **Memory Circuit Breaker** will automatically detect expressions that use too much memory and abort those evaluations to prevent the application server from running out of resources. Only the offending expression fails when the circuit breaker is tripped, allowing all other evaluations to complete successfully.

The threshold for the **Memory Circuit Breaker** is set at 100,000 AMUs, though that may change in the future. Based on our analysis of actual expression evaluations, this would abort less than 0.01% of all expression evaluations. This threshold is constant regardless of the max heap space configurations for your site, so the only way to avoid the circuit breaker is to modify your design.

It is important to design expressions to limit their memory footprint to ensure they will always evaluate successfully. All functions will use some amount of memory during evaluation, but some design patterns will use more memory than others or retain that memory for a longer period of time.

For more information, see [Diagnosing memory issues](testing-expressions.html#diagnosing-memory-issues) and [Designing memory-efficient expressions](expressions-best-practices.html#designing-memory-efficient-expressions).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...