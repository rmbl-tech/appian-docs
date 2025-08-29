---
source_url: https://docs.appian.com/suite/help/25.3/Log_Collection_Script.html
original_path: Log_Collection_Script.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Log Collection Script

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Purpose

The different systems in an Appian installation generate a variety of log files. These log files are also periodically rotated. The log collection tool provides a simple way to collect the standard selection of log files Appian Technical Support has found useful for debugging purposes and compress them into a single archive. By default, the log collection tool will only collect those files which do not potentially contain business data (such as rule, function, and data store names). The script also provides an option to collect additional log files which may contain this business data.

## Location

`<APPIAN_HOME>/_admin/_scripts/tools/log-collection.sh (.bat)`

## Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-d | \--dir | No | Path to the log directory for the Appian installation. Defaults to `<APPIAN_HOME>/logs`. |
| \-f | \--full | No | Collects logs in greater detail. This may include elements of business data (rule, function, and data store names, etc). A warning is given before use. |
| \-q | \--quiet | No | Suppress script output, including acquiescence to full log collection if selected |
| \-h | \--help | No | Show usage information |

## Usage

For Linux environments

```
1
log-collection.sh [-d path/to/ae/logs] [-f] [-q]
```

or for Windows environments

```
1
log-collection.bat [-d path/to/ae/logs] [-f] [-q]
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...