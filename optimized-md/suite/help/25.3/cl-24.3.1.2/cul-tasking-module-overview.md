---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-tasking-module-overview.html
original_path: cl-24.3.1.2/cul-tasking-module-overview.html
version: "25.3"
title: "Tasking Module Overview"
page_id: "cl-24.3.1.2/cul-tasking-module-overview"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Tasking Module Overview

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting Life, which must be purchased separately from the Appian base platform. This content was written for Appian 24.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Tasks are the primary activity drivers in your CU Life Workbench application and underwriting process. They represent the work that your underwriters complete to resolve a case. A workflow is a process made up of a series of tasks done by underwriters, underwriting managers, and the system to resolve issues and complete cases. CU Life Workbench ships with the Tasking add-on module, a pre-built application that allows your administrators and underwriting managers to create tasks and task blocks to streamline and centralize the creation of case workflows in one unified application.

This page provides an overview of tasks and task blocks in the CU Life Workbench.

### What are tasks and task blocks

The CU Life Workbench defines tasks as steps in a workflow that represent the actions taken by underwriters or other users to resolve a case. The Tasking add-on module allows admin users to configure two task role types: underwriting and operations tasks.

![cul_create_tasks_default_types](images/cul_create_tasks_default_types.png)

#### Preset task types

The Workbench ships with three pre-configured task types for each role type that are commonly utilized in underwriting workflows, including **Confirmation**, **Decision**, and **Document Upload**.

| Task Type | Description |
| --- | --- |
| **Confirmation** | This task type facilitates the verification of essential data, ensuring all necessary case information is accurate and complete before moving forward in the underwriting process. |
| **Decision** | This task type allows underwriters to evaluate submitted applications and make informed decisions based on the captured data and established criteria. |
| **Document Upload** | This task type streamlines the process of gathering documentation, allowing user to easily upload the necessary documents to ensure they are organized and accessible for review. |

When configuring tasks, admin users can select a default assignment group for each task and set the task SLA (service level agreement).

When managing your tasks, CU Life Workbench allows you to dynamically change the workflow for an individual case by adding or removing tasks to any workflow section. You can [add new tasks](cul-create-tasks-and-task-blocks.html#creating-tasks) in a sequence to capture a specific process and even see a real-time visualization of the whole case process that updates as you add, remove, or complete tasks.

Task blocks are groups of tasks chained together in a sequence to create flexible pathways within a workflow. They aren't specific to a case and can be reused across multiple cases. Admins can also select a default assignment group, set SLA for each task type, reorder tasks, and add task dependents for each task block. After incorporating the Tasking add-on module, your team can [create tailored tasks blocks](cul-create-tasks-and-task-blocks.html#creating-task-blocks) to use across multiple workflows.

To learn how to configure tasks and task blocks, see [Creating Tasks and Task Blocks](cul-create-tasks-and-task-blocks.html).

## Ready to get started?

Ready to empower your team with the tools they need to create custom tasks, task blocks, and workflows? [Download and install](cul-tasking-module-installation.html) the Tasking add-on module with your CU Life Workbench to unlock its benefits.

After installing, follow the [setup steps](cul-tasking-module-setup.html) to incorporate the Tasking add-on module with the CU Life Workbench.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...