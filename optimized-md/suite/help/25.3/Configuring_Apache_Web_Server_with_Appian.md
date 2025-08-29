---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Apache_Web_Server_with_Appian.html
original_path: Configuring_Apache_Web_Server_with_Appian.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Apache Web Server with Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

In a production environment, it is a best-practice to integrate a web server to handle static content. This reduces load on the application servers, which results in faster response times for users. For application security, many Appian installations also use SSL encryption at the web server layer or using a hardware SSL accelerator in front of the web server.

**Tip:**  Due to the potential for negative impact on site performance applying SSL encryption/decryption at the application server level should be tested thoroughly before use in production.

The web server decides whether to handle a request or not based on the request URL's extension (or some other URL pattern). For instance, it is highly likely that we would want the web server to handle requests for JPG files (images), but not JSP files (dynamic pages). This is known as MIME-type filtering.

When the web server encounters a request that it can't handle itself, it passes the request to the application server, returning the application server response to the user. When a web server is configured in this manner, it is acting as a reverse-proxy. Apache and Appian communicate using the AJP13 protocol.

Perform the steps below to configure an Apache HTTP 2.4 Server to selectively handle some requests and pass others to the application server. For this example, we use a Linux operating system and assuming SSL configuration for Apache.

## Pre-requisites

It's impractical to list all of the various configurations between the operating system, web server, and application server. Instead, this guide was created with the following assumptions:

1.  A verified version of [Apache 2.4](https://httpd.apache.org/download.cgi) has been installed.
    -   The root installation path of Apache will hereinafter referred to as `<APACHE_HOME>`
2.  `mod_jk` module (.so file), which can be found here: [tomcat.apache.org](https://tomcat.apache.org/download-connectors.cgi) has been moved into `<APACHE_HOME>/modules`.
    -   Modules are libraries that can be plugged in Apache to offer extended functionality. The `mod_jk` module is used to configure Apache as a reverse-proxy for an application server.
    -   Use `mod_jk.1.2.x.so`. For this example we loaded 1.2.42.
3.  Appian is configured to use 3 separate domains for the primary site URL, static content, and dynamic content as described in [Post-Install Configurations](Post-Install_Configurations.html#configure-your-static-and-dynamic-content-urls)
4.  Apache is using HTTPS, which requires certificates to carry out its encryption routines.
    -   It's assumed that there are 3 certificates, one for each of the domains, and that those certificates have already been created and digitally signed by a commercial certification authority.
    -   If you need to generate and self-sign certificates for testing or training purposes, please follow the [generating a certificate](#generating-a-certificate) instructions before continuing to the next section.
    -   The digitally-signed certificates and keys (`server.key`) should be moved to `<APACHE_HOME>/conf/`
    -   Default port, `443` for HTTPS is being used.
5.  No configurations have been made to Apache that prevents GET, POST, PUT, PATCH, DELETE, HEAD, OPTIONS (only required for cross-origin requests), or CONNECT from being sent to the app server.
    -   These settings are enabled by default and must remain enabled for the Appian software to function properly.

Deviations from these assumptions can still yield a valid web server setup, but additional configuration steps may be required.

## Configure httpd.conf

`httpd.conf` is the primary configuration file for Apache. All of the configurations steps below will be done by updating or adding settings to the `httpd.conf` file.

### Load mod\_JK module

1.  In the `httpd.conf` file, update the pre-loaded modules with the `mod_jk` module:
    -   The module file listed here corresponds to the 1.2.42 modules on Apache Web Server 2.4. Use the appropriate number suffix for different installation modules.

        ```
        1
         LoadModule jk_module modules/mod_jk-1.2.42-httpd-2.4.x.so
        ```

### Enable other modules

Apache comes with several modules pre-loaded that are either enabled or disabled by default. Ensure that your `httpd.conf` file has the following modules enables, by removing the `#` symbol before the `LoadModule` line:

-   `expires_module`
-   `headers_module`

### Setup worker properties

Specific worker properties are configured using the `JKWorkerProperty` directive. Workers will execute servlets on behalf of the web server.

1.  Add the following lines to the `httpd.conf` file:

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
JKWorkerProperty worker.list=LoadBalancer

JKWorkerProperty worker.node1.host=<APPLICATION SERVER IP ADDRESS>
JKWorkerProperty worker.node1.port=8009
JKWorkerProperty worker.node1.type=ajp13
JKWorkerProperty worker.node1.socket_connect_timeout=5000

JKWorkerProperty worker.LoadBalancer.type=lb
JKWorkerProperty worker.LoadBalancer.balance_workers=node1
JKWorkerProperty worker.LoadBalancer.sticky_session=1
```

Even though we're only connecting to a single app server, we're setting load balance properties now for ease of configuration later

### Enable SSL

For application security, many installations opt to use encryption at the web server layer or using an SSL accelerator hardware device in front of the web server. Configuration settings for this option will vary, depending on your environment. This information is provided as an example of one possible configuration. The SSL module (`mod_ssl`) comes pre-installed with Apache 2.4.

#### Configure SSL property settings

1.  In `httpd.conf`, verify that the LoadModule directive: `LoadModule ssl_module modules/mod_ssl.so` is not commented out.
2.  Add the following SSL property settings to `httpd.conf`:

    ```
    1
    2
    3
    SSLRandomSeed startup builtin
    SSLRandomSeed connect builtin
    SSLSessionCache shmcb:/tmp/ssl_gcache_data(512000)
    ```

#### Allow httpd.conf to use SSL information

1.  Add the following properties to `httpd.conf` to allow `mod_jk` to use the SSL information:

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
    # Should mod_jk send SSL information to the application server (default is On)
    JkExtractSSL On
    # What is the indicator for SSL (default is HTTPS)
    JkHTTPSIndicator HTTPS
    # What is the indicator for SSL session (default is SSL_SESSION_ID)
    JkSESSIONIndicator SSL_SESSION_ID
    # What is the indicator for client SSL cipher suit (default is SSL_CIPHER)
    JkCIPHERIndicator SSL_CIPHER
    # What is the indicator for the client SSL certificated (default is SSL_CLIENT_CERT)
    JkCERTSIndicator SSL_CLIENT_CERT
    # Allow all vhost to inherit mounts from the main server (default is Off)
    JkMountCopy All
    ```

### Configure virtual hosts

Apache uses virtual hosts to separate requests for the primary site URL, static content URL, and dynamic content URL. Each virtual host determines which requests should be handled by the web server and which requests should be passed through to the application server.

**Note:**   This configuration example does not use the `JKMount` directive to tell Apache explicitly what to pass on the application server. Instead, it lists only those extensions which the web server should handle with exceptions noted with `!no-jk`. Everything else will be passed on to the application server. This method of configuring `mod_jk` for Apache is simpler and will require fewer changes between upgrades.

#### Site virtual host

This virtual host is used to serve the primary site URL. The **ServerName** directive should match the value used for `conf.suite.SERVER_AND_PORT` in `custom.properties`.

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
<VirtualHost *:443>
  ServerName yourhostname.yourdomain.com
  SSLEngine on
  SSLCertificateFile "<APACHE_HOME>/conf/<yourdomain.com.crt>"
  SSLCertificateKeyFile "<APACHE_HOME>/conf/<yourdomain.com.key>"
  SSLCertificateChainFile "<APACHE_HOME>/conf/<yourdomain.com.crt>"

  DocumentRoot "<APACHE HOME>/www"

  <Location /suite/>
    SetHandler jakarta-servlet
    SetEnv JK_WORKER_NAME LoadBalancer
    SetEnvIf REQUEST_URI "\.css$" no-jk
    SetEnvIf REQUEST_URI "\.eot$" no-jk
    SetEnvIf REQUEST_URI "\.jpg$" no-jk
    SetEnvIf REQUEST_URI "\.js$" no-jk
    SetEnvIf REQUEST_URI "\.html$" no-jk
    SetEnvIf REQUEST_URI "\.png$" no-jk
    SetEnvIf REQUEST_URI "\.xml$" no-jk
    SetEnvIf REQUEST_URI "\.ico$" no-jk
    SetEnvIf REQUEST_URI "\.xsl$" no-jk
    SetEnvIf REQUEST_URI "\.gwt\.rpc$" no-jk
    SetEnvIf REQUEST_URI "\.svg$" no-jk
    SetEnvIf REQUEST_URI "\.htc$" no-jk
    SetEnvIf REQUEST_URI "\.otf$" no-jk
    SetEnvIf REQUEST_URI "\.ttf$" no-jk
    SetEnvIf REQUEST_URI "\.woff$" no-jk
    SetEnvIf REQUEST_URI "\.woff2$" no-jk
    # If the nosniff setting for the X-Content-Type-Options response
    # header is used, omit the SetEnvIf line for .gif extenstions.
    SetEnvIf REQUEST_URI "\.gif$" no-jk

    SetEnvIf REQUEST_URI "/suite/s/" !no-jk
    SetEnvIf REQUEST_URI "/suite/plugins/servlet" !no-jk
  </Location>

  <Location /extras/>
    SetHandler jakarta-servlet
    SetEnv JK_WORKER_NAME LoadBalancer
  </Location>

</VirtualHost>
```

#### Static content virtual host

This virtual host is used to serve the static content domain. The **ServerName** directive should match the value used for `conf.suite.STATIC_SERVER_AND_PORT` in `custom.properties`.

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
<VirtualHost *:443>
  ServerName yourhostname.yourdomain-static.com
  SSLEngine on
  SSLCertificateFile "<APACHE_HOME>/conf/<yourdomain-static.com.crt>"
  SSLCertificateKeyFile "<APACHE_HOME>/conf/<yourdomain-static.com.key>"
  SSLCertificateChainFile "<APACHE_HOME>/conf/<yourdomain-static.com.crt>"

  DocumentRoot "<APACHE HOME>/www"

  <Location /suite/rest/a/content/latest/docview/>
    SetHandler jakarta-servlet
    SetEnv JK_WORKER_NAME LoadBalancer
  </Location>
</VirtualHost>
```

#### Dynamic content virtual host

This virtual host is used to serve the dynamic content domain. The **ServerName** directive should match the value used for `conf.suite.DYNAMIC_SERVER_AND_PORT` in `custom.properties`.

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
<VirtualHost *:443>
  ServerName yourhostname.yourdomain-dynamic.com
  SSLEngine on
  SSLCertificateFile "<APACHE_HOME>/conf/<yourdomain-dynamic.com.crt>"
  SSLCertificateKeyFile "<APACHE_HOME>/conf/<yourdomain-dynamic.com.key>"
  SSLCertificateChainFile "<APACHE_HOME>/conf/<yourdomain-dynamic.com.crt>"

  DocumentRoot "<APACHE HOME>/www"

  <Location /suite/rest/a/content/latest/webcontent/>
    SetHandler jakarta-servlet
    SetEnv JK_WORKER_NAME LoadBalancer
  </Location>
</VirtualHost>
```

### Prevent jsessionid from appearing in the URL

1.  To prevent jsessionid from appearing in a URL, add the following lines to `httpd.conf`:

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
JkStripSession On

<Directory "<APACHE_HOME>/www/suite">
  AllowOverride FileInfo
  Require all granted
</Directory>

<Directory "<APACHE_HOME>/www/suite/WEB-INF">
  Require all denied
</Directory>
<Directory "<APACHE_HOME>/www/suite/dataload">
  Require all denied
</Directory>
```

### Configuring cache settings for Appian content

Add the following properties to `httpd.conf` (updating the Directory tag with your directory path as needed) to aggressively cache unchanging web content and to prevent certain dynamic paths from being cached:

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
<LocationMatch "/suite/JSON-RPC">
  Header set Cache-Control no-store
</LocationMatch>
<LocationMatch "/suite/doc">
  Header set Cache-Control no-store
</LocationMatch>
<LocationMatch "\.(?i:do|bg|popup)$">
  Header set Cache-Control no-store
</LocationMatch>

<Directory "<APACHE_HOME>">
  ExpiresActive On
  <FilesMatch "\.(css|htc|jpg|gif|js|html|png|xml|ico|xsl|gwt\.rpc|otf|eot|svg|tff|woff|woff2)$">
    Header set Access-Control-Allow-Origin "*"
    ExpiresDefault "now plus 1 hour"
  </FilesMatch>
  <Files "*.cache.html">
    ExpiresDefault "now plus 1 day"
  </Files>
  <FilesMatch "\.cache\.(js|css|less)">
    ExpiresDefault "now plus 1 year"
  </FilesMatch>
  <Files "*.nocache.js">
    ExpiresDefault "now"
    Header set Cache-Control "max-age=0, must-revalidate"
  </Files>
</Directory>
```

## Copy web resources to the web server

Since the web server will be handling requests for web resources and forwarding all other requests to the application server, you need to copy over the files that ship with Appian.

1.  In `<APACHE HOME>` create a the following folder structure `www/suite`. This will be the home for content read by the web server.
2.  Copy all of the files from the `<APPIAN_HOME>/deployment/web.war` directory to `www/suite`.

**Tip:**  If the web server is on a separate machine than the application server, a common configuration, these files will need to be copied to that location on the other machine.

## Configure URL properties in Appian

Once Apache has been enabled, all requests are sent directly to the web server. The `SERVER_AND_PORT` , `STATIC_SERVER_AND_PORT`, and `DYNAMIC_SERVER_AND_PORT` properties must be configured to point to the web server.

1.  Open the `custom.properties` configuration file in the following location: `<APPIAN_HOME>/conf/`.
2.  Ensure the `SCHEME` property is set to the following: `conf.suite.SCHEME=https`
3.  Ensure the `SERVER_AND_PORT` property is set to the following: `conf.suite.SERVER_AND_PORT=<WEB_SERVER_HOST>`
4.  Ensure the `STATIC_SERVER_AND_PORT` property is set to the following: `conf.suite.STATIC_SERVER_AND_PORT=<WEB_SERVER_STATIC_HOST>`
5.  Ensure the `DYNAMIC_SERVER_AND_PORT` property is set to the following: `conf.suite.DYNAMIC_SERVER_AND_PORT=<WEB_SERVER_DYNAMIC_HOST>`

**Note:**  Only include the port in the SERVER\_AND\_PORT parameter in your custom.properties file when **not** using the default HTTPS port (443). Specifying the default port may result in users receiving 401 errors. For more information, see [Appian KB-1011](https://community.appian.com/support/w/kb/237/kb-1011-401-error-thrown-when-attempting-to-access-appian-after-configuring-a-web-server).

See [Post-Install Configurations](Post-Install_Configurations.html#configure-your-static-and-dynamic-content-urls) for more details on configuring these properties.

## Verify your settings

Start (or restart) Apache and check that results in a web server that is listening on port `443`, with HTTPS enabled.

## Optional configurations

### Load balancing multiple application servers

In the configurations above, only one application server is being used. If you want to configure two or more application servers for failover and load balancing, add a definition corresponding to each application server ensuring that the AJP port is the same for each server based on the following example:

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
JKWorkerProperty worker.list=LoadBalancer
#node1
JKWorkerProperty worker.node1.host=<APPLICATION SERVER 1 IP ADDRESS>
JKWorkerProperty worker.node1.port=8009
JKWorkerProperty worker.node1.type=ajp13
JKWorkerProperty worker.node1.socket_connect_timeout=5000
#node2
JKWorkerProperty worker.node2.host=<APPLICATION SERVER 2 IP ADDRESS>
JKWorkerProperty worker.node2.port=8009
JKWorkerProperty worker.node2.type=ajp13
JKWorkerProperty worker.node2.socket_connect_timeout=5000
#LoadBalancer worker
JKWorkerProperty worker.LoadBalancer.type=lb
JKWorkerProperty worker.LoadBalancer.balance_workers=node1,node2
JKWorkerProperty worker.LoadBalancer.sticky_session=1
```

The `balanced_workers` property now lists `node1` and `node2`. When deploying Appian via the [configure script](Configure_Script.html#configure-tomcat-clustering-by-specifying-a-node-name), ensure that the names you use in the `Configure Tomcat clustering by specifying a node name` step match the node names specified here.

### Setup a redirect

It is generally a good idea to redirect all the non-HTTPS traffic on port `80` through the HTTPS port. To do so, add the following lines to the `httpd.conf` file:

```
1
2
3
4
5
6
<VirtualHost *:80>
ServerAlias *
RewriteEngine on
RewriteCond %{SERVER_PORT} !^443$
RewriteRule ^/(.*) https://%{SERVER_NAME}/$1 [L,R]
</VirtualHost>
```

### Configure Timeout and KeepAlive

One common scenario is when a firewall exists between the web server and the application server, inactive connections can get dropped. KeepAlive will tell the Operating System to send KEEP\_ALIVE messages on inactive connections, preventing the firewall from severing inactive connections. For improved performance, add (or change if already present) the following properties to the `httpd.conf` file:

```
1
2
3
Timeout 300
KeepAlive On
KeepAliveTimeout 60
```

### Configure compression using the deflate module

One option for maximizing scalability is to compress the javascript, .CSS, and plain text files served by Appian, which reduces the bandwidth they consume. This is done using the Apache compression module, called the `deflate` module, or `mod_deflate.so`.

Append the following lines to the `httpd.conf` file, which enables the compression for all JS, CSS, HTML and plain text files:

```
1
2
3
4
5
6
 #Load compression module
 LoadModule deflate_module modules/mod_deflate.so
 #This filter indicates the MIME types to compress (javascript, css, plain text (used by the Process Modeler) and html.
 AddOutputFilterByType DEFLATE text/plain text/html text/javascript application/x-javascript application/javascript text/css text/xml application/json application/atom+json application/vnd.appian.tv.ui+json
 #Compression level 6 is the optimal setting.
 DeflateCompressionLevel 6
```

#### About compression levels

-   `DeflateCompressionLevel` specifies the level of compression used. The higher the value, the better the compression.
-   CPU usage also increases with each setting level.
-   In testing with Appian files, the average file-size reduction achieved when moving from level 1 to level 6, was 50 KB. The average compression achieved moving from level 6 to level 9, was an additional 1 KB. This is why compression level 6 is listed as the optimal setting.

To learn more about [DeflateCompressionLevel](https://httpd.apache.org/docs/2.2/mod/mod_deflate.html#deflatecompressionlevel), checkout the Apache documentation regarding `mod_deflate`

### Generating a certificate

If you need a certificate and key for HTTPs, follow these steps to generate on. These steps are using an [OpenSSL](https://www.openssl.org/) package installed locally to generate a certificate. For enterprise installations, obtaining a digitally signed certification should be obtained through different means.

1.  From the command prompt, switch to the `/bin` directory in your OpenSSL directory.
2.  Create a private key for our server and (based on that key) create a certificate signing request (CSR).
3.  Set the path of the `openssl.cnf` file using: `set OPENSSL_CONF=/path/to/openssl.cnf`
4.  Type the following into the command prompt: `<OPENSSL_INSTALL>\bin\conf>openssl req -config openssl.cnf -new -out server.csr`.
5.  The OpenSSL program asks you a series of questions used to generate the certificate. When prompted for the `Common Name` to be used on the certificate, be sure to enter your domain name. Otherwise, browsers issue security warnings to your users.
    -   This creates a private key (`privkey.pem`) and a signing request (`server.csr`).
6.  Create a key file that contains the server's private key without a passphrase: `<OPENSSL_INSTALL>\bin\conf>openssl rsa -in privkey.pem -out server.key`
7.  Sign the CSR that we created in the first step.
    -   For this example, we create the certificate file ourselves named `server.crt` by entering the following command: `<OPENSSL_INSTALL>\bin\conf>openssl x509 -in server.csr -out server.crt -req -signkey server.key -days 365`.
8.  The certificate (`server.crt`) and key (`server.key`) key files can now be used by Apache.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...