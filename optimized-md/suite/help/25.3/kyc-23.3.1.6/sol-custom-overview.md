---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/sol-custom-overview.html
original_path: kyc-23.3.1.6/sol-custom-overview.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Overview

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected KYC, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## How do I tailor a solution for my needs?

There are several activities that can be performed to tailor a solution to meet the specific needs of your organization. The table below describes the difference between a configuration and customization activity, and where to perform each type of activity within the solution.

| Activity | Description | Where is it Performed? |
| --- | --- | --- |
| Configuration | Adapting a solution for a range of scenarios by modifying the solution's out-of-the-box, front-end settings. Configurations do not involve code changes. | In Solution |
| Supported Customization | Customizing a solution for a range of scenarios by adding code via the Solutions Hub. Supported customizations do not modify the solution's source code but are performed in accordance with the customization steps and are upgrade friendly. | Solutions Hub |
| Customization | Changing a solution for a range of scenarios by modifying or extending the solution's code. Customizations are first implemented in a development environment and typically not supported by available configurations. | Appian Designer |

Wherever possible, you should always explore configuration changes first, followed by Supported Customization via the Solutions Hub. If needed, and as a last resort, customize your solution via Appian Designer.

## What is the Solutions Hub?

The Solutions Hub is an Appian site that enables Low-Code Developers to perform Supported Customizations on a compatible solution built on the Appian platform. These types of customizations enable the solution to meet the needs of their organization while preserving a clean upgrade path.

Supported Customization is intended for use in a development environment only, where these types of customizations should be performed and tested before being promoted to a higher environment.

Configuration changes are performed within the solution itself. The Solutions Hub also offers a Configuration Export & Import capability, which allows a set of solution configuration data to be exported from one Appian environment and imported into another. This capability is available in all environments that have compatible solutions built on the Appian platform.

Just as Amazon allows small business owners to set up and customize their own online storefront, the Solutions Hub allows you to truly make an Appian solution your own so that it meets the needs of your specific use case.

Supported Customizations made using the Solutions Hub are preserved when you upgrade to a new solution version. This means that when you upgrade your Appian Solution to get the new features, your previous customizations remain intact. This allows your organization to take on a newly released solution version as soon as it is available.

## When should I use the Solutions Hub?

It is important to understand when you should utilize the Solutions Hub over customizing directly in Appian Designer.

Appian recommends using the Solutions Hub when:

-   You want to modify your solution's branding.
-   You want to modify text in the languages that ship with your solution.
-   You want to add new text to support a customization.
-   You want to modify images that ship with the solution.
-   You want to add new user interface components, pages, or elements to the solution, and there's an applicable user interface customization template that fits your use case.
-   You want to extend a process that ships with the solution, and there's an applicable workflow customization template that fits your use case.
-   You want to adjust business logic that ships with the solution, and there's an applicable business logic customization template that fits your use case.
-   You want to move a set of solutions configuration data from one Appian environment to another.
-   **You want to preserve customizations and not have to reapply them each time you upgrade your solution!**

Each solution supports a varying degree of these use cases. You can find all of the available supported customizations for your solution by opening up the Solutions Hub on a development instance of your solution. If you need to install the latest version of the Solutions Hub, you can follow the steps in the [installation guide](sol-custom-suite-install-guide.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...