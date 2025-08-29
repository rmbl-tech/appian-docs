---
source_url: https://docs.appian.com/suite/help/25.3/Event_Triggers.html
original_path: Event_Triggers.html
version: "25.3"
title: "Event Triggers"
page_id: "Event_Triggers"
section: "Feedback"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Event Triggers

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

A trigger is a configured action for an event to execute. In the case of start and end events, triggers are used to determine the action that must be performed when the event executes. With intermediate events, triggers can be placed directly on the designer canvas (that is, an intermediate event), or they can be added within a Service Node on the designer canvas. When they are added to a Service Node they are used to create an exception flow, which will be taken should the event execute instead of the Service Node.

Events are particularly useful for transmitting information across processes. For example, a Recruiting Process might use a Send Message trigger on an End event to send all employee information to an HR On-Boarding Process. The use of triggers within events allow you to distribute and collect data from various sources in a process. Also, the use of rule and time triggers allow you to change the flow of a process based on attributes from another process.

Each of the event types only support some of the triggers. The table below lists the different triggers that are supported by each event.

| Event Type | Triggers |
| --- | --- |
| Start |
-   [Receive Message](Receive_Message_Event.html)
-   [Timer Event](Start_Event.html#configuring-a-timer-trigger-on-a-start-event)
-   [Multiple Events](Start_Event.html#adding-multiple-triggers-to-a-start-event)

 |
| Intermediate |

-   [Send Message Event](Send_Message_Event.html)
-   [Receive Message Event](Receive_Message_Event.html)
-   [Timer](Intermediate_Event_-_Timer.html)
-   [Rule](Rule_Event.html)

 |
| Intermediate - Exception Flow |

-   [Receive Message](Process_Node_and_Smart_Service_Properties.html#exceptions-tab)
-   [Timer](Intermediate_Event_-_Timer.html)
-   [Rule](Rule_Event.html)
-   [Multiple](Process_Node_and_Smart_Service_Properties.html#exceptions-tab)

 |
| End |

-   [Send Message Event](Send_Message_Event.html)
-   [Terminate Multiple](End_Event.html#adding-a-terminate-process-trigger)

 |
| Escalation |

-   [Send Message Event](Send_Message_Event.html)
-   [Escalation Timer](Process_Node_and_Smart_Service_Properties.html#escalation-tab)

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...