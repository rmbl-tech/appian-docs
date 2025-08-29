---
source_url: https://docs.appian.com/suite/help/25.3/component-review-process.html
original_path: component-review-process.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Component Review Process

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Appian reviews all component plug-ins to ensure they meet our standards and those of our customers. While these standards will only be enforced for components submitted to the AppMarket, they are still good practices to follow when developing components for use only within your organization. This page explains the review process and the steps you'll go through to get your component plug-in approved.

## Why review components?

Allowing developers to extend Appian by creating new components is an incredibly powerful concept that lets customers build even more powerful applications. We've put a lot of effort into creating an extensible platform, and we want to make sure our developers and our customers succeed.

We also want to make sure that Appian continues to be the fastest way to create enterprise software. That means we don't expect you to build a new component for every application. _In fact, it should be the exception._ By reviewing every component plug-in we want to help you make the most of your time, developing only the most valuable components that add broad capabilities to the growing Appian ecosystem.

## Submission

**Note:**  All submissions use the same [submission form](https://forum.appian.com/suite/sites/appmarket-submissions/). You'll have the option to designate whether or not you want to submit your component to the AppMarket on that form.

Once you've built and tested your component, you'll submit it for review. Use the following checklist to help the review process go as smoothly and quickly as possible:

-   Test your component using the final package you will submit.
-   Make sure all metadata in your [plug-in manifest](reference-manifest.html#plug-in-manifest) is correct:
    -   Your vendor identity must be complete and accurate.
    -   Note all browsers and mobile devices that will be supported, and test with them.
    -   AppMarket submissions only: if you provide support for your plug-in, make sure customers know how to contact you.
-   Document the expected behavior and any non-obvious features.
    -   The more detail you can fit in component and parameter descriptions the better. Remember that developers will only have the information you provide to guide them.
-   Include any login credentials or system access needed to review your component.
-   Check that your plug-in meets the [review guidelines](component-review-guidelines.html).

When you're ready to submit your plug-in, use the AppMarket [submission form](https://forum.appian.com/suite/sites/appmarket-submissions/). Make sure to provide:

-   A Plug-in Visibility designation. Choose **Public** for AppMarket submissions.
-   The complete plug-in package (including any related connected systems plug-ins)
-   A sample application that demonstrates the capabilities of your component
-   Information from the checklist above
-   Source code for the plug-in

### Approval

When your component plug-in is approved, your plug-in will then be able to run on any Appian instance.

If you designated your component plug-in for the AppMarket, it will then be listed on the [Appian AppMarket](https://community.appian.com/b/appmarket) so that customers can download it and use it in their applications.

### Rejection and resubmission

If your component plug-in is not approved, we'll send you a detailed report explaining why. You can use the report to update your plug-in and resubmit.

If we believe we would **never** approve your component because of fundamental design violations, the submission will be rejected.

## After approval

### Additional releases

Once listed in the AppMarket, customers can use your component in their applications, and you'll start hearing feedback when they do. When you decide to release a new version make sure to read our [guidance](component-versioning.html) on what type of version change to make. New versions will need to be built in your developer instance and submitted for review using the same process as your initial release.

### AppMarket feedback

We'll also be monitoring feedback on your component plug-in as it's used by customers. We may reach out to you to address any concerns, such as:

-   Crashes or bugs
-   Security or performance issues
-   Behavior that doesn't match the documented purpose of the component
-   Lack of support response (for plug-ins that claim to be supported)

Our goal is to work with you to ensure your component is available and provides value. However, Appian reserves the right to remove your plug-in from the AppMarket at any time and for any reason.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...