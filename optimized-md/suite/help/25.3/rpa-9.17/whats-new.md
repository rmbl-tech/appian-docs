---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/whats-new.html
original_path: rpa-9.17/whats-new.html
version: "25.3"
title: "What's New in Appian RPA"
page_id: "rpa-9.17/whats-new"
section: "Version 9.17 (Release date: 3 July 2025 )"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# What's New in Appian RPA

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes what's available in this release of Appian RPA. Some capabilities may not be available if you're using an older version of the Appian platform.

## Version 9.17 (Release date: 3 July 2025 )

### Lightning-fast load times for robotic task executions

Now you can get to your data even faster. We've improved the robotic task executions page in the Operations Console, especially for environments with lots of robotic tasks. Thanks to smarter data fetching, some pages now load up to 83% faster. The more robotic tasks you've configured, the bigger the boost.

### RPA Queues and Scheduling are deprecated

To provide a more unified and powerful orchestration experience through Appian's low-code platform (LCP), the RPA Queues and RPA Scheduling capabilities found in the RPA Console are deprecated as of RPA version 9.17. These features are scheduled for full removal in Appian version 26.1. This change supports our strategy to focus development on modern, LCP-integrated RPA solutions and avoid the technical complexity and risk of making these legacy features compatible with our future releases.

**For all customers not currently using legacy RPA Queues or Schedules**: To prevent adoption of these deprecated features, the Queues and Schedule menus are now hidden and can't be accessed in the RPA Console. As part of this change, the Download reports feature has moved from the Schedule menu to the Statistics menu in the RPA Console.

**For customers with existing RPA Queues or Schedules**: These menus will remain visible to you until the Appian 26.1 release. Appian will continue to support you during your transition. In the meantime, be sure to migrate your schedules to Appian process model Timer Events and replace queues with LCP patterns.

## Version 9.16 (Release date: 11 April 2025 )

### Streamlined robotic tasks, faster development

Building on our recent advancements, RPA 9.16 introduces significant optimizations to robotic tasks, reducing their size by up to 70%. For example, a robotic task that previously occupied 22MB is now just 6.5MB! This dramatic reduction brings a range of powerful benefits for developers.

-   **Faster loading times**: Experience a noticeable speed improvement when interacting with large robotic tasks during monitoring and debugging. Streamlined tasks load much faster on screen, making your development process more efficient and responsive.
-   **Improved parallel development**: More developers can work concurrently on the same machine or site without requiring additional infrastructure as memory used has been reduced. This is particularly beneficial for teams working on large, complex projects that require collaborative online development.
-   **Enhanced support for complex automations**: This release significantly enhances support for complex automations involving multiple nested sub-robotic tasks. The benefits of size reduction scale with the size and complexity of your robotic tasks, allowing for more intricate and efficient workflows.
-   **Back-end Efficiency**: In addition to front-end improvements, this optimization also reduces hard disk usage on the server, leading to better performance and stability, especially for users with a large number of robotic tasks.

## Version 9.15 (Release date: 27 February 2025 )

### Performance enhancements for robotic task execution

This release includes optimizations that improve how robotic task executions are developed and monitored, especially in debug mode. This enhancement lets more developers work on larger robotic tasks at the same time without requiring additional infrastructure, creating a better development experience and maximizing your existing setup.

**Key improvements**:

-   More stable debugging and robotic task execution when multiple users are debugging simultaneously.
-   A smoother, more responsive experience when running robotic tasks, even for complex robotic task executions.
-   Greater efficiency when multiple users are working with large robotic tasks, enabling teams to scale development without increasing infrastructure costs.

## Version 9.14 (Release date: 5 December 2024 )

### Behind-the-scenes updates for RPA

We’ve made several behind-the-scenes updates to keep things running smoothly. There are no visible changes in this release, so you can continue developing as quickly and easily as always.

## Version 9.13 (Release date: 25 October 2024 )

### Stay secure and efficient with automatic RPA autologin updates

The RPA autologin service now automatically updates to the latest version when connecting to a newer version of Appian RPA. You’ll always have the most up-to-date security features and performance enhancements, reducing the need for manual updates and minimizing downtime. With this update, you can focus more on your work while the system takes care of staying current and secure.

**Tip:**  A warning icon will display next to your robot until the robot is updated with the latest autologin service.
![rpa-9.13-robot-warning.png](/suite/help/25.3/images/rpa/rpa-9.13-robot-warning.png)

## Version 9.12 (Release date: 2 August 2024)

### Java 17 is here

Beginning with RPA 9.12, agents now require the use of Java 17. To ensure RPA continues to operate smoothly, upgrade to Java 17 immediately if you have not already. All low-code actions within Appian RPA are backward compatible, but you will need to check the compatibility of any custom actions. Be sure to review the [Java 17 Upgrade Guidance](java17-upgrade-guidance.html) for complete information. For help, contact Appian Support.

## Version 9.11 (Release date: 21 June 2024)

### Manage version history for robotic tasks

Version history for robotic tasks is available now! Easily explore and restore past versions, update to the latest, or delete unnecessary ones-all in Appian Designer. This addition brings a unified experience with other Appian objects, making it easier to keep your robotic tasks organized and current.

**Note:**  This feature is enabled for customers on Appian 24.2 or higher.

![rpa-9.11-robotic-task-versions.png](/suite/help/25.3/images/rpa/rpa-9.11-robotic-task-versions.png)

### Boost performance for faster automation

We've optimized Appian RPA to enhance your automation experience. Robotic tasks now line up faster (up to 75%), letting more robots operate simultaneously due to quicker robotic task assignments. This improvement is especially beneficial during peak workloads when thousands of tasks need to be executed simultaneously, or in environments with a lot of robots; e.g., more than 50.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...