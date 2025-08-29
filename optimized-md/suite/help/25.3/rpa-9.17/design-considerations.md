---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/design-considerations.html
original_path: rpa-9.17/design-considerations.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Design Considerations

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Robotic process automation (RPA) is an exciting prospect and it can be tempting to dive right in. To help save you time and frustration, consider these steps when you get started designing robotic tasks.

## Consider and plan for humans to participate in your robotic task

Robotic process automation seeks to automate repetitive and error-prone tasks so your workforce can focus energy elsewhere. It's tempting to think that RPA can automate a lot of tasks and humans don't need to be involved, but there's no replacement for a skilled person's judgment in a business process. People can approach a process with context and awareness, where robotic tasks simply proceed based on rules and conditions.

As you explore RPA's possibilities, remember that humans play an important part in a process's successful completion. For example, you can designate certain people to handle error types in a process so it can proceed more quickly and ensure accuracy.

## Determine objectives and metrics for your robotic task

Return on investment is an important factor in adopting any new technology. As you begin to explore if RPA is the best fit for your business, consider the costs and savings that automation can bring.

To ensure that a robotic task provides you with the return on investment you're aiming for, take stock of what you're hoping to achieve and what metrics you'll use to measure that. Robotic Workforce Manager (RWM) is bundled with Appian RPA and can help you and other business users determine if you're on the right track and adjust as needed.

## Consider if RPA is the best technology of your use case

While powerful, RPA isn't a universal solution for efficiency. Before you invest the time and money of building an RPA practice for your organization, consider if existing solutions might be a better fit for certain pieces. For example, if a common process involves retrieving data, maybe an API already exists to do this step. You may find that there are server-side integrations to help address your needs. RPA can step in for the more sophisticated tasks that require interaction with the user interface.

In rapid development environments, server-side integrations or APIs might provide inconsistent or unstable results. In these cases, you might find that RPA is a good solution. Robotic tasks can help you control and structure the results to be more predictable.

## Choose the right automation tool

Depending on the size of your organization and automation practice, you might receive a wide variety of automation requests. Automation requests might span small, limited time applications to large, frequently used, and highly integrated processes. How can you keep up?

When users submit automation requests through RWM, it suggests the optimal technology for the use case. The form makes a determination based on the requestor's answers to these questions:

1.  Does this process contain tasks with repetitive manual entries?
2.  How rule-based is your task?
3.  What is the volume of this task?
4.  How structured is the data for this task?
5.  How often do the systems that the task is relying on change?
6.  How much will this task change over the next year?

The request form also captures information to help establish the technological context in which the automation operates, such as systems which the task needs to interact with. Requests also go through an AI Specialist Review to determine if artificial intelligence would be well-suited for the solution.

## Leverage Robotic Workforce Manager's management and reporting capabilities

To help business users determine the effectiveness and return on investment for automations, RWM is bundled with Appian RPA. RWM is a robust application that you can use in Appian to manage automation requests, deployments, and manage exceptions across your organization. You can also measure and track automation data, including audit history.

If you're getting started with RPA and these insights are important to you, rest assured that Appian RPA comes with a tool to meet these requirements. No need to build interfaces or records to see this information – RWM's done it for you!

## Start small

Robotic tasks have the potential to transform parts of your business and streamline a lot of normal operations. But like anything, it takes time to practice and perfect. As you're getting started, choose a pilot project for your first robotic tasks. This can help you and your team gain the experience needed to effectively and quickly develop and deploy robotic tasks across your business.

Once you're able to demonstrate that the time and money invested was worthwhile, you'll be well-positioned to expand how your business uses robotic process automation.

## Plan to maintain data and other artifacts

When you execute a robotic task, multiple artifacts may be generated based on your configurations. These artifacts may include execution log files, screenshot images, video recordings, and files of results that can accumulate and consume disk space on the host machine and RPA server.

Appian RPA does not archive your robotic task executions and artifacts by default; so, we recommend that you set a custom data maintenance policy on your robotic task execution artifacts based on your specific usage and needs. This will prevent your robotic tasks from consuming too much disk space, especially in your production environment.

To clear up this space automatically, you can configure the **Automatic Process Clean-Up** settings in the [**General Information** tab](configure-general-information-tab.html) of each of your robotic tasks. These settings define the number of days after which robotic task execution data and artifacts generated by executions are deleted. The execution data is removed altogether, so it won't appear in the list of executions.

**Note:**  Deletion is permanent. Deleted execution data and artifacts can't be recovered.

Removing old artifacts is a good way to clear out unnecessary objects and free up disk space without removing the execution log itself. When setting your data maintenance policy, consider your expected robotic task utilization as well as the quantity of data you may be generating for each execution. Answers to the following questions can help you determine how frequently you should delete your execution artifacts:

-   Is your robotic task running once a week, once a day, or multiple times a day?
-   Are you logging large blocks of data to the execution log, taking lots of screenshots, or recording a video per execution?
-   How long do you need the artifacts post-execution for debugging/auditing purposes?
-   How long do you need to be able to view the execution log for a completed or cancelled robotic task?

You may want to cleanup execution data regularly, but still need certain information about robotic task executions for auditing purposes. To do this, we recommend maintaining an Appian database table with the information you might need, such as the item processed, status of the robotic task, and duration.

## Build and deploy robotic tasks as part of your standard software development lifecycle

Your first robotic task may be simple and straightforward. As you determine more opportunities to automate, a robotic task can become more sophisticated as you automate more pieces. Each additional improvement has the potential to introduce bugs or unexpected behavior into the workflow. To help maintain the robotic task's predictability and accuracy, we recommend that you manage changes using your standard software development lifecycle (SDLC).

If the robotic task is essential to business operations, be sure to thoroughly test your changes in a test or staging environment before deploying to production.

## Create a service account

It's a good idea to set up service accounts before you begin configuring a robotic task. A service account is required to get started, so we recommend it as one of your first steps.

[More on service accounts](../User_Roles.html#service-account-role)

[More on web API authentication](../Web_API_Authentication.html)

## Consider data security in every stage of a robotic task

Security is a top concern when implementing RPA. Robotic tasks access machines, software, and data in ways similar to your human workforce, so data privacy and storage is important to consider during design, execution, and review. When designing a secure robotic task, consider how Appian stores or shares data and how the robotic task stores execution metadata. RPA's advantage lies in its ability to interact with multiple systems, so it's also important to know that some security aspects fall outside of Appian's control.

Learn how to ensure data security at [every stage of the robotic task lifecycle](security-rpa.html#securing-data-in-a-robotic-task).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...