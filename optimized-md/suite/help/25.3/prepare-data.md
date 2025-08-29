---
source_url: https://docs.appian.com/suite/help/25.3/prepare-data.html
original_path: prepare-data.html
version: "25.3"
title: "Prepare Data for Analysis"
page_id: "prepare-data"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Prepare Data for Analysis

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [developers](processhq.html#-developers) and [data stewards](processhq.html#-data-stewards). It describes how to prepare process data for analysis in Process HQ.

## Overview

Business processes come in all shapes and sizes; so does the data you collect about those processes. To get your process data ready for analysis, you'll want to make sure it's simplified, cleaned, and standardized.

Preparing process data for analysis is often one of the most time-consuming and costly aspects of a traditional process mining project. It typically requires the involvement of specialists who understand what makes good data for process analysis—and perhaps another set of specialists who can perform the high-code transformations needed to get the existing data ready for that analysis. Even if transformation scripts are reusable, that work those specialists do results in static data that typically needs to be repeatedly exported from the source and imported into the mining tool.

In contrast, Process HQ sources the data it analyzes directly from [your data fabric](data-fabric.html) and takes advantage of [sync-enabled features](records-data-sync.html) to automate this transformation. As a result, process analysis is continuous and always up-to-date, and data preparation is one low- or even no-code step that lasts for the lifecycle of a process. What's more, Process HQ provides an accelerated path to data enrichment that allows business users to quickly iterate on production data with no-code transformations, leading to better, more actionable insights. This is the true power of having a unified platform for both your business applications and analysis.

If you [configured record events](record-events.html) or if your process data already supports your analytical goals in its current form, you can [deploy your app to the production environment](deploy-to-production.html) without further configuration.

However, if you want to enrich or clean your data, use this page to review the different types of transformations developers and data stewards can do to prepare data for process insights.

## How to prepare data

For the most part, developers can take advantage of [record type relationships](record-type-relationships.html), [custom record fields](custom-record-fields.html), and [sync filters](records-filter-source-data.html#about-sync-filters) to perform most data preparations.

Once your record types have been deployed to production, data stewards can perform any additional transformations to the production data, without the need for re-deployment.

The following table describes what data preparation can be performed by a developer or data steward, and where the data preparations should occur:

|
What

 |

How

 |

Where

 |
| --- | --- | --- |
|

**Developer**

 |
|

[Keep data under the synced row limit](common-preparations.html#keep-data-under-the-synced-row-limit)

 |

Configure sync options

 |

Development

 |
|

[Standardize timestamps](common-preparations.html#standardize-timestamps)

 |

Add custom record fields

 |

Development

 |
|

[Standardize automation type](common-preparations.html#standardize-automation-type)

 |

Add an `automationId` field to the event history record type and capture the type of automation that completes an event in a process model

 |

Development

 |
|

[Extract text from a field](common-preparations.html#extract-text-from-a-field)

 |

Add a custom record field

 |

Development

 |
|

[Merge multiple event history record types](records-backed-record-types.html)

 |

Create a records-backed record type

 |

Development

 |
|

[Extract case data or event data from an existing record type](records-backed-record-types.html)

 |

Create a records-backed record type

 |

Development

 |
|

**Data steward**

 |
|

[Remove ad hoc events](common-preparations.html#remove-ad-hoc-events)

 |

Filter process data

 |

Production

 |
|

[Standardize activities (or event types)](common-preparations.html#standardize-activities-\(event-types\))

 |

Add a custom attribute

 |

Production

 |
|

[Provide user-friendly names for attributes](common-preparations.html#provide-user-friendly-attribute-names)

 |

Rename attributes

 |

Production

 |
|

[Hide sensitive data](common-preparations.html#hide-sensitive-data)

 |

Filter process data or add custom attributes

 |

Production

 |
|

[Group the difference between two dates](common-preparations.html#group-the-difference-between-two-dates)

 |

Add custom attributes

 |

Production

 |
|

[Use data from a one-to-many relationship](common-preparations.html#use-data-from-a-one-to-many-relationship)

 |

Add custom attributes

 |

Production

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...