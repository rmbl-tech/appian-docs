---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/maven-setup.html
original_path: rpa-9.17/maven-setup.html
version: "25.3"
title: "Maven Setup"
page_id: "rpa-9.17/maven-setup"
section: "Download Maven"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Maven Setup

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

You'll need to set up your local development environment to build, modify, and debug your robotic tasks. This page discusses how to set up Maven to develop and deploy robotic tasks. Remember that by using the [Configurator](configurator.html), Maven configuration (including the _settings.xml_) is done automatically. But if you prefer to set up Maven on your own, you can use this page to guide you through that process.

## Download Maven

[Maven](https://maven.apache.org/download.cgi) is a free software that developers must have installed on their Appian RPA development machine.

We recommend downloading the ZIP file containing the binaries. The only thing to do is unzip it in the desired folder on your machine. Appian recommends adding the bin folder to the `Path` system variable, so that the Maven command can be executed from any directory on the computer.

![2235075.png](images/2235075.png)

After you download and unzip the Maven file, use the command `mvn -version` in the terminal to check your installed version of Maven.

## Configure Maven

After you download Maven and confirm it's the correct version, configure the _settings.xml_ file to work with Appian RPA. In this section, we describe what each part of the code does and provide examples for how this file should appear.

### Declare repositories in settings.xml

You need to configure the Maven repositories for Appian RPA to work properly.

Three repositories need to be set up:

-   one to have access to the Appian RPA API
-   one to have access to plugins
-   one to deploy the binaries of the robotic tasks you develop

The repositories don't need to be separate. You'll need the path to your Console repository.

**Note:**  Contact your Appian RPA administrator for information about the Maven repositories you need to connect to.

First, configure the repositories containing the dependencies, libraries, and plugins required to build and deploy robots.

If the file _settings.xml_ doesn't exist in your local Maven repository (usually located on folder _${user.home}/.m2/repository_), you can create it. In this configuration file, you must add a new profile in the `<profiles>` element, replacing the URL for the one corresponding to the Maven repository of your organization. This file should not be confused with the file located in the Maven installation (_${maven.home}/conf/settings.xml_).

Here is an example of how the dependencies repository (`<repositories>` element), plugins repository (`<pluginRepositories>` element), and deployment repository (`<distributionManagement>` element) are specified:

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
<profile>
  <id>jidoka-repo</id>
  <repositories>
    <repository>
      <id>jidoka</id>
      <url>repo_url</url>
      <releases>
        <enabled>true</enabled>
      </releases>
      <snapshots>
        <enabled>true</enabled>
      </snapshots>
    </repository>
  </repositories>
  <pluginRepositories>
    <pluginRepository>
      <id>jidoka</id>
      <url>repo_url</url>
      <releases>
        <enabled>true</enabled>
      </releases>
      <snapshots>
        <enabled>true</enabled>
      </snapshots>
    </pluginRepository>
  </pluginRepositories>
  <distributionManagement>
    <repository>
      <id>training</id>
      <url>repo_url</url>
      <layout>default</layout>
    </repository>
  </distributionManagement>
</profile>
```

In this example, replace `repo_url` with the real URL of the Maven repository included in your Appian RPA installation.

If the robotic task needs any dependency that is neither public nor Appian RPA's, such as a utility library, this dependency should be within the dependencies repository, since the platform resolves them in the following order:

1.  Maven central repository
2.  Appian RPA repository
3.  Dependencies repository

#### Repository authentication

Repositories require authentication. In Appian RPA, you'll use your Appian username and an API key to authenticate with the Maven repository built into the RPA Console. To find your API key, go to the Appian RPA Console. Click the gear icon and click **Refresh Maven Key**. The key is displayed. Note that this is the only time you'll be able to view and copy this specific key.

You'll need to include your API key in the `<servers>` element of the `settings.xml` file. Add the following XML fragment, replacing the values for elements `<username>` and `<password>` with your details.

```
1
2
3
4
5
<server>
  <id>jidoka</id>
  <username>appian_username</username>
  <password>maven_API_key</password>
</server>
```

For Maven to associate these credentials with any repository, the identifiers (`<id>` elements) for each of them must match. In our case, this identifier is `jidoka` and it appears both in the elements relative to repositories, `<repositories>`, `<pluginRepository>` and `<distributionManagement>`, and inside the element `<server>`.

#### Maven commands

Using this configuration, your Maven commands that use the `jidoka-repo` profile will be able to access the repositories. You won't need to set up repositories for each project within the `pom.xml` file, although you would have to specify the profile modifier, `-Pjidoka-repo`, for each execution. When you [set up the Maven project](#create-the-maven-project), your first robot is created from the archetype provided, for which it is required to specify the _jidoka-repo_ profile.

To deploy, use: `mvn clean deploy -Pjidoka-repo`

To package, use: `mvn package -Pjidoka-repo`

To clean, use: `mvn clean -Pjidoka-repo`

After your project is generated from the archetype, it won't be necessary to specify this profile again explicitly in each Maven execution. You don't have to worry about the POM setup of each generated project, thus making it easier to execute Maven commands without using the profile option:`-P`.

#### References to the pom.xml file

Our robots' configuration is meant to be as light as possible, delegating a part of it to its parent POM. [More on POM](https://maven.apache.org/guides/introduction/introduction-to-the-pom.html).

To access it, the repositories must be included in your robotic task's POM. As mentioned earlier, you could achieve this by using the option `-Pjidoka-repo`, but for easier use, your projects POM already have the necessary configuration.

This configuration is included in the profile _jidoka-repo_, that overwrites the one previously defined in the file _${user.home}/.m2/repository/settings.xml_.

Once you have created your first robotic task, you'll be able to check all this configuration in the generated POM.

### Example settings.xml file

The example snippet below shows what your `settings.xml` file might look like after configuration. As you review the example, keep in mind:

-   In each `<url>` element inside `<repositories>`, you'll replace `repo_url` with the real URL of the repository included in your Appian RPA installation.
-   You'll also need to change `<username>appian_username</username>` and `<password>maven_API_key</password>` with your repository credentials.
-   The value of the element `<id>SERVER_ID</id>` must be the same both in `<server>` and in every repository inside `<repositories>.`

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
<?xml version="1.0" encoding="UTF-8"?>

<!--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">

  <servers>

    <!-- Server authentication information. This is used to access the repositories listed below -->
    <server>
      <id>SERVER_ID</id> <!-- Name/ID used to refer this server credentials -->
      <username>appian_username</username> <!-- Your Appian user name -->
      <password>maven_API_key</password> <!-- Your Maven API key -->
    </server>

  </servers>

  <profiles>

    <!-- Jidoka profile -->
      <profile>
      <!--
       | This ID will be used as reference in order to make use of the following repositories. You will
       | use it when creating your first robot with the mvm command line tool using the "-P" flag.
      -->
      <id>jidoka-repo</id>
      <repositories>
        <repository>
          <id>SERVER_ID</id> <!-- This must match with one of the servers IDs defined before -->
          <!--
           | This URL refers to the server containing all the dependencies required to create the
           | base robot. Your credentials given before will be used to access this server.
           | The literal #subdomain# must be replaced with your
           | instance. You may need to replace the full URL.
          -->
          <url>https://#subdomain#.appiancloud.com/#repo_url#/</url>
          <releases>
            <enabled>true</enabled>
          </releases>
          <snapshots>
            <enabled>true</enabled>
          </snapshots>
        </repository>
      </repositories>

      <pluginRepositories>
        <pluginRepository>
          <id>SERVER_ID</id> <!-- This must match with one of the server IDs defined before -->
          <!--
           | Same as above, your credentials will be used once again to access this server.
          -->
          <url>https://#subdomain#.appiancloud.com/#repo_url#/</url>
          <releases>
            <enabled>true</enabled>
          </releases>
          <snapshots>
            <enabled>true</enabled>
          </snapshots>
        </pluginRepository>
      </pluginRepositories>
    </profile>

  </profiles>

</settings>
```

This file must be copied into the ${user.home}/.m2 folder, in our case _C:\\Users\\jidoka\\.m2_.

## Create the Maven project

Appian recommends using the example Maven archetype provided. It is a basic archetype, which already includes the setup to access the libraries and dependencies of the modules (`pom.xml`) and a basic robotic task.

### Step 1: Generate the project

The first step will be to generate the project from this Maven archetype. Choose a folder in which your projects will be saved and open a terminal session (_Unix_) or command prompt (_Windows_).

**Caution:**  Don't use PowerShell for Windows environments due to compatibility issues with Maven.

You should also consider that to use the repository with Maven, the command for generating the project from the archetype needs the profile modifier with its id `jidoka-repo` (`-Pjidoka-repo`). If you don't use it, you will probably get some errors in the resolution of the dependencies, since they can't be downloaded from any repository but Appian RPA's.

This is the only place where you need to specify the profile in the command. After this, when you work on our project, you don't have to worry about the required configuration for dependencies resolution, since the default profile defined in the `pom.xml`, jidoka-repo, will have the repositories properly setup.

### Step 2: Specify project details

At this point, the next step is to run the following Maven command. You should replace the group, the artifact id, the version and the URL to our repository, with the values for the robotic task you'll work on.

```
1
mvn archetype:generate -B -DarchetypeGroupId=com.novayre.jidoka.robot -DarchetypeArtifactId=robot-archetype -DarchetypeVersion=x.y.z -DgroupId=com.novayre.jidoka.tutorial -DartifactId=robot-developmentguide-first-robot -Dversion=0.0.1 -Drepository=<mydomain>/rpa/repo/ -Pjidoka-repo
```

If successful, Maven will download the archetype from the Appian RPA repository to the local environment and will create the project.

Let's break down the command into its functional pieces:

-   `archetype:generate`: creates a Maven project from an existing template.
-   `-B`: runs Maven in batch mode without interacting with the user.
-   `-DarchetypeGroupId=com.novayre.jidoka.robot`: parameter `-D` is used to define a property, in this case archetypeGroupId, which is the identifier of the group to which the archetype belongs.
-   `-DarchetypeArtifactId=robot-archetype`: `archetypeArtifactId` is the unique archetype's name, in this case robot-archetype.
-   `-DarchetypeVersion=X.Y.Z`: is the third property, used to find the archetype version you want to use, for example "3.7.0."

These properties are provided by your company's Appian RPA administrator:

-   `-DgroupId`: the package you want to create. It follows the _inverted domain-name_ naming convention, and typically the company's domain name is used. For example: com.mycompany. In the example above, this is `com.novayre.jidoka.tutorial`.
-   `-DartifactId`: the project's unique name inside the group, used to create, for example, the JAR file.
-   `-DversionId`: our project's version.
-   `-Drepository`: complete URL to the Maven repository set up to download the dependencies. The URL should look like this: `<mydomain>/rpa/repo/`.

This command will generate a Maven project called `robot-developmentguide-first-robot` from the archetype `robot-archetype` in the folder from which you have launched the command. The folder structure of the resulting project is the standard Maven structure:

![951593.png](images/951593.png)

In the `pom.xml` file of the generated project, the value of the tag id for each created repository contains the value `jidoka`. This value must be the same as the id of the server configured in our `settings.xml` file. What really matters is not the value itself, but both of them being equal.

An example of a right configuration for both files would be:

**settings.xml**:

```
1
2
3
4
5
<server>
    <id>jidoka</id>
    <username>appian_username</username>
    <password>maven_API_key</password>
</server>
```

**pom.xml**:

```
1
2
3
4
5
6
7
8
9
<repositories>
    <repository>
        <id>jidoka</id>
        <url>repo_url</url>
        <releases>
            <enabled>true</enabled>
        </releases>
    </repository>
</repositories>
```

### Step 3: Package the project

The last step in our configuration is to package the project and make sure that the operation ends with no errors.

Go to the folder where the archetype was downloaded or the folder of our Maven project for our first robotic task. In this case, Maven will also download the necessary dependencies from the repository.

```
1
mvn clean package -Pjidoka-repo
```

Don't forget that the profile modifier, -P, must be used to make Maven download the appropriate dependencies from the Maven server.

## Next steps

After you create the Maven project, you're ready to [import it to your IDE](IDE-setup.html).

To execute your first robotic task during development, you'll need to ensure the following steps are also complete:

-   Set up [robots](robots.html) where you want the robotic tasks to run.
-   Execute the [agent](agents.html) on the host machine where your robotic task will run. Remember that although you could use the same machine for developing and executing the robots, it is strongly recommended that the development machine and the host machine be different. It's also recommended to run the agent in a separate folder, since several files and folders will be created to make it work properly, as well as the robots it manages.
-   Assign [permissions and tags](security-rpa.html) to users, robots, and robotic tasks to ensure proper security and visibility in the console. Usually, you must assign the same permission to your user and to the components you create, such as robots, robots, libraries, credentials, etc.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...