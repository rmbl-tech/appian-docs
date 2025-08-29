---
source_url: https://docs.appian.com/suite/help/25.3/testing-applications.html
original_path: testing-applications.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Testing Applications

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page is about the ways you can test and validate your Appian applications. Testing is an important part of the application life cycle—it’s how you can ensure that your application is ready for deployment and use.

Testing is an on-going activity and instills confidence that your application will work as you expect it to. Before you start writing tests, you should decide what kind of testing your application needs and how much time you need to invest in it.

Testing should be done anytime you introduce new functionality or update an application. You might decide to automate tests to ensure that developers can implement application improvements more efficiently and safely. Automated regression tests can also simplify maintenance of your application after it’s released. Testing that your existing application still works with the new and updated changes is called regression testing.

There are three types of testing you can do with Appian: Unit Testing, User Interface (UI) Testing, and Performance Testing.

## Unit testing

Unit testing focuses on the smallest testable parts of your application. The goal is to validate that your logic or rules behave as expected under various conditions. For example, you should test display and validation logic as you’re developing an interface, rather than waiting until the end of your development cycle to test it.

Objects with rule inputs, such as integrations and expression rules, support either default test values or test cases. You can continuously test these objects with different data values as you develop them.

This type of testing also applies to process models. As you add more logic and nodes to your model, you should test your changes by [starting a process for debugging](Monitoring_and_Editing_Processes.html#debug-mode).

For expression rules, you can save your test conditions as [test cases](Expression_Rule_Testing.html). This allows you to reuse them for regression tests and documents important edge cases for other Appian developers who might modify the rule in the future. You can execute these test cases in bulk using the [Manage Test Cases](Expression_Rule_Testing.html#test-case-management) dialog. You can also automate running these [test cases with Jenkins](Running_Automated_Tests_on_Expression_Rules_with_Jenkins.html).

When you [inspect a package](Deploy_to_Target_Environments.html#inspect-the-package) during direct deployments, you will be reminded to address any missing test coverage and run the test cases for packaged rules. Running test cases before you deploy is the best way to ensure modifications have not negatively impacted any existing rules.

## User interface (UI) testing

Testing from a user’s perspective validates the end-to-end experience and your design choices. You should do it early and often as you’re developing to make sure your application meets the user’s needs. For example, if you have a related action that updates record data, UI testing ensures that the correct users can access the form and that the information is updated successfully.

Appian supports three functional UI testing tools: [FitNesse for Appian](https://community.appian.com/w/the-appian-playbook/97/automated-testing-with-fitnesse-for-appian), [Cucumber for Appian](https://community.appian.com/w/the-appian-playbook/1325/automated-testing-with-cucumber-for-appian), and [Appian Selenium API](https://community.appian.com/w/the-appian-playbook/2304/automated-testing-with-appian-selenium-api). These tools support behavior-driven development (BDD) by allowing you to easily write test cases in user-friendly text and run them with the click of a button. Since we update these tools to be backwards compatible with every Appian release, they are more robust than regular webdriver testing.

To achieve all the benefits of continuous integration through automated testing, refer to the [DevOps Quickstart](https://community.appian.com/w/the-appian-playbook/1245/appian-devops-quick-start) on how to implement the full pipeline.

## Performance testing

Performance testing ensures that your application will scale and behave as expected during production-like or peak usage. When making changes you should take into consideration the size of your data and the frequency of each action. For example, how well will your application perform if you have a record grid with many rows of data and you have “x” number of users who need to interact with the data on that grid.

It’s important to [plan for performance testing](https://community.appian.com/success/w/guide/3215/performance-testing-methodology) early on and test performance before major releases. Appian can be used with tools, like [JMeter](https://community.appian.com/w/the-appian-playbook/204/using-jmeter-with-appian) and [Locust](https://community.appian.com/b/appmarket/posts/appian-locust), that allow you to efficiently automate load testing. For more information about application performance testing, see [Monitor Appian Applications](monitoring-applications.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...