---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_rand.html
original_path: fnc_mathematical_rand.html
version: "25.3"
title: "rand() Function"
page_id: "fnc_mathematical_rand"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# rand() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**rand**( _count_ )

Returns a random number between 0 and 1 based on an even probability distribution, which is seeded by the transaction time.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`count`

 |

_Integer_

 |

The number of random numbers to be returned.

 |

## Returns

Decimal

## Usage considerations

If multiple transactions take place at the same time, the following expression can be used to further randomize the result: `todecimal(text(rand()*(10^6),"000000"))`

The maximum value for `count` is `1,000,000`.

## Examples

`rand()` returns `0.1429158`

`rand(2)` returns `{0.372094, 0.829343}`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...