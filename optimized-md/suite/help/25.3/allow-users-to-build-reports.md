---
source_url: https://docs.appian.com/suite/help/25.3/allow-users-to-build-reports.html
original_path: allow-users-to-build-reports.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data Fabric Insights

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

Welcome to data fabric insights in Process HQ

Learn how business users can explore their enterprise data and build self-service reports and dashboards using your data fabric.

## Overview

[Appian's data fabric](data-fabric.html) allows developers to unify, secure, and optimize data spread across the enterprise. With this unified data architecture, you can quickly build modern, data-driven applications that automate your business. But it's not just developers who benefit from a unified data fabric. _Data fabric insights_ extends the power of data fabric to business users.

**Tip:**  If you're already familiar with data fabric insights, you can skip right to [getting started](#get-started).

## About data fabric insights

Data fabric insights allows business users to securely explore their data fabric and build custom [reports](#reports) and [dashboards](#dashboards) with Process HQ.

Users can browse a catalog of [datasets](#datasets)—secured by record type security and record-level security—and quickly design [reports](#reports) to fit their business needs. Users can partner with [Appian AI Copilot](#ai-copilot) to:

-   [Ask questions of any of their datasets](#ai-copilot-for-data-fabric) from the data catalog.
-   [Dig deeper into their reports](#ai-copilot-for-reports) by using AI-generated insights to identify patterns, trends, and outliers.

Users can combine reports into a unified dashboard. Once they finish building their reports and dashboards, users can save them for future exploration, download their charts as images, or export their grids to Microsoft Excel.

All saved reports and dashboards are easily accessible from the [Process HQ home page](process-hq-landing-page.html), where users can view, duplicate, and share reports and dashboards.

**Tip:**  Users can also access the Process HQ [Reports and Dashboards library](process-hq-landing-page.html) in [Appian Sites](sites_object.html). Process HQ pages in sites have the same access requirements as the Process HQ workspace.

## Datasets

As a developer, you're familiar with the record type and how [relationships](record-type-relationships.html) and [record type security](appian-records-security.html) let you access data from the record type and its related record types. To business users, we use _datasets_ to represent this same capability so they don't need as much familiarity with the technical details of your data fabric.

Each dataset is made up of a record type and its one-to-one and many-to-one related record types. For example, the image below illustrates the **Customers** dataset, where the Customer record type is the base record type. Based on the one-to-one and many-to-one relationships configured on the Customer record type, this dataset would include data from the **Customers**, **Districts**, **Addresses**, and **Credit Cards** record types.

[![images/customerDataset.png](images/customerDataset.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img762)

[![](images/customerDataset.png)](#_)

A dataset will _not_ include data from one-to-many relationships. So if the Customer record type has a one-to-many relationship to the Order record type, it would not appear in the Customers dataset. Instead, a user could explore order and customer data together using the **Orders** dataset, so long as the Order record type has a relationship to the Customer record type.

[![images/orderDataset.png](images/orderDataset.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img763)

[![](images/orderDataset.png)](#_)

### Dataset details

Users can learn more about a dataset by hovering over the vendor logos. The following image highlights the elements that make up a dataset:

[![images/annotatedDataset.png](images/annotatedDataset.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img764)

[![](images/annotatedDataset.png)](#_)

|
#

 |

Element

 |
| --- | --- |
|

1

 |

The data source of the base record type, represented by the vendor logo. In the example above, the Appian logo represents the Appian Cloud database. Users can hover over the logo to see the source type and the source name of the base record type.

 |
|

2

 |

The number of rows in the base record type as of the last [full sync](records-data-sync.html#schedule-full-syncs).

 |
|

3

 |

The number of data sources included in the dataset. This number includes the data source of the base record type.

 |
|

4

 |

The data source of each related record type, grouped by vendor. Only the unique vendor logos will display here. Users can hover over each logo to see which data comes from each source.

 |

## Reports

Business users can further explore and analyze data by building custom reports using the [record data curated by developers](prepare-data-for-reports.html).

Report creators can [create a report](manage-reports-and-dashboards.html#create-a-report) directly from a dataset, or using a more guided experience to pick the data and design of their report.

Then, report creators can:

-   [Design, filter, and sort report data](manage-reports-and-dashboards.html#design-filter-and-sort-report-data).
-   [Add interactive elements](manage-reports-and-dashboards.html#add-interactive-elements).
-   [Save and share a report with report viewers](manage-reports-and-dashboards.html#share-a-report-or-dashboard).

Learn more about [creating and managing reports](manage-reports-and-dashboards.html).

## Dashboards

Users can tell a complete story with their data by combining their custom reports, reports shared with them, and [process KPIs](process-custom-kpis.html) they can access into a comprehensive dashboard.

### Add interactive elements

Every chart in a custom report is interactive. Users can click on sections of the chart to quickly filter the report data. Or, report creators can configure a drilldown report so users can click the chart to drill down into more details.

[![images/interactive-report-chart.gif](images/interactive-report-chart.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img765)

[![](images/interactive-report-chart.gif)](#_)

Report creators can add more design elements that let report viewers interact with the data and take action from the context of the report.

These design elements include:

[![images/report_designElements_25_3.png](images/report_designElements_25_3.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img766)

[![](images/report_designElements_25_3.png)](#_)

|
#

 |

Design Element

 |

Description

 |
| --- | --- | --- |
|

1

 |

Quick Filters

 |

Display interactive filters on a report so report viewers can filter the data to best fit their needs.

[User filters](filter-the-record-list.html#user-filters) configured on the record type are not available in reports in Process HQ.

 |
|

2

 |

Actions

 |

Display [record actions](prepare-data-for-reports.html#record-actions) from the base record type in a grid header.

 |
|

3

 |

Link to Row Details

 |

Displays a link to the record’s [summary view](prepare-data-for-reports.html#summary-view) in a grid. This option will only provide links to records in the base record type; it cannot provide links to related records.

The summary view page is determined by the default start page configured in the [Admin Console.](Appian_Administration_Console.html)

 |
|

4

 |

Show Export or Download Button

 |

Depending on the selected design:

-   Displays an export to Excel button on a grid design. The data will download as a `.xlsx` file.
-   Displays an image download button on a chart design. The image will download as a `PNG` file.

 |
|

5

 |

Drilldown Reports

 |

Select a **Drilldown Report** that's based on the same dataset. When users click a section of the chart, they'll see the selected drilldown report with the data filtered by the section of the chart they clicked.

 |

### Save and share a report

Once report creators finish building a report, they can save it for future exploration. By default, a report is only available to the user who created it.

To collaborate across the organization, report creators can [share their reports](manage-reports-and-dashboards.html#share-a-report-or-dashboard) with colleagues in the [**Data Fabric Report Creators**](System_Groups.html#data-fabric-report-creators) system group.

## AI Copilot

Users can gain new insights into their data by asking questions to [Appian AI Copilot](appian-ai-copilot.html). Users get faster, real-time insights into their data without relying on a human being to find and analyze the data for them.

**Note:**  AI tools are primarily designed for language-based tasks, such as generating text, answering questions, or providing insights. While AI Copilot for data fabric can assist with obtaining numerical answers, other AI Copilot tools are not optimized for performing precise mathematical calculations or for scenarios that require numerical accuracy.

These capabilities are only available in [select regions](security-compliance.html#ai-copilot-regional-availability). If your Appian environment is in an unsupported region, you can choose to send your data to a supported region. This won't change your environment's region. For more information, contact [Appian Support](https://forum.appian.com/).

**Tip:**  To use this feature in your environment, enable it in the [Admin Console](Appian_Administration_Console.html#process-hq).

### AI Copilot for data fabric

In the [**Data Catalog**](data-catalog-page.html), users can ask AI Copilot to filter or analyze data from any dataset. For example:

-   **Filter**: What cases have been created this year?
-   **Analyze**: How many of those cases are open?

Users don't need to know which dataset contains the information they're looking for in order to get started. Instead, they just click **AI COPILOT** and ask their question in their own words. AI Copilot queries the appropriate dataset to provide insights from the available information. The response also includes information about how AI Copilot arrived at its answer, ensuring trust and accuracy.

[![images/ai-copilot-df.gif](images/ai-copilot-df.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img767)

[![](images/ai-copilot-df.gif)](#_)

AI Copilot can interpret questions and provide answers in many languages, in addition to English. As with all generative AI, you may experience a range of responses depending on factors like language, phrasing, and complexity of the request. If you ask a question that references a field value, we recommend wrapping that literal value in quotation marks so AI Copilot is able to reference it. For example, if your record data is in English, you would format a question in Spanish as: `¿Cuantos casos están "Open"?`.

### AI Copilot for reports

Users can ask AI Copilot questions about their **reports**, or select from a list of suggested questions to discover potential areas of improvements and next steps. AI Copilot can only analyze aggregate data in a report. AI Copilot is available for reports that involve grouped data or basic calculations, such as sum, count, or average. It is not intended for performing precise mathematical calculations or for scenarios that require numerical accuracy.

[![images/dfi-report-ai-copilot-25_2.png](images/dfi-report-ai-copilot-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img768)

[![](images/dfi-report-ai-copilot-25_2.png)](#_)

**Tip:**  AI Copilot can only assist users in understanding their custom-built reports; it can't build reports for them.

## Get started

Developers can allow users to access data fabric insights and build custom reports and dashboards, using the following steps:

-   [Add users as report creators](secure-records-for-reporting.html#add-users-as-report-creators).
-   [Choose which record types are available as datasets in Process HQ](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets).
-   [Review security on those record types](secure-records-for-reporting.html#review-security-on-record-types).
-   [Prepare data for data fabric insights](prepare-data-for-reports.html).

To allow users to access data fabric insights from an [Appian Site](Sites.html), [add a Reports and Dashboards Library page](sites_object.html#add-a-page).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...