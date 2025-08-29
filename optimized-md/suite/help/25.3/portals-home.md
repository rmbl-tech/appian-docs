---
source_url: https://docs.appian.com/suite/help/25.3/portals-home.html
original_path: portals-home.html
version: "25.3"
title: "Appian Portals"
page_id: "portals-home"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Portals

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

What are Appian Portals?

This video from [Academy Online](https://academy.appian.com/) introduces you to Appian Portals.

## Overview

Appian Portals is the front door to your Appian applications. It connects external users to the information and processes that you already have in Appian. With Appian Portals, you can use low-code to build public websites that are conveniently connected to your Appian applications.

Public users can use portals to submit forms, file claims, view documents and information, and more. All without requiring them to log in.

This page outlines [the benefits of portals](#benefits-of-appian-portals) and [when to use portals](#when-to-use-a-portal).

**Note:**  Appian Portals is currently only supported for Appian Cloud customers. If your environment uses inbound web access over [VPN](Configuring_Inbound_Access_Over_VPN.html) or [PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html#inbound-web-access-over-privatelink), you must enable [dual inbound access](Configuring_Dual_Inbound_Access.html) and [trusted IPs](Configuring_Trusted_IP_Addresses_for_Appian_Cloud.html).

## Benefits of Appian Portals

One of the main benefits of Appian Portals is that you can use a single platform to build both the external and internal sides of your applications. But the advantages don't stop there. Below are some of the most enticing reasons organizations choose to adopt Appian Portals.

### Speed up development and easily manage your websites

Most public websites are high-code, built with languages like HTML, JavaScript, and CSS. They can be fast to build, but maintaining, updating, scaling and securing them is slow, difficult, and expensive.

With Appian Portals, you can use the same low-code tools you already know to quickly design, create, and manage websites. Create an interface using all the dynamism and speed that you expect from Appian, then simply publish it publicly using the Portal Publication Manager.

No need to worry about hosting and scaling these sites on your own. Appian Portals eliminates the unpredictable costs and oversight that comes with traditional infrastructure alternatives.

### Keep your sensitive data secure

Because portals are an extension of the Appian Low-Code platform, you can expect the same level of security, including encryption, SOC 2 compliance, and more.

Additionally, you can use [reCAPTCHA](recaptcha.html) to monitor your portals for potentially malicious or fraudulent activity.

### Connect your external users to your Appian information and workflows

Appian has always been great at managing your internal workflows. Appian users experience the benefits of their Appian applications every day. They have access to the important information and workflows they need to perform their daily tasks.

Public users are different. You don't want to expose sensitive or non-public information to them. But you may want to show them information that you already have in Appian. For example, a power utility may use Appian to track outages. They can use the information that's already in Appian to create a public portal that has an outage dashboard.

A portal simply connects external users to the information in Appian applications that is relevant to them, easily and securely.

You can even [display a portal in your custom website](Using_appian_with_custom_websites.html#displaying-portals-in-your-custom-website) if you want to integrate a specific page of your website with Appian while maintaining your website's overall styling.

## When to use a portal

There are many use cases that are a perfect fit for a portal. If you want to connect your external users to your Appian data and workflow, a portal will likely be a great choice.

Portals are great if your use cases are:

-   **Public and unauthenticated**: You want to share information with or collect data from public users who don't need to sign in.
-   **Connected to Appian**: You want external users to be able to kick off Appian workflows or see information that comes from your Appian environment.
-   **Easily secured**: You need your implementation to be SOC 2, HIPAA, PCI, or FedRAMP compliant and you want to take advantage of security benefits like reCAPTCHA.

The following are great use cases for a portal:

-   **Starting a workflow**: For example, reporting a utility outage that sends a task to a technician. You could even give users a confirmation number so that they can view updates about their report.
-   **Submitting information**: For example, surveying utility customers about customer satisfaction.
-   **Reporting information**: For example, a dashboard that shows the outage status for a utility company.
-   **User self registration**: For example, allowing a utility customer to self-register to view and take action on their account information.

There are some use cases that are a better fit for other tools. For example, you're probably not going to want to build your organization's main website as a portal. But you could build a smaller website and link to it from your navigation menu.

Portals should not be used for:

-   **Account-level access**: Your users need to view multiple cases, records, or workflows associated directly to them. For example, accessing their plan and billing with a utility company, like seeing a history of service appointments and past bills paid. If they have that amount of information to manage, it's best to have them log into a user account.
-   **Marketing-focused websites**: You require pixel-perfect control, cookies, or need to integrate with tracking and web analytics services.
-   **Shopping cart/commerce**: For example, an online shopping website. These websites generally require things such as cookies to allow users to do something like refresh their page and keep the items in their shopping cart.

## How does a portal work?

When a portal is published, it runs in a service that is separate from your Appian environment, but can be natively connected to any data or workflows in your Appian environment.

Running your portal in a separate service connected to Appian allows you to:

-   Create secure, public experiences for your users without requiring them to sign in.
-   Easily connect users to your Appian applications.
-   Not worry about managing and provisioning third party servers.

Ready to get started with portals? Check out [Create a Portal](portals-create.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...