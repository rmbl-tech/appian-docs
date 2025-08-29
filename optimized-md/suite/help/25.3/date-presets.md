---
source_url: https://docs.appian.com/suite/help/25.3/date-presets.html
original_path: date-presets.html
version: "25.3"
title: "Filter by Date Presets"
page_id: "date-presets"
section: "Feedback"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Filter by Date Presets

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

When you configure a filter in the [query editor](using-the-query-editor.html), in a [chart](Chart_Configuration_Using_Records.html), or in a [custom record field](custom-record-fields.html), you can filter any Date or Date and Time fields by a date preset.

Date presets allow you to dynamically filter your data based on a selected time frame.

For example, if you select the date preset **Today**, the filter value will update each day to reflect the correct date. When you use a date preset, all date and time values are returned in Greenwich Mean Time (GMT).

The table below lists the available date presets for Date and Date and Time fields. To ensure you're selecting the correct date preset, review the underlying expression associated with each preset.

| Field Type | Operator | Date Preset | Underlying Expression | Example (If today is September 24, 2021) |
| --- | --- | --- | --- | --- |
| Date | \=, <>, >, >=, <, <= | Today |
`today()`

 | 9/24/2021 |
| Date | \=, <>, >, >=, <, <= | Yesterday |

`today()-1`

 | 9/23/2021 |
| Date | \=, <>, >, >=, <, <= | Day Before Yesterday |

`today() -2`

 | 9/22/2021 |
| Date | \=, <>, >, >=, <, <= | Today Last Week |

`today() - 7`

 | 9/17/2021 |
| Date | \=, <>, >, >=, <, <= | Today Last Month |

`date(year(eomonth(today(), -1)), month(eomonth(today(), -1)), day(today()))`

 | 8/24/2021 |
| Date | \=, <>, >, >=, <, <= | Today Last Year |

`edate(today(), -12)`

 | 9/24/2020 |
| Date | Date Range | Week-to-Date (From Monday of the Current Week) |

`{today() - weekday(today(), 2) + 1, today()}`

 | {9/20/2021, 9/24/2021} |
| Date | Date Range | Week-to-Date (From Sunday of the Current Week) |

`{today() - weekday(today(), 1) + 1, today()}`

 | {9/19/2021, 9/24/2021} |
| Date | Date Range | Previous Week-to-Date (From Monday to Today of the Previous Week) |

`{todate(today() - 7 - weekday(today(), 2) + 1), today() - 7 }`

 | {9/13/2021, 9/17/2021} |
| Date | Date Range | Previous Week-to-Date (From Sunday to Today of the Previous Week) |

`{todate(today() - 7 - weekday(today(), 1) + 1), today() - 7 }`

 | {9/12/2021, 9/17/2021} |
| Date | Date Range | Month-to-Date |

`{eomonth(today(),-1) + 1, today()}`

 | {9/1/2021, 9/24/2021} |
| Date | Date Range | Previous Month-to-Date (From Beginning of Last Month to Today Last Month) |

`{eomonth(date(year(eomonth(today(), - 1)), month(eomonth(today(), - 1)), day(today())), - 1) + 1, date(year(eomonth(today(), - 1)), month(eomonth(today(), - 1)), day(today()))}`

 | {8/1/2021, 8/24/2021} |
| Date | Date Range | Month-to-Date Last Year (From Beginning of This Month Last Year to Today Last Year) |

`{eomonth(today(),-13) + 1, edate(today(), -12)}`

 | {9/1/2020, 9/24/2020} |
| Date | Date Range | Year-to-Date |

`{date(year(today()), 1, 1), today()}`

 | {1/1/2021, 9/24/2021} |
| Date | Date Range | Previous Year-to-Date (From Beginning of Last Year to Today Last Year) |

`{date(year(today())-1, 1, 1), edate(today(), -12)}`

 | {1/1/2020, 9/24/2020} |
| Date | Date Range | Beginning of Last Month to Today |

`{eomonth(today(),-2) + 1, today()}`

 | {8/1/2021, 9/24/2021} |
| Date | Date Range | Trailing 3 Months |

`{eomonth(today(),-4) + 1, eomonth(today(),-1)}`

 | {6/1/2021, 8/31/2021} |
| Date | Date Range | Trailing 6 Months |

`{eomonth(today(),-7) + 1, eomonth(today(),-1)}`

 | {3/1/2021, 8/31/2021} |
| Date | Date Range | Trailing 9 Months |

`{eomonth(today(),-10) + 1, eomonth(today(),-1)}`

 | {12/1/2020, 8/31/2021} |
| Date | Date Range | Trailing 12 Months |

`{eomonth(today(),-13) + 1, eomonth(today(),-1)}`

 | {9/1/2020, 8/31/2021} |
| Date | Date Range | Trailing 18 Months |

`{eomonth(today(),-19) + 1, eomonth(today(),-1)}`

 | {3/1/2020, 8/31/2021} |
| Date and Time | \=, <>, >, >=, <, <= | Today: Current Time |

`now()`

 | 9/24/2021 2:30 PM GMT+00:00 |
| Date and Time | \=, <>, >, >=, <, <= | Today: Beginning of the Day |

`todatetime(today())`

 | 9/24/2021 12:00 AM GMT+00:00 |
| Date and Time | \=, <>, >, >=, <, <= | Yesterday: Current Time That Day |

`now() - 1`

 | 9/23/2021 2:30 PM GMT+00:00 |
| Date and Time | \=, <>, >, >=, <, <= | Yesterday: Beginning of the Day |

`todatetime(today()-1)`

 | 9/23/2021 12:00 AM GMT+00:00 |
| Date and Time | \=, <>, >, >=, <, <= | Day Before Yesterday: Current Time That Day |

`now() -2`

 | 9/22/2021 2:30 PM GMT+00:00 |
| Date and Time | \=, <>, >, >=, <, <= | Day Before Yesterday: Beginning of the Day |

`todatetime(today()-2)`

 | 9/22/2021 12:00 AM GMT+00:00 |
| Date and Time | Date Range | Today: From Midnight to Current Time |

`{todatetime(today()), now()}`

 | {9/24/2021 12:00 AM GMT+00:00, 9/24/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Yesterday: From Midnight to Current Time That Day |

`{todatetime(today()-1), now()-1}`

 | {9/23/2021 12:00 AM GMT+00:00, 9/23/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Day Before Yesterday: From Midnight to Current Time That Day |

`{todatetime(today()-2), now()-2}`

 | {9/22/2021 12:00 AM GMT+00:00, 9/22/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Week-to-Date (From Monday of the Current Week) |

`{todatetime(today() - weekday(today(), 2) + 1), now()}`

 | {9/20/2021 12:00 AM GMT+00:00, 9/24/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Week-to-Date (From Sunday of the Current Week) |

`{todatetime(today() - weekday(today(), 1) + 1), now()}`

 | {9/19/2021 12:00 AM GMT+00:00, 9/24/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Previous Week-to-Date (From Monday to Today of the Previous Week) |

`{todatetime(today() - 7 - weekday(today(), 2) + 1), now()-7}`

 | {9/13/2021 12:00 AM GMT+00:00, 9/17/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Previous Week-to-Date (From Sunday to Today of the Previous Week) |

`{todatetime(today() - 7 - weekday(today(), 1) + 1), now()-7}`

 | {9/12/2021 12:00 AM GMT+00:00, 9/17/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Month-to-Date |

`{todatetime(eomonth(today(),-1) + 1), now()}`

 | {9/1/2021 12:00 AM GMT+00:00, 9/24/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Previous Month-to-Date (From Beginning of Last Month to Today Last Month) |

`{todatetime(eomonth(date(year(eomonth(today(), - 1)), month(eomonth(today(), - 1)), day(today())), - 1) + 1), datetime(year(eomonth(today(), - 1)), month(eomonth(today(), - 1)), day(today()), hour(now()), minute(now()), second(now()), milli(now()))}`

 | {8/1/2021 12:00 AM GMT+00:00, 8/24/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Year-to-Date |

`{datetime(year(today()), 1, 1), now()}`

 | {1/1/2021 12:00 AM GMT+00:00, 9/24/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Month-to-Date Last Year (From Beginning of This Month Last Year to Today Last Year) |

`{todatetime(eomonth(today(),-13) + 1), if(isleapyear(year(now())), now() - 366, now() - 365)}`

 | {9/1/2020 12:00 AM GMT+00:00, 9/24/2020 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Previous Year-to-Date (From Beginning of Last Year to Today Last Year) |

`{datetime(year(today()) - 1, 1, 1), edate(today(), - 12) + (now() - today())}`

 | {1/1/2020 12:00 AM GMT+00:00, 9/24/2020 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Beginning of Last Month to Today |

`{todatetime(eomonth(today(),-2) + 1), now()}`

 | {8/1/2021 12:00 AM GMT+00:00, 9/24/2021 2:30 PM GMT+00:00} |
| Date and Time | Date Range | Trailing 3 Months |

`todatetime({eomonth(today(),-4) + 1, eomonth(today(),-1) + 1})`

 | {6/1/2021 12:00 AM GMT+00:00, 9/1/2021 12:00 AM GMT+00:00} |
| Date and Time | Date Range | Trailing 6 Months |

`todatetime({eomonth(today(),-7) + 1, eomonth(today(),-1) + 1})`

 | {3/1/2021 12:00 AM GMT+00:00, 9/1/2021 12:00 AM GMT+00:00} |
| Date and Time | Date Range | Trailing 9 Months |

`todatetime({eomonth(today(),-10) + 1, eomonth(today(),-1) + 1})`

 | {12/1/2020 12:00 AM GMT+00:00, 9/1/2021 12:00 AM GMT+00:00} |
| Date and Time | Date Range | Trailing 12 Months |

`todatetime({eomonth(today(),-13) + 1, eomonth(today(),-1) + 1})`

 | {9/1/2020 12:00 AM GMT+00:00, 9/1/2021 12:00 AM GMT+00:00} |
| Date and Time | Date Range | Trailing 18 Months |

`todatetime({eomonth(today(),-19) + 1, eomonth(today(),-1) + 1})`

 | {3/1/2020 12:00 AM GMT+00:00, 9/1/2021 12:00 AM GMT+00:00} |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...