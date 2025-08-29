---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Application_Checkpointing.html
original_path: Configuring_Application_Checkpointing.html
version: "25.3"
title: "Configure Checkpointing"
page_id: "Configuring_Application_Checkpointing"
section: "Automatic engine restarts"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Checkpointing

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

Appian engines are real-time in-memory (RAM) databases that also persist all data (database and transaction log) in a file on disk. These database files have the extension .kdb. We refer to them as KDB files, which must be treated as a set. Each write transaction is applied immediately to the engine in memory and saved to the transaction log.

When a checkpoint completes, the engine state in memory is written to disk as a KDB file and the current point in the transaction log is marked to note the new starting point for replaying transactions. Each checkpoint writes out a new KDB file with a new number appended to the KDB file name. For example, the name of a personalization engine KDB file that has not been checkpointed is `ag0.kdb`, but after checkpointing there will be a new KDB file named `ag1.kdb`. KDB file numbers may increase by more than one for each checkpoint. Files with a higher number are guaranteed to have come after earlier numbered files. When a checkpoint occurs, the old KDB file is left unmodified but is compressed and moved to the `services/data/archived/` directory. By default, the two most recent KDB files for each engine are kept. Any older versions are deleted to preserve disk space. The number of KDB files that are kept can be configured using the property `serviceManager.checkpoint.archives.keep` in `custom.properties`. If the number of archived KDB files to keep is configured to fewer than two, the configured value will be ignored and two will be kept instead.

During a KDB checkpoint, a temporary `*.writing` file is created in the `services/data/temporary/`, which gets deleted when the checkpoint is completed. If the checkpoint fails for any reason, the `*.writing` file may remain on the file system. All pending transactions wait in the queue or timeout, depending on how checkpointing is configured.

While an engine is checkpointing, that engine is unavailable to service transactions from the application server and transactions wait in the queue until the checkpoint is completed or the transaction times out. If there are [multiple instances of an engine](High_Availability_and_Distributed_Installations.html), only one of them will become unavailable because of the checkpoint, leaving the remaining copies to service requests. If you see transactions timeout during checkpointing, Appian recommends [adding more copies of the relevant engines](Scaling_Appian.html#add-engine-replicas).

For sites that only run one instance of each engine, Appian recommends checkpointing outside of regular business hours to avoid disruption of service. For sites that have [multiple instances of each engine](High_Availability_and_Distributed_Installations.html), Appian recommends keeping the default [checkpoint scheduling configurations](#configuring-checkpointing-frequency).

A proper shutdown of the engines automatically completes a checkpoint. An improper shutdown (such as an abrupt stop using the kill command, a power outage, or an OS shutdown) of the engines does not complete a checkpoint.

When an Appian engine starts up, it loads the KDB file into memory and applies any transactions from the transaction log that had not already been applied to that KDB file.

If there has been a long duration since the last checkpointing of the engines, a large number of transactions may need to be loaded upon start-up, which can lead to increased startup time.

The memory consumed by the engine is utilized both for storing data and for processing data.

## Automatic engine restarts

For long-running systems, it's normal for cached data to accumulate in the engine over time. In order to keep engine execution lean and avoid this accumulation of stale data, engines automatically restart during [checkpointing](Configuring_Application_Checkpointing.html) given the proper, safe conditions. These restarts will occur without any noticeable change in behavior or system outages. Automatic restarts occur on all [highly available](High_Availability_and_Distributed_Installations.html) sites including those which are self-managed.

## Manually creating a checkpoint

The [checkpoint script](Service_Manager_Scripts.html#checkpoint-script) can be executed manually whenever there is a need.

## Configuring checkpointing frequency

Appian schedules checkpoints automatically based on the amount of time since the last checkpoint and the estimated amount of time it would take to replay the transactions since the last checkpoint.

To adjust the thresholds, set the following values in custom.properties:

| Threshold | Property | Default Value | Min Value | Max Value |
| --- | --- | --- | --- | --- |
| Time since last successful checkpoint | serviceManager.checkpoint.automatic.boundary.time | 22 hours | 12 hours | 30 hours |
| Estimated time to replay transaction log from last successful checkpoint | serviceManager.checkpoint.automatic.boundary.replay | 20 minutes | 2 minutes | 30 hours |

The time-based configurations in the table above should be specified in the format "number units." So "5 minutes" or "12 hours." If no units are specified the assumed unit is milliseconds.

A restart is required for changes to these properties to take effect.

While automatic checkpointing cannot be disabled, it is possible to configure these thresholds to avoid triggering checkpoints during business hours. Raise the values in the table above to their max value (30 hours) and run the checkpoint script at an off-peak time of day using a cron job or a scheduled task, which will reset the criteria the automatic checkpoint scheduler uses to trigger checkpoints.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...