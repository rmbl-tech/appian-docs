---
source_url: https://docs.appian.com/suite/help/25.3/timeline-pattern.html
original_path: timeline-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Timeline Patterns

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Interface patterns give you an opportunity to explore different interface designs. Be sure to check out [How to Adapt a Pattern for Your Application](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html).

## Goal

Use the timeline pattern to show progress through steps in a process or project. These patterns can be used to show progress in both completed and ongoing processes. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

There are three slightly different timeline patterns; timeline, timeline (lightweight), and timeline (progress) located under the **PATTERNS** tab on the left navigation menu of the palette. All three have the same functionality but different a different look. Test out all three to see which one aesthetically matches your business needs.

![image of a timeline with icons, text labels, and dates](images/patterns/timeline_pattern_example.png)

## Design structure

The main components in these patterns are [side by side layouts](Side_By_Side_Layout.html), [rich text icons](Styled_Icon_Component.html), and [rich text items](Styled_Text_Component.html). These components are configured to stack based on the width of the screen size in which you're viewing the timeline. In this design structure breakdown, we'll use the basic timeline pattern to explain how each component is used.

### \[Line 1-181\] Side by side layouts

This pattern consists of nine similar side by side layouts, all of which contain multiple [rich text display components](Rich_Text_Component.html) components. This pattern also uses two configurations of side by side layouts to create the timeline format. This pattern leverages the horizontal line component to be responsive at every screen size.

The first uses rich text icons and rich text items to create the steps on the timeline (**lines 4-26**).

The second uses the horizontal line component to format the steps between the timeline (**lines 27-34**). This side by side component is on either side of the number of days displayed in text between each step of the timeline.

### Pattern expression

This pattern introduces a 181-line expression to the interface.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...