---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/robotic-task-plan.html
original_path: rpa-9.17/robotic-task-plan.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# What Makes a Good Robotic Task?

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Robotic tasks are intended to supplement human activity in an application. Robotic tasks don't possess the judgment that human beings have; so, there is some potential for the robotic task to encounter exceptions, or patterns the process doesn't know how to handle. Additionally, the robotic task may take a long time to execute due to application processing time. After all, the applications are designed to handle input from human beings, which is much slower than that of a robotic task.

Because of this behavior, any robotic task must be:

-   **Reliable**: Whatever the robotic task does, it must be done well. Without this guarantee, the robotic task should not go on. A robotic task that processes important information must always be confident of what it is doing. For example, if the robotic task is not on the window it should be at a given time, data loss could occur. Usually robotic tasks operate directly on production environments; so, reliability is very important at all phases.
-   **Resumable**: Robotic tasks must be designed so that a user can stop its execution at a given time and resume it without manual intervention on the execution machine. This is especially important for robotic tasks that take a long time or process a large number of items. If execution stops, either manually or due to an error, it must be able to be resumed.
-   **Traceable**: A robotic task must do everything it's supposed to do, and what it does must be reflected somewhere. At least, it must be reflected in the execution log, although its medium can be adjusted for easier reading and interpretation by the developer. If the user wants to access the log, it is advisable to make the information requirements and expectations clear so that a developer can build it into the robotic task during the development phase.

As with any business technology, you'll want to consider data security in every part of your robotic task. Visit the [Securing Data in Robotic Tasks](security-rpa.html#securing-data-in-a-robotic-task) page to learn more about data security in every phase of a robotic task.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...