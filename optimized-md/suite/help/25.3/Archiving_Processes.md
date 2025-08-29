---
source_url: https://docs.appian.com/suite/help/25.3/Archiving_Processes.html
original_path: Archiving_Processes.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Considerations for Archiving Processes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

After a process is completed or canceled, it can be archived. Once a process is archived, the data it contains is no longer available for reporting.

Users with appropriate access would still be able to view the history of an archived process in the [Process Activity](monitoring_view.html#process-activity) tab under the [**Monitor** view](monitoring_view.html) for auditing purposes.This feature is enabled for Appian Cloud sites created with version Appian 21.1+. If you are an Appian Cloud customer and do not see archived processes, contact Appian Support. For self-managed customers, follow the steps [here](Configuring_Archived_Processes.html).

The default archive interval is seven days after process completion. A process model's archival setting can be set on the [Data Management tab](process-model-object.html#data-management-tab) in the Process Modeler.

## Considerations

Most completed processes are not needed for system-wide reporting and therefore serve no essential purpose once they've finished processing. Archiving or deleting processes is a good way to clear out unneeded processes and minimize the size of the Appian databases.

**Auto-archiving** is a default option for processes with data and metadata that need not be retained after completion. Archiving merely provides an option for subsequent unarchiving if legal/regulatory requirements mandate recovery of process information. This setting (7 days) can be changed by the system administrator. Any interval set on the Data Management tab also overrides the default setting for a single Process Model.

**Auto-deletion** should only be selected for processes that never require the viewing of data or metadata after completion. No trace of deleted processes remain in Appian, once deleted. This option provides maximum space savings in Appian databases (KDBs) and on disk.

If you need to keep a permanent record of process data after completion, process data can be mapped to a separate reporting process or exported to an RDBMS. Process archives contain a great deal of information regarding execution history that becomes unnecessary overhead when performing business-activity reporting.

Archives can be used to provide an audit trail of process execution, but this feature must be implemented with careful consideration of your storage requirements. In general, you should not keep all of your archive files. Doing so can be costly in disk-space usage.

See [Managing Process Archives](Managing_Process_Archives.html) for more information on how to run the `archiveprocess` script, unarchive processes, and configure other archive settings.

### Subprocesses

Setting an archive or deletion interval on a subprocess is the same as for any other process. There are additional issues to consider, however.

-   When setting an archive or deletion interval for completed subprocesses, take care not to remove data needed by a parent process before that process completes or before all reporting requirements are met.
-   You might need to redesign the subprocess so that all data is passed back to the parent process, if you need to archive or delete the subprocess on a different schedule than the parent-process.

### Policy considerations

Archiving a process frees system memory, but impacts your reports. The data in an archived processes is no longer available for reporting purposes.

If you keep archives of each process, have your system administrator schedule the [cleanup script](Data_Maintenance.html#cleanup-script) to remove archive files after they are no longer needed.

### Historical data

If you have key performance indicators that must be reported on historically, consider creating a separate process for storing this information.

### Auditing

Whenever a process is archived or deleted, the event will be recorded in the [removed\_processes](Logging.html#removed-processes) log.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...