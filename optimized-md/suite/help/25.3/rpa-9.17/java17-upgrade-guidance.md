---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/java17-upgrade-guidance.html
original_path: rpa-9.17/java17-upgrade-guidance.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Java 17 Upgrade

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Java 17 is here: Prepare your environment now

We have updated to Java 17 as part of our commitment to maintaining supported software versions. As part of this change, you must upgrade the Java Runtime Environment (JRE) to Java 17 on all host machines running RPA agents. This required update ensures the Java Virtual Machines (JVM) that run your agents are updated and that your agents continue to function seamlessly.

This change is more about evolution than replacement. It transitions your environment from older Java versions to Java 17, ensuring compatibility with the latest software advancements rather than replacing existing functionalities. The ultimate goal is to have all RPA components seamlessly operating with Java 17, ensuring that your systems are up-to-date, secure, and fully compatible with the latest features and improvements.

## When is this happening?

Starting with RPA 9.10 (released on May 10), Appian RPA agents now support Java 17. Java 8 will remain supported at this time.

Starting with RPA 9.12 (released on August 2), agents no longer support Java 8. All RPA agent JVMs must be running on Java 17 for RPA 9.12.

## What you need to do

You must upgrade the JVM used to run the Appian RPA agent to Java 17 on all host machines. You may start upgrading your JVMs once you are running RPA 9.10 or 9.11. Once you are running RPA 9.12, agents that continue to use Java 8 may fail.

If you are developing your own Java-based RPA actions, you must upgrade the JDK used for development and testing activities to Java 17. Review if your Java code is still compatible with the new JDK and retest all custom RPA actions.

If you need more information, contact [Appian Support](https://forum.appian.com/suite/sites/support).

## Java 17 setup

Java 17 must be installed on the host machine to launch the agent and run robotic tasks. Ensure your environment and host machines have Java 17. To ensure compatibility, choose the 32-bit or 64-bit Java version that matches your operating system.

**Note:**  After installing Java, you must set the JAVA\_HOME environment variable to point to the Java installation directory. The following image is an example for Windows: ![2235078.png](images/2235078.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...