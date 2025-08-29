---
source_url: https://docs.appian.com/suite/help/25.3/Anti-Virus_on_Cloud.html
original_path: Anti-Virus_on_Cloud.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Antivirus on Appian Cloud

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

One of the reasons customers choose Appian Cloud is because they want the convenience of a cloud-hosted platform without the burden of implementing and managing the security themselves. With comprehensive antivirus scanning, Appian Cloud provides yet another layer of protection.

## Real-time scanning

All Appian Cloud customers have real-time scanning of all files uploaded in the following places:

-   Tempo News
-   Social Tasks
-   Interfaces in all locations including Tempo, Sites, and Embedded interfaces
-   Admin Console
-   Appian Designer
-   AI Skills

### Administration

The real-time scanner can be enabled and disabled in the [Admin Console](Appian_Administration_Console.html#file-upload). By default, the real-time scanner is enabled. If you need to disable the scanner because it is having a functional impact on an application, open a support case to tell us why. We want all Appian Cloud customers to be able to take advantage of this feature.

The real-time scanner can be audited through the [blocked\_files.csv](Logging.html#blocked-files) audit log. This file can be useful in identifying attempted attacks and [false positives](#identifying-false-positives).

### Identifying false positives

A false positive is when a file is labeled as malicious and blocked even though the file is actually benign. If you believe a user is seeing a false positive, follow the steps below to resolve the issue:

1.  Try to upload the file again if it has been more than a few hours. We update virus signatures hourly, and so the issue may already be resolved.
2.  Gather evidence for the file being benign.
    -   You can go to `/logs/audit/blocked_files.csv` and find the line in the CSV the corresponds to the file you suspect to be a false positive. Copy the virus signature from the "Details" column and paste it into an internet search for "ClamAV false positive {pasted signature}". If it is a false positive, someone has likely already reported the issue.
    -   You can also test the file with different virus scanners.
3.  If the file is still being blocked, and you have found additional evidence that it is benign, you can bypass the virus scanner by uploading the file from the `/designer` interface, in the **Documents** tab. This bypass does not work for News entries, but it can be used to fix mission-critical process tasks by manually updating process variables.

### Unscanned files

In the event of a file failing to scan, the file is still uploaded, and the file details are added to `/logs/audit/unscanned_files.csv` for auditing purposes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...