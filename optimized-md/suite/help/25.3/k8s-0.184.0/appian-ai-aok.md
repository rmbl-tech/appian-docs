---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/appian-ai-aok.html
original_path: k8s-0.184.0/appian-ai-aok.html
version: "25.3"
title: "Appian AI on Kubernetes"
page_id: "k8s-0.184.0/appian-ai-aok"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian AI on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian AI features are available for self-managed environments using Appian on Kubernetes. In order to use these features, system administrators need to set up and configure these services to work with Appian on Kubernetes.

During setup, we guide you through the process of creating and configuring Appian on Kubernetes to be able to use [AI features](#features-included). To do this, customers must use Amazon Web Services (AWS) infrastructure.

## Features included

After you successfully complete setup, your environment has access to the following AI features:

-   [AI skills](https://docs.appian.com/suite/help/latest/ai-skills-intro.html), including:
    -   [Advanced IDP Tools](https://docs.appian.com/suite/help/latest/create-skill-advanced-idp-tools.html)
    -   [Document classification](https://docs.appian.com/suite/help/latest/create-skill-doc-classify.html)
    -   [Document extraction](https://docs.appian.com/suite/help/latest/create-skill-doc-extraction.html)
    -   [Email classification](https://docs.appian.com/suite/help/latest/create-skill-email-classify.html)
    -   [Generative AI skills](https://docs.appian.com/suite/help/latest/gen-ai-skills.html)
-   [AI Copilot for data fabric](https://docs.appian.com/suite/help/latest/allow-users-to-build-reports.html#ai-copilot-for-data-fabric)
-   [AI Copilot for reports](https://docs.appian.com/suite/help/latest/allow-users-to-build-reports.html#ai-copilot-for-reports)
-   [Suggested views](https://docs.appian.com/suite/help/latest/process-views.html#create-a-view)
-   [Suggested KPIs](https://docs.appian.com/suite/help/latest/process-custom-kpis.html#create-a-kpi)
-   [Suggested insight summaries](https://docs.appian.com/suite/help/latest/collaborate-on-insight.html#add-a-description-to-a-saved-insight)
-   [Documents Chat](https://docs.appian.com/suite/help/latest/Documents_Chat_Component.html)
-   [Enterprise Copilot](https://docs.appian.com/suite/help/latest/user-copilot.html#enterprise-copilot)
-   [Records chat component](https://docs.appian.com/suite/help/latest/Records_Chat_Component.html)
-   [Data fabric chatbot component](https://docs.appian.com/suite/help/latest/Data-Fabric-Chatbot-Component.html)
-   [Create sample data for record types](https://docs.appian.com/suite/help/latest/records-create-sample-data.html)
-   [Generate interface from PDF](https://docs.appian.com/suite/help/latest/dev-copilot.html#generate-an-interface-from-a-pdf)
-   [Generate test cases for expression rules](https://docs.appian.com/suite/help/latest/Expression_Rule_Testing.html#generate-test-cases-with-ai)

**Tip:**  Appian 25.3 or later is required to use AI features in a self-managed environment using Kubernetes.

The availability of each AI feature is subject to the feature's supported [capability tiers](../Appian_Tiers.html) and [regional availability](../security-compliance.html).

## Software and experience requirements

**Note:**  AWS infrastructure is required to be able to use Appian AI features in self-managed environments. No other infrastructure is supported at this time.

-   **Appian**: Customers must be using Appian on Kubernetes to gain access to AI features in a self-managed Appian environment. Further, the Appian platform version must be 25.3 or higher.
-   **Appian Operator**: Most recently released version.
-   **Kubernetes**: v1.29 or higher.
-   AWS infrastructure, including Amazon EKS cluster
-   Experience with KEDA
-   Experience with Knative infrastructure
-   Experience with Helm

## Get started

To get started using Appian AI services on Kubernetes, [install Appian on Kubernetes](install-appian-on-k8s.html) if you haven't already.

Visit [Appian Forum](https://forum.appian.com/suite/sites/myappian/page/support) to access key installation resources, including documentation on how to set up AI services for Appian on Kubernetes using AWS infrastructure. The guide includes:

-   comprehensive software, infrastructure, and tool prerequisites.
-   important disclaimers and best practices. The sample Terraform files are for demonstration and customers are responsible for their environments, including data backups.
-   definitions of core concepts, such as IAM Roles for Service Accounts (IRSA) and chained role assumption.
-   guidance for configuring `kubectl`, setting up resources with example Terraform files, configuring IAM permissions for pods, and deploying Helm charts.
-   a section for testing the connections to ensure users will have access to multiple AI features.

**Tip:**  To download the full installation guide, visit [Appian Forum](https://forum.appian.com/suite/sites/myappian/page/support):

1.  From the **SUPPORT** tab, click **DOWNLOADS**.
2.  Click **PLATFORM** > **LOW-CODE PLATFORM**.
3.  Select **Appian 25.3**.
4.  Under **Downloads**, you'll find **Setup AI for Appian on Kubernetes Using AWS infrastructure** and a Terraform sample.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...