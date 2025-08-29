---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/new-to-rpa.html
original_path: rpa-9.17/new-to-rpa.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Learn About Appian RPA

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

[Robotic Process Automation](https://academy.appian.com/#/curricula/64f7d652-35bf-4d7a-9a24-84e00f38126d)

Learn how to develop effective and efficient robotic tasks for your business.

## Introduction

As the cost of labor increases, businesses find that investment in automating rote tasks through software is much more attractive. The cost savings for outsourcing work isn't as compelling as the cost savings for robotic process automation (RPA) solutions.

Appian RPA automates high volume, highly transactional manual processes to free up your workforce to focus on tasks and initiatives that require reasoning and human intervention. By delegating these responsibilities to a robot, you can also ensure data quality and consistency where compliance is concerned and such standards can't be compromised.

RPA represents a new paradigm in business process automation. Appian delivers:

-   **Full-stack automation**: Appian offers RPA that fully integrates with business process management (BPM), artificial intelligence (AI), and case management to provide the right automation technology for the right use case. Unite people, robots, and AI to tackle high-value and high-volume work that involves different levels of cognitive engagement.
-   **Powerful governance**: As your RPA practice grows, you can centrally manage, monitor, and deploy robots across the organization to increase scale and performance.
-   **Secure, cloud-based RPA**: Appian Cloud is secure, globally available, and trusted to run mission critical, enterprise applications, including those that use robotic tasks.

**Note:**  Appian RPA is not available as part of high availability (HA) configuration at this time, but it won't impact other HA features in your environment. See High Availability in Appian Cloud for more information.

**Tip:**  As you begin to learn about Appian RPA, you'll learn the related terms and phrases. We've developed a [glossary](rpa-glossary.html) to use as a reference.

## What is RPA?

Robotic process automation (RPA) is a series of scripted programs that perform routine actions a person normally does. A process takes data as an input, performs actions, and provides an output, either in the form of additional data or accomplishing a task. In the case of RPA, these processes often interact with user interfaces, making them able to interact with legacy systems that might not have APIs or other more technical means of interaction.

Consider the following example: you're asked to regularly copy customer information from an email and paste it into your company's lead tracking software. This is a manual task that doesn't take much thought, but takes a lot of time. Think about how much time you'd save if you delegated this task to a robot. Instead of copying and pasting information hundreds of times, the robot takes care of it for you.

Robotic tasks act much faster and more precisely than a human being does. These routine tasks are not only completed faster, but have fewer errors. Robotic tasks can also step in when humans could be performing other tasks that require higher levels of thinking, such as tasks that require judgment or complex evaluation. So instead of copying and pasting data, you can spend that time contacting potential customers and building relationships.

RPA transforms business processes to be more efficient, highly available, easily replicated, and reliably consistent. Automation lets businesses delegate routine yet time-consuming tasks to a computer program, freeing up an employee's time and mental energy to focus on more impactful and high-value work. RPA saves businesses time, money, and brain power.

## About robotic tasks

Among other objectives, Appian RPA replaces manual tasks with programmed robotic tasks. Robotic tasks interact with applications the same way that humans do. Robots perform repetitive tasks based on rules, allowing people to focus their efforts on activities that require problem solving or personal interpretation.

RPA differs from traditional automation in its non-intrusive nature. Robotic tasks don't necessarily need to access databases, nor do they have to communicate with computer systems by invoking functions, web services, or APIs. Instead, robotic tasks interact with the user interface itself, using application windows in the same way people do: moving the mouse, clicking different menu options, and entering or reading data from the screens.

You don't need to know how to code to realize the power of Appian RPA; instead, you can use low-code methods to configure robotic tasks.

The following diagram shows a very basic workflow for developing and executing robotic tasks through Appian:

[![images/rpa-process-flow.png](images/rpa-process-flow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1379)

[![](images/rpa-process-flow.png)](#_)

**Tip:**  For in depth information about robotic tasks, see the page [Robotic Tasks](robotic-task-definition.html).

## How does Appian RPA work?

Appian RPA is made of multiple components hosted in the Appian Cloud and in the customer environment. These components communicate during the development and execution of robotic tasks, as shown below:

[![appian-rpa-architecture.png](images/appian-rpa-architecture.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1380)

[![](images/appian-rpa-architecture.png)](#_)

## Who uses Appian RPA?

There are three main user types in Appian RPA: administrators, developers, and operations managers. Developers design and configure robotic tasks, connect the necessary components, and deploy robotic tasks, while administrators set up robots and configure additional settings from the Operations Console. Operations managers help manage and troubleshoot robotic tasks that encounter problems. [Learn more about Appian RPA user roles](learn-user-settings.html#rpa-roles).

## Advanced robotic task development

Robotic tasks are comprised of Java code. The Java code works behind the scenes to power the robotic task. Appian RPA provides pre-defined Java artifacts called [low code actions](rpa-modules.html) that are stored in the RPA repository. If you need to extend RPA and you are a Java developer, you can write your own Java code locally and use Maven to deploy your code to the RPA repository. Then you can use both your custom artifacts and pre-defined low code actions in robotic tasks.

When a robotic task runs, the orchestration server retrieves the Java artifacts that the robotic task needs and assigns the robotic task to a robot for execution. The agent on the host machine is constantly polling the orchestration server and will see this new assignment. The robot collects the artifacts it needs for the robotic task from the orchestration server and executes each action.

This diagram demonstrates how custom Java artifacts developed by a remote developer are incorporated into Appian RPA:

[![rpa-custom-dev.png](images/rpa-custom-dev.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1381)

[![](images/rpa-custom-dev.png)](#_)

**Tip:**  Need to extend Appian RPA? Get started with [custom code development in Appian RPA](development-environment-overview.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...