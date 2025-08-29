---
source_url: https://docs.appian.com/suite/help/25.3/security-compliance.html
original_path: security-compliance.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Security and Compliance

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Compliance

**Appian Cloud PCI-DSS customers**: Review [the feature's compliance](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure it aligns with your organization's security requirements.

**Note:**  [Generative AI Skills](gen-ai-skills.html), including unstructured document extraction, support high availability. AI skills that require training, such as document classification and structured document extraction, do not.

You can use all AI Skills in high availability environments without impacting other HA features. For more information, see [High Availability for Appian Cloud](High_Availability_for_Appian_Cloud.html) for more information.

## Regional availability

Appian offers a range of AI capabilities with availability varying based on geographical location. The following sections outline which regions are supported.

-   [AI Skills regional availability](#ai-skills-regional-availability)
-   [AI Copilot regional availability](#ai-copilot-regional-availability)

If your Appian environment isn't in a supported region, you can elect to send your data to a supported region. This doesn't change your environment's region. Contact [Appian Support](https://forum.appian.com) to learn more. Refer to the [multi-region architecture](#multi-region-architecture) diagram to learn more about how data is transmitted in this configuration.

**Caution:**  Changing your Appian environment's region will make any of these AI skills that exist no longer available in your environment. Multi-region environments and migration between regions are not supported.

However, if [Enhanced Business Continuity](Enhanced_Business_Continuity_for_Appian_Cloud.html) is enabled for your environment and a failover occurs, AI skill data will be present when you return to your primary region. AI skill data isn't lost permanently in this case.

### AI Skills regional availability

**Tip:**  The Email Classification skill is available in all regions where Appian Cloud is supported.

The following AI skills are available in select regions:

| Region Name | Region | [Advanced IDP Tools](create-skill-advanced-idp-tools.html),
[Document Classification](create-skill-doc-classify.html), and
Structured [Document Extraction](create-skill-doc-extraction.html) | [Prompt Builder](create-skill-prompt-builder.html) and [generative AI skills](gen-ai-skills.html) |
| --- | --- | --- | --- |
| Africa (Cape Town) | af-south-1 | Not Supported | Not Supported |
| Asia Pacific (Tokyo) | ap-northeast-1 | Not Supported | Supported |
| Asia Pacific (Seoul) | ap-northeast-2 | Supported | Supported |
| Asia Pacific (Mumbai) | ap-south-1 | Supported | Supported |
| Asia Pacific (Singapore) | ap-southeast-1 | Supported | Supported |
| Asia Pacific (Sydney) | ap-southeast-2 | Supported | Supported |
| Asia Pacific (Jakarta) | ap-southeast-3 | Not Supported | Not Supported |
| Canada (Central) | ca-central-1 | Supported | Supported |
| Europe (Frankfurt) | eu-central-1 | Supported | Supported |
| Europe (Zurich) | eu-central-2 | Not Supported | Supported |
| Europe (Stockholm) | eu-north-1 | Not Supported | Not Supported |
| Europe (Milan) | eu-south-1 | Not Supported | Not Supported |
| Europe (Ireland) | eu-west-1 | Supported | Supported |
| Europe (London) | eu-west-2 | Supported | Supported |
| Europe (Paris) | eu-west-3 | Supported | Supported |
| Middle East (UAE) | me-central-1 | Not Supported | Not Supported |
| Middle East (Bahrain) | me-south-1 | Not Supported | Not Supported |
| South America (Sao Paulo) | sa-east-1 | Not Supported | Supported |
| GovCloud (US-East) | us-gov-east-1 | Supported | Supported |
| GovCloud (US-West) | us-gov-west-1 | Supported | Supported |
| US East (N. Virginia) | us-east-1 | Supported | Supported |
| US East (Ohio) | us-east-2 | Supported | Not Supported |
| US West (N. California) | us-west-1 | Supported | Not Supported |
| US West (Oregon) | us-west-2 | Supported | Supported |

### AI Copilot regional availability

The following AI Copilot features are available in select regions:

| Feature | Supported regions |
| --- | --- |
|
[AI Copilot for data fabric](allow-users-to-build-reports.html#ai-copilot-for-data-fabric)
(Part of Data Fabric Insights)

[Data fabric chatbot component](Data-Fabric-Chatbot-Component.html) |

-   Asia Pacific (Mumbai) ap-south-1\*
-   Asia Pacific (Seoul) ap-northeast-2
-   Asia Pacific (Singapore) ap-southeast-1
-   Asia Pacific (Sydney) ap-southeast-2
-   Asia Pacific (Tokyo) ap-northeast-1
-   Canada (Central) ca-central-1\*
-   Europe (Frankfurt) eu-central-1
-   Europe (Ireland) eu-west-1\*
-   Europe (London) eu-west-2\*
-   Europe (Paris) eu-west-3
-   GovCloud (US-East) us-gov-east-1
-   GovCloud (US-West) us-gov-west-1
-   South America (Sao Paulo) sa-east-1\*
-   US East (N. Virginia) us-east-1
-   US West (Oregon) us-west-2

 |
|

[AI Copilot for reports](allow-users-to-build-reports.html#ai-copilot-for-reports)
(Part of Data Fabric Insights)

 |

-   Asia Pacific (Mumbai) ap-south-1\*
-   Asia Pacific (Seoul) ap-northeast-2
-   Asia Pacific (Singapore) ap-southeast-1
-   Asia Pacific (Sydney) ap-southeast-2
-   Asia Pacific (Tokyo) ap-northeast-1
-   Canada (Central) ca-central-1
-   Europe (Frankfurt) eu-central-1
-   Europe (Ireland) eu-west-1
-   Europe (London) eu-west-2
-   Europe (Paris) eu-west-3
-   GovCloud (US-East) us-gov-east-1
-   GovCloud (US-West) us-gov-west-1
-   South America (Sao Paulo) sa-east-1
-   US East (N. Virginia) us-east-1
-   US West (Oregon) us-west-2

 |
| [Composer](plan-view.html) |

-   Asia Pacific (Tokyo) ap-northeast-1
-   Asia Pacific (Seoul) ap-northeast-2
-   Asia Pacific (Singapore) ap-southeast-1
-   Asia Pacific (Sydney) ap-southeast-2
-   Europe (Frankfurt) eu-central-1
-   Europe (Zurich) eu-central-2
-   US East (N. Virginia) us-east-1

 |
| [Create sample data for record types](records-create-sample-data.html) |

-   Asia Pacific (Mumbai) ap-south-1
-   Canada (Central) ca-central-1
-   Europe (Frankfurt) eu-central-1
-   Europe (Ireland) eu-west-1
-   Europe (London) eu-west-2
-   GovCloud (US-East) us-gov-east-1
-   GovCloud (US-West) us-gov-west-1
-   US East (N. Virginia) us-east-1
-   US West (Oregon) us-west-2

 |
| [Documents Chat](Documents_Chat_Component.html) |

-   Asia Pacific (Mumbai) ap-south-1
-   Asia Pacific (Singapore) ap-southeast-1
-   Asia Pacific (Sydney) ap-southeast-2
-   Asia Pacific (Tokyo) ap-northeast-1
-   Canada (Central) ca-central-1
-   Europe (Frankfurt) eu-central-1
-   Europe (Ireland) eu-west-1
-   Europe (London) eu-west-2
-   Europe (Paris) eu-west-3
-   GovCloud (US-East) us-gov-east-1
-   GovCloud (US-West) us-gov-west-1
-   South America (Sao Paulo) sa-east-1
-   US East (N. Virginia) us-east-1
-   US West (Oregon) us-west-2

 |
| [Enterprise Copilot](user-copilot.html#enterprise-copilot) |

-   Asia Pacific (Mumbai) ap-south-1
-   Asia Pacific (Singapore) ap-southeast-1
-   Asia Pacific (Sydney) ap-southeast-2
-   Asia Pacific (Tokyo) ap-northeast-1
-   Canada (Central) ca-central-1
-   Europe (Frankfurt) eu-central-1
-   Europe (Ireland) eu-west-1
-   Europe (London) eu-west-2
-   Europe (Paris) eu-west-3
-   GovCloud (US-East) us-gov-east-1
-   GovCloud (US-West) us-gov-west-1
-   South America (Sao Paulo) sa-east-1
-   US East (N. Virginia) us-east-1
-   US West (Oregon) us-west-2

 |
| [Generate test cases for expression rules](Expression_Rule_Testing.html#generate-test-cases-with-ai) |

-   Asia Pacific (Sydney) ap-southeast-2
-   Canada (Central) ca-central-1
-   Europe (Frankfurt) eu-central-1
-   Europe (Ireland) eu-west-1
-   Europe (London) eu-west-2
-   Europe (Paris) eu-west-3
-   GovCloud (US-East) us-gov-east-1
-   GovCloud (US-West) us-gov-west-1
-   US East (N. Virginia) us-east-1
-   US West (Oregon) us-west-2

 |
| [Records chat component](Records_Chat_Component.html) |

-   Asia Pacific (Mumbai) ap-south-1
-   Asia Pacific (Seoul) ap-northeast-2
-   Asia Pacific (Singapore) ap-southeast-1
-   Asia Pacific (Sydney) ap-southeast-2
-   Asia Pacific (Tokyo) ap-northeast-1
-   Canada (Central) ca-central-1
-   Europe (Frankfurt) eu-central-1
-   Europe (Ireland) eu-west-1
-   Europe (London) eu-west-2
-   Europe (Paris) eu-west-3
-   GovCloud (US-East) us-gov-east-1
-   GovCloud (US-West) us-gov-west-1
-   South America (Sao Paulo) sa-east-1
-   US East (N. Virginia) us-east-1
-   US West (Oregon) us-west-2

 |
| [Smart Search](records-smart-search.html) |

-   Asia Pacific (Mumbai) ap-south-1
-   Asia Pacific (Singapore) ap-southeast-1
-   Asia Pacific (Sydney) ap-southeast-2
-   Asia Pacific (Tokyo) ap-northeast-1
-   Canada (Central) ca-central-1
-   Europe (Frankfurt) eu-central-1
-   Europe (Ireland) eu-west-1
-   Europe (London) eu-west-2
-   Europe (Paris) eu-west-3
-   GovCloud (US-East) us-gov-east-1
-   GovCloud (US-West) us-gov-west-1
-   South America (Sao Paulo) sa-east-1
-   US East (N. Virginia) us-east-1
-   US West (Oregon) us-west-2

 |
| [Suggested views](process-views.html#create-a-view)
[Suggested KPIs](process-custom-kpis.html#create-a-kpi)
[Suggested insight summaries](collaborate-on-insight.html#add-a-description-to-a-saved-insight)
[Ad hoc event detection](common-preparations.html#remove-ad-hoc-events)

(Part of Process Insights)

 |

-   Asia Pacific (Mumbai) ap-south-1\*
-   Asia Pacific (Seoul) ap-northeast-2
-   Asia Pacific (Singapore) ap-southeast-1
-   Asia Pacific (Sydney) ap-southeast-2
-   Asia Pacific (Tokyo) ap-northeast-1
-   Canada (Central) ca-central-1\*
-   Europe (Frankfurt) eu-central-1
-   Europe (Ireland) eu-west-1\*
-   Europe (London) eu-west-2\*
-   Europe (Paris) eu-west-3
-   GovCloud (US-East) us-gov-east-1
-   GovCloud (US-West) us-gov-west-1
-   South America (Sao Paulo) sa-east-1\*
-   US East (N. Virginia) us-east-1
-   US West (Oregon) us-west-2

 |

\* Sites in these regions have a lower [token limit](ai-glossary.html#token-limit) (28K tokens as opposed to 100K tokens) when using AI Copilot. Users can work with up to 30 record types, and may also need to [start a new session](troubleshoot-reports.html#sessions-and-token-limits) more frequently.

**Tip:**  We are continuously working to expand support across all regions. While the some regions do not currently support AI Copilot features, we are committed to extending our capabilities and look forward to bringing these innovative tools to these regions in the future. Stay tuned for updates as we enhance our global support to better serve you!

## Add AI skill endpoints to your network allowlist

To ensure the AI skill is available in your environment, locate your environment's region in the table below and add the corresponding endpoints to your network allow list. Add the endpoints that corresponds to your site's region, even if you send AI skill data to a different supported region.

For PCI-compliant sites, use the endpoints that include `-strict` in the string.

Designer endpoints support proper rendering of the user interface. S3 endpoints enable storage for the model and related data.

AI skills [may not be available in all regions](#regional-availability).

| Region Name | Designer Endpoint | S3 Endpoint |
| --- | --- | --- |
| Africa (Cape Town) | `https://ai-skill-designer-af-south-1.appiancloud.com` | `https://appian-custom-ai-customer-af-south-1-customer-bucket.s3.af-south-1.amazonaws.com` |
| Asia Pacific (Tokyo) | `https://ai-skill-designer-ap-northeast-1.appiancloud.com` | `https://appian-custom-ai-customer-ap-northeast-1-customer-bucket.s3.ap-northeast-1.amazonaws.com` |
| Asia Pacific (Seoul) | `https://ai-skill-designer-ap-northeast-2.appiancloud.com` | `https://appian-custom-ai-customer-ap-northeast-2-customer-bucket.s3.ap-northeast-2.amazonaws.com` |
| Asia Pacific (Mumbai) | `https://ai-skill-designer-ap-south-1.appiancloud.com` | `https://appian-custom-ai-customer-ap-south-1-customer-bucket.s3.ap-south-1.amazonaws.com` |
| Asia Pacific (Singapore) | **standard site**:
`https://ai-skill-designer-ap-southeast-1.appiancloud.com`

**PCI-compliant site**:
`https://ai-skill-designer-strict-ap-southeast-1.appiancloud.com` | `https://appian-custom-ai-customer-ap-southeast-1-customer-bucket.s3.ap-southeast-1.amazonaws.com` |
| Asia Pacific (Sydney) | **standard site**:
`https://ai-skill-designer-ap-southeast-2.appiancloud.com`

**PCI-compliant site**:
`https://ai-skill-designer-strict-ap-southeast-2.appiancloud.com` | `https://appian-custom-ai-customer-ap-southeast-2-customer-bucket.s3.ap-southeast-2.amazonaws.com` |
| Asia Pacific (Jakarta) | `https://ai-skill-designer-ap-southeast-3.appiancloud.com` | `https://appian-custom-ai-customer-ap-southeast-3-customer-bucket.s3.ap-southeast-3.amazonaws.com` |
| Canada (Central) | **standard site**:
`https://ai-skill-designer-ca-central-1.appiancloud.com`

**PCI-compliant site**:
`https://ai-skill-designer-strict-ca-central-1.appiancloud.com` | `https://appian-custom-ai-customer-ca-central-1-customer-bucket.s3.ca-central-1.amazonaws.com` |
| Europe (Frankfurt) | `https://ai-skill-designer-eu-central-1.appiancloud.com` | `https://appian-custom-ai-customer-eu-central-1-customer-bucket.s3.eu-central-1.amazonaws.com` |
| Europe (Zurich) | `https://ai-skill-designer-eu-central-2.appiancloud.com` | `https://appian-custom-ai-customer-eu-central-2-customer-bucket.s3.eu-central-2.amazonaws.com` |
| Europe (Stockholm) | `https://ai-skill-designer-eu-north-1.appiancloud.com` | `https://appian-custom-ai-customer-eu-north-1-customer-bucket.s3.eu-north-1.amazonaws.com` |
| Europe (Milan) | **standard site**:
`https://ai-skill-designer-eu-south-1.appiancloud.com`

**PCI-compliant site**:
`https://ai-skill-designer-strict-eu-south-1.appiancloud.com` | `https://appian-custom-ai-customer-eu-south-1-customer-bucket.s3.eu-south-1.amazonaws.com` |
| Europe (Ireland) | `https://ai-skill-designer-eu-west-1.appiancloud.com` | `https://appian-custom-ai-customer-eu-west-1-customer-bucket.s3.eu-west-1.amazonaws.com` |
| Europe (London) | **standard site**:
`https://ai-skill-designer-eu-west-2.appiancloud.com`

**PCI-compliant site**:
`https://ai-skill-designer-strict-eu-west-2.appiancloud.com` | `https://appian-custom-ai-customer-eu-west-2-customer-bucket.s3.eu-west-2.amazonaws.com` |
| Europe (Paris) | `https://ai-skill-designer-eu-west-3.appiancloud.com` | `https://appian-custom-ai-customer-eu-west-3-customer-bucket.s3.eu-west-3.amazonaws.com` |
| Middle East (UAE) | `https://ai-skill-designer-me-central-1.appiancloud.com` | `https://appian-custom-ai-customer-me-central-1-customer-bucket.s3.me-central-1.amazonaws.com` |
| Middle East (Bahrain) | `https://ai-skill-designer-me-south-1.appiancloud.com` | `https://appian-custom-ai-customer-me-south-1-customer-bucket.s3.me-south-1.amazonaws.com` |
| South America (São Paulo) | `https://ai-skill-designer-sa-east-1.appiancloud.com` | `https://appian-custom-ai-customer-sa-east-1-customer-bucket.s3.sa-east-1.amazonaws.com` |
| GovCloud (US-East) | `https://ai-skill-designer-us-gov-east-1.appiancloud.us` | `https://cai-gov-customer-us-gov-east-1-customer-bucket.s3-fips.us-gov-east-1.amazonaws.com` |
| GovCloud (US-West) | `https://ai-skill-designer-us-gov-west-1.appiancloud.us` | `https://cai-gov-customer-us-gov-west-1-customer-bucket.s3-fips.us-gov-west-1.amazonaws.com` |
| US East (N. Virginia) | **standard site**:
`https://ai-skill-designer-us-east-1.appiancloud.com`

**PCI-compliant site**:
`https://ai-skill-designer-strict-us-east-1.appiancloud.com` | `https://appian-custom-ai-customer-us-east-1-customer-bucket.s3.us-east-1.amazonaws.com` |
| US East (Ohio) | `https://ai-skill-designer-us-east-2.appiancloud.com` | `https://appian-custom-ai-customer-us-east-2-customer-bucket.s3.us-east-2.amazonaws.com` |
| US West (N. California) | **standard site**:
`https://ai-skill-designer-us-west-1.appiancloud.com`

**PCI-compliant site**:
`https://ai-skill-designer-strict-us-west-1.appiancloud.com` | `https://appian-custom-ai-customer-us-west-1-customer-bucket.s3.us-west-1.amazonaws.com` |
| US West (Oregon) | **standard site**:
`https://ai-skill-designer-us-west-2.appiancloud.com`

**PCI-compliant site**:
`https://ai-skill-designer-strict-us-west-2.appiancloud.com` | `https://appian-custom-ai-customer-us-west-2-customer-bucket.s3.us-west-2.amazonaws.com` |

Note that these endpoints are only used for publicly accessible environments. They do not apply to environments accessed over [VPN](Cloud_VPN_Integration.html), [PrivateLink](AWS-PrivateLink_Integration.html), or [Dual Access](Configuring_Dual_Inbound_Access.html).

## AI service architecture

This section applies to [AI Skills](ai-skills-intro.html) and [AI Copilot](appian-ai-copilot.html) features.

Our AI architecture is designed with [private AI](private-ai.html) as the foundation and upholds those principles. Learn more about [private AI features](private-ai.html#private-ai-feature-matrix).

### Single region architecture

Appian's AI architecture utilizes a single AWS region to provide a secure and scalable AI as a service solution. These capabilities are in-line with the [architecture of Appian Cloud deployments](Enterprise_Architecture_Overview.html), which also use AWS as the provider.

[![images/automation/ai-architecture.png](images/automation/ai-architecture.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img889)

[![](images/automation/ai-architecture.png)](#_)

### Multi-region architecture

If a customer site is not located in a region that supports a feature, customers can elect to [send their data to a supported region](#regional-availability).

[![images/automation/ai-architecture-multi.png](images/automation/ai-architecture-multi.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img890)

[![](images/automation/ai-architecture-multi.png)](#_)

**Note:**  The [email classification AI skill](create-skill-email-classify.html) uses neither of these services (Amazon Bedrock or Amazon Textract).

### Foundational principles

Foundational principles of our AI architecture apply to single- and multi-region implementations.

**Multi-tenant AI service**: Appian's multi-tenant AI service is shared among multiple customers in a given region and has multiple layers of control to restrict data access to respective customer sites. The service has site-level controls to restrict data access and encryption/decryption permissions, whether that distinction is a separate customer site or a separate site within a single customer's environment. This shared service approach allows for economies of scale.

**Data transit and retention**:

-   All of your data stays within the [Appian Cloud environment](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a).
-   All data in-transit is encrypted using TLS.
-   Communication between Appian and the AI service uses asymmetric signing where each customer site has a unique key used to verify its identity.
-   Communication between the AI service, Amazon Bedrock, and Amazon Textract uses AWS Signature V4 authentication to verify the identity of the requesting service.
-   Bedrock and Textract are stateless, so no information is retained.

Learn more about [Amazon Bedrock](https://aws.amazon.com/bedrock/faqs/) and [Amazon Textract](https://aws.amazon.com/textract/faqs/).

### Document classification and extraction

The document classification and document extraction AI skills use Amazon Textract to recognize the content within the documents.

When the ML model is called during training, testing, or process execution, the associated documents are uploaded to an S3 bucket. The documents are kept in the same region as the customer site.

Additionally, the bucket is:

-   Encrypted using keys specific to each customer site
-   Segmented for each customer site
-   Not accessible by application developers or users

**Note:**  If the documents to be classified or extracted contain protected data, then this protected data would be required in order to leverage extraction and classification features. Customers can use other mechanisms to redact protected data that is considered as proprietary, sensitive, or confidential, and data containing PII/PHI in accordance with their organization's policies prior to using these AI skills.

All data used for a model both at training and execution is retained until the AI skill is deleted. The model package is deleted when the AI skill object is deleted.

When a user submits a reconciliation task after document extraction, the updated key-value pair mappings are entirely stored within the application on the customer's site.

[Learn how document extraction works in Appian](how-doc-ex-works.html).

### Records chat

Users can only [chat with records](Records_Chat_Component.html) they have access to. [Record-level security](record-level-security.html) is the responsibility of the customer to develop and maintain. No records data is retained in either the AI service or [Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/data-protection.html) due to their stateless nature.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...