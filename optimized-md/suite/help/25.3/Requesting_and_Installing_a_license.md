---
source_url: https://docs.appian.com/suite/help/25.3/Requesting_and_Installing_a_license.html
original_path: Requesting_and_Installing_a_license.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How to Request and Install Appian Product License Files

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

**Note:**  These steps are for acquiring and installing licenses for Appian 25.3.

This document outlines the procedure to request and install temporary and long-term Appian product license files. Every time the product license is provided by Appian, it will be in the form of two separate files with the same expiry date. Depending on the request, both the license files (`k3.lic` and `k4.lic`) could be of the temporary or long-term type.

## License types and what they mean

### Temporary license

Temporary license files are only valid for 6 days and can be used on any server as long as the operating system matches.

This type of license files should be requested in one of the following scenarios:

-   A new server is being set up for the first time.
-   A long-term license has expired and you want to renew it.

### Long-term license

Long-term license files are valid for an extended period of time and can only be used on the server that they were requested for.

This type of license files should be requested in one of the following scenarios:

-   You have already obtained temporary license files to set up a new server.
-   Your existing long-term license files are about to expire and you want to proactively request replacements.

## Steps to request and install license files

### Generating the q output

In order to request long-term license files, information about system configuration is needed which can be obtained by running the q executable.

**Note:**  If you already have a valid license (k4.lic) in the directory and want to generate the output containing the system configuration, the k4.lic file needs to be removed from the directory before running the q executable.

To generate the q output, navigate to the following location:

-   Linux: `<APPIAN_HOME>/data-server/engine/bin/q/l64/`
-   Windows: `<APPIAN_HOME>\data-server\engine\bin\q\w64\`

Use the following commands to run the executable:

-   Linux: `QHOME=.. ./q`
-   Windows: `set QHOME=..&& .\q.exe`

If there is no valid temporary or long-term k4.lic license file already installed, you will get an output containing the system configuration and `’k4.lic` printed on the last line. The output will look similar to this:

```
1
2
3
4
5
6
KDB+ 3.5 2017.06.19 Copyright (C) 1993-2017 Kx Systems
	l64/ 8()core 15129MB *user* myhost.acme.com 192.168.1.1

'K4.lic

```

Copy the output of the command to a text file and save it for future reference. You will need the copied output in order to request the long-term license files and to renew the license files in future.

Since long-term license files can take 4-5 business days to obtain, you can first create a request for temporary license files to continue the setup. Then, you can create a request for long-term license files using the output copied after running the q executable. You can also request for temporary and long-term license files together.

### Requesting license files

The License Management Application allows registered users on Forum to request temporary and long-term product license files to install Appian. Perform the following to request the license files:

1.  Go to the [Licenses](https://forum.appian.com/suite/sites/licenses) site and log in using your Community credentials.
2.  Fill the form according to your requirements and submit the form.
    -   If you are your organization's primary POC (point of contact), then the Appian license administrators will review your request and provide you with the license files or the next steps required to generate the long-term license files. You will receive these steps in the form of a task on Forum.
    -   If you are not your organization's primary POC, then the request will first go to your organization's POC who will have to approve this request. If the POC approves the request, the Appian license administrators will review the request and provide you the license files or the next steps required to generate the long-term license files.
3.  The license files will be delivered to you in the form of a task on Forum which allows you to download them.

Note that generating the long-term license files can take up to 4-5 business days.

### Installing the license files

The steps to install temporary license files and permanent license files are the same. Licenses are hot-deployable, so you need not stop the Appian components to install a license. You can download and extract the license files from the zip shared with you via task and perform the following steps:

1.  Copy the `k3.lic` file into one of the following directories, depending on your operating system:
    -   Linux: `<APPIAN_HOME>/server/_bin/k/linux64/`
    -   Windows: `<APPIAN_HOME>\server\_bin\k\win64\`
2.  Navigate to the directory in which the license was installed and run
    -   Linux: `./k`
    -   Windows: `k.exe`
3.  If a valid license cannot be found, the message `k3.lic` displays.
4.  If a valid license is found, the system configuration output is displayed in the banner.

    **Note:**  This behavior is different compared to the q executable. In that case, the system configuration output is generated if the license is invalid.

5.  Type `\\` then **Enter/Return** to exit.
6.  Copy the `k4.lic` file into one of the following directories, depending on your operating system:
    -   Linux: `<APPIAN_HOME>/data-server/engine/bin/q/l64/`
    -   Windows: `<APPIAN_HOME>\data-server\engine\bin\q\w64\`
7.  Navigate to the directory in which the license was installed and run
    -   Linux: `QHOME=.. ./q`
    -   Windows: `set QHOME=..&& .\q.exe`
8.  If a valid license cannot be found, the system configuration output along with `’k4.lic` is displayed.
9.  If a valid license is found, the output is a one-line message starting with the current timestamp.

If output with system configuration and `‘k4.lic` is printed after installing the new license file and running the q script, it could be because of one or more of the following:

-   The operating system for which this license was created is different from the operating system on which the license is installed.
-   The CPU count requested for this license is lower than the number of CPUs of the machine on which the license is installed.
-   The FQDN (Fully Qualified Domain Name) requested for this license is different from the FQDN of the machine on which the license is installed.
-   The license was not extracted properly and installed in the correct folder.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...