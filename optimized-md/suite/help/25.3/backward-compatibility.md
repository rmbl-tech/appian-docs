---
source_url: https://docs.appian.com/suite/help/25.3/backward-compatibility.html
original_path: backward-compatibility.html
version: "25.3"
title: "Backward Compatibility in Appian"
page_id: "backward-compatibility"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Backward Compatibility in Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides information about Appian's unparalleled, backward compatibility promise, the development and testing principles and practices that make it a reality, and how you can upgrade Appian with confidence and ease.

### Background

Upgrading to a newer version of a platform that isn't backward compatible can be time-consuming, expensive, and risky. We didn't want that to be the case with Appian, so we committed to providing backward compatibility very early on, and made that a foundational principle for our platform's design and development.

This means if you want to upgrade to the latest version of Appian, our goal is to make your existing applications work without further effort on your part. We take the cost on ourselves, but we don't do this just to save you time and money. We do this so you have the best possible experience and are able to take advantage of new features, stay current with the fast pace of technological innovation, integrate with the latest players and services, and benefit from every advance in performance, stability, and security.

## How We Do It

In order to improve the platform in a way that ensures the applications you build today work on the platform tomorrow, proposed new features or capabilities must align with the following tenets:

### Expansion Over Revision

Rather than change existing features in ways that would make them incompatible with existing applications, we will improve them in compatible ways that benefit their existing usage while enabling new ways of using them, or introduce new, [improved versions](function_versions.html) of said feature without removing the old.

This allows customers to build new applications to take advantage of the new features, while having the option to choose whether or not it makes sense to implement them in older applications.

### Harmony Over Segmentation

Rather than create new product areas, or new products, new features should be able to interact/work with the applications created with older features.

This allows customers to evolve their applications to take advantage of new features without having to remake them from scratch.

## Practical Realization

Above all, we don't mindlessly adhere to any design tenet if it denies our customers a new, high-value capability. Although the tenets ensure that it rarely happens, we are sometimes faced with the decision of making a change that impacts backward compatibility for a particular element of the platform. Leaving old elements in place is typically the preferred method, but when that's not possible, we weigh a number of factors including the popularity of the component, the cost of its removal, whether we can automate its replacement, and so forth. We only remove things that extremely few (if any) people are using, and the large majority of customers over the last few years haven't had to change anything as a result.

If we reach the decision that something should be removed from the product to the benefit of all, we make sure the impact is as minimal as possible by providing:

-   **Substitutions** - No capability is ever removed from the product without a replacement, unless it's no longer needed or in use. In this way, we preserve the fundamental capabilities of the platform so as to preserve the design and purpose of existing applications. We would never, for example, remove the ability to integrate with other systems, but we might change the way you integrate in order to make the process much easier.
-   **Advance Notice** - Any feature that may be removed at a later date, is marked as deprecated, and announced in the release notes. A feature will never be deprecated for less than three months. Deprecated features are usually in that status for a year or more.
-   **Support** - Cloud customers benefit from being on the latest releases, and for our self-managing customers, we have a generous 18 months of support for every release, giving you the time you need to address any removals or behavior changes (should they affect you).

## Testing the Past and the Future

We employ industry-leading testing practices that include comprehensive regression testing to ensure that every feature is compatible with every other. No single feature can even become a part of the platform until it's proven it integrates seamlessly with every other part.

We also run an internal alpha phase all throughout development with real-world usage of the product in progress to flush out errant bugs.

Then, when development is complete, each new version of Appian goes through an additional, month-long, private beta phase where the release is used in production by select participants.

Any issues discovered during either of these phases gets corrected, and we expand our test suite to ensure that it, and similar types of issues, are found in the future.

These practices ensure the highest level of quality and confidence possible so you never need to test your applications, or Appian itself, when you upgrade to the latest version; we've already done it for you.

## How to Upgrade with Confidence

We rely on a strong communication plan of documenting everything you need to know before you upgrade to the latest version of Appian. If anything has been removed, or any product behavior has changed that you may need to know about, we document it all. For every release of Appian we document all removals, behavior changes, and changes to upgrading Appian, as well as provide notices when some part of the product is placed into the deprecated status.

1.  [Release Notes](Appian_Release_Notes.html) - The release notes list every deprecation, removal, and behavior change in the release.
2.  [Upgrade Guide](Upgrade_Guide.html) - Changes to how to upgrade Appian are applied directly to this guide, along with notes or callouts for anything the server administrator should be mindful of.

Since that content relates to upgrading Appian from one version to the next, if you are skipping versions, you must read the [Release Notes](Appian_Release_Notes.html) and [Upgrade Guide](Upgrade_Guide.html) for every intervening release. This means if you're upgrading from **25.2** to **25.4**, you must read the Release Notes and Upgrade Guide for **25.2**, **25.3**, and **25.4**.

**Tip:**  Every version of Appian has its own version of the documentation, and that version number is displayed on every page at the top of the right-hand panel. Click on the number to quickly navigate to the same page in another version of the documentation.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...