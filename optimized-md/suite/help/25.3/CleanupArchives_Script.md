---
source_url: https://docs.appian.com/suite/help/25.3/CleanupArchives_Script.html
original_path: CleanupArchives_Script.html
version: "25.3"
title: "CleanupArchives Script \[Deprecated\]"
page_id: "CleanupArchives_Script"
section: "Feedback"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# CleanupArchives Script \[Deprecated\]

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This script has been [deprecated](Deprecated_Features.html), and will be removed in a future release of Appian. As the Appian engines checkpoint, they create new .kdb files with more recent copies of the engine's data. The old .kdb files are then compressed and moved to the `services/data/archived/` directory. The system will automatically delete the oldest .kdb files when moving .kdb files to this directory. Therefore, this script is no longer needed and will simply print a deprecation message when run. See [Configuring Checkpointing](Configuring_Application_Checkpointing.html) for details.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...