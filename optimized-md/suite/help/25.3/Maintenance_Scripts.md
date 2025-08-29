---
source_url: https://docs.appian.com/suite/help/25.3/Maintenance_Scripts.html
original_path: Maintenance_Scripts.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Maintenance Scripts

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

The following scripts are used to simplify common tasks involved with administering Appian.

| Script Name | Purpose | Files |
| --- | --- | --- |
| Change Paths | Change paths for web content, forums, and notes | /\_admin/\_scripts/tools/change-paths.sh (.bat) |
| Copy Appian Files | Copies KDBs and \_admin data to a given folder | /\_admin/\_scripts/tools/datamaintenance/aecopyfiles.sh(.bat)
/\_admin/\_scripts/tools/datamaintenance/examples/copyAllButTopFiveRepos.sh(.bat)
/\_admin/\_scripts/tools/datamaintenance/antScripts/aecopyfiles.xml |
| Delete Appian Files | Deletes KDBs (used for maintenance) | /\_admin/\_scripts/tools/datamaintenance/aedeletefiles.sh(.bat)
deleteAllButTopFiveRepos.sh(.bat)
/\_admin/\_scripts/tools/datamaintenance/antScripts/aedeletefiles.xml |
| Delete Search Files | \--- | /\_admin/\_scripts/tools/datamaintenance/aedeletesearchfiles.sh(.bat)
deleteAllButTopFiveSearchFiles.sh(.bat)
/\_admin/\_scripts/tools/datamaintenance/antScripts/aedeletesearchfiles.xml |
| Search Index | Creates search index for Lucene | /\_admin/search/create-search-index.sh(.bat)
update-search-index.sh(.bat) |
| Exports | Contains system variables (other scripts in server use it) | /server/\_scripts/exports.sh(.bat) |
| Start/Stop Appian | Start/Stop Appian or one of its servers | /services/bin/start.sh(.bat)
/services/bin/stop.sh(.bat) |
| Create KDBs | Create KDBs for each server | /server/\_scripts/analytics/create.sh(.bat)
/server/\_scripts/channels/create.sh(.bat)
/server/\_scripts/collaboration/create.sh(.bat)
/server/\_scripts/design/create.sh(.bat)
/server/\_scripts/exec/create.sh(.bat)
/server/\_scripts/forums/create.sh(.bat)
/server/\_scripts/metadata/create.sh(.bat)
/server/\_scripts/notifications/create.sh(.bat)
/server/\_scripts/personalization/create.sh(.bat)
/server/\_scripts/portal/create.sh(.bat)
 |
| Diagnostic Tools | Server diagnostic tools | /services/bin/status.sh(.bat)
/server/\_scripts/diagnostic/convert\_l\_to\_text.sh(.bat)
/server/\_scripts/diagnostic/validate.sh(.bat) |
| LicInfo | License Information | /\_admin/\_scripts/licinfo.sh(.bat) |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...