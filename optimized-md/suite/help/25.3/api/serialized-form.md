---
source_url: https://docs.appian.com/suite/help/25.3/api/serialized-form.html
original_path: api/serialized-form.html
version: "25.3"
---

# Serialized Form

-   ## Package [com.appiancorp.ap2](com/appiancorp/ap2/package-summary.html)

    -   ### Class com.appiancorp.ap2.AGSFieldTag

        class AGSFieldTag extends javax.servlet.jsp.tagext.BodyTagSupport implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_value

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_value

    -   ### Class com.appiancorp.ap2.BookmarksForm

        class BookmarksForm extends [BaseActionForm](com/appiancorp/common/appianwebmvc/BaseActionForm.html "class in com.appiancorp.common.appianwebmvc") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_bookmarks

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_bookmarks

    -   ### Class com.appiancorp.ap2.CacheTag

        class CacheTag extends javax.servlet.jsp.tagext.TagSupport implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_renderAction

                int \_renderAction

    -   ### Class com.appiancorp.ap2.Category

        class Category extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_category

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_category

            -   ##### \_categoryName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_categoryName

            -   ##### \_categoryParent

                int \_categoryParent

            -   ##### \_pageCount

                long \_pageCount

            -   ##### \_subcategories

                com.appiancorp.ap2.Category\[\] \_subcategories

    -   ### Class com.appiancorp.ap2.CreateCategoryForm

        class CreateCategoryForm extends [BaseActionForm](com/appiancorp/common/appianwebmvc/BaseActionForm.html "class in com.appiancorp.common.appianwebmvc") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_parent

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_parent

    -   ### Class com.appiancorp.ap2.CreatePageForm

        class CreatePageForm extends com.appiancorp.ap2.PageForm implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_category

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_category

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

            -   ##### \_group

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_group

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_numZones

                int \_numZones

            -   ##### \_portlets

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_portlets

            -   ##### \_template

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_template

            -   ##### \_type

                int \_type

            -   ##### \_url

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_url

            -   ##### \_wizardId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_wizardId

    -   ### Class com.appiancorp.ap2.DataContextTypeForm

        class DataContextTypeForm extends com.appiancorp.ap2.PageForm implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### dataContextTypeDisplayName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dataContextTypeDisplayName

            -   ##### dataContextTypeId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dataContextTypeId

    -   ### Class com.appiancorp.ap2.ELLaunchTag

        class ELLaunchTag extends com.appiancorp.ap2.LaunchTag implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class com.appiancorp.ap2.EmailGroupForm

        class EmailGroupForm extends [BaseActionForm](com/appiancorp/common/appianwebmvc/BaseActionForm.html "class in com.appiancorp.common.appianwebmvc") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_body

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_body

            -   ##### \_gid

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_gid

            -   ##### \_subject

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_subject

    -   ### Class com.appiancorp.ap2.EscapeJSTag

        class EscapeJSTag extends javax.servlet.jsp.tagext.BodyTagSupport implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class com.appiancorp.ap2.GlobalSearchPortalForm

        class GlobalSearchPortalForm extends [BaseActionForm](com/appiancorp/common/appianwebmvc/BaseActionForm.html "class in com.appiancorp.common.appianwebmvc") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_categoryId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_categoryId

            -   ##### \_page

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_page

            -   ##### \_query

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_query

            -   ##### \_searchId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_searchId

            -   ##### \_searchtype

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_searchtype

    -   ### Class com.appiancorp.ap2.HomePageForm

        class HomePageForm extends com.appiancorp.web.framework.kernel.main.ActionForm implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_friendlyName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_friendlyName

            -   ##### \_homePage

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_homePage

    -   ### Class com.appiancorp.ap2.ImgTag

        class ImgTag extends com.appiancorp.web.framework.taglib.html.ImgTag implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### altBundle

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") altBundle

            -   ##### BUNDLE\_ALT

                int BUNDLE\_ALT

            -   ##### BUNDLE\_LOWALT

                int BUNDLE\_LOWALT

            -   ##### BUNDLE\_NORMAL

                int BUNDLE\_NORMAL

            -   ##### ignoreLowBandwidth

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ignoreLowBandwidth

            -   ##### lowAlt

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lowAlt

            -   ##### lowAltBundle

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lowAltBundle

            -   ##### lowAltKey

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lowAltKey

    -   ### Class com.appiancorp.ap2.IntuitiveUrlPermanentRedirectServlet

        class IntuitiveUrlPermanentRedirectServlet extends com.appiancorp.ap2.IntuitiveUrlServlet implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class com.appiancorp.ap2.IntuitiveUrlServlet

        class IntuitiveUrlServlet extends javax.servlet.http.HttpServlet implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class com.appiancorp.ap2.LaunchTag

        class LaunchTag extends javax.servlet.jsp.tagext.TagSupport implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_href

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_href

    -   ### Class com.appiancorp.ap2.LoginPageServlet

        class LoginPageServlet extends javax.servlet.http.HttpServlet implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class com.appiancorp.ap2.PageForm

        class PageForm extends [BaseActionForm](com/appiancorp/common/appianwebmvc/BaseActionForm.html "class in com.appiancorp.common.appianwebmvc") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_page

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_page

    -   ### Class com.appiancorp.ap2.PagePermissionsForm

        class PagePermissionsForm extends com.appiancorp.ap2.PermissionsForm implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class com.appiancorp.ap2.Permissions

        class Permissions extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_adminGroupNames

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_adminGroupNames

            -   ##### \_adminGroups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_adminGroups

            -   ##### \_admins

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_admins

            -   ##### \_associatedGroupName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_associatedGroupName

            -   ##### \_checkGroups

                boolean \_checkGroups

            -   ##### \_editorGroupNames

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_editorGroupNames

            -   ##### \_editorGroups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_editorGroups

            -   ##### \_editors

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_editors

            -   ##### \_privileges

                int \_privileges

            -   ##### \_pub

                boolean \_pub

            -   ##### \_readerGroupNames

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_readerGroupNames

            -   ##### \_readerGroups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_readerGroups

            -   ##### \_readers

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_readers

            -   ##### \_sharable

                boolean \_sharable

    -   ### Class com.appiancorp.ap2.PermissionsForm

        class PermissionsForm extends com.appiancorp.ap2.PageForm implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_groupRoles

                int\[\] \_groupRoles

            -   ##### \_groups

                int\[\] \_groups

            -   ##### \_pub

                boolean \_pub

            -   ##### \_userRoles

                int\[\] \_userRoles

            -   ##### \_users

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_users

    -   ### Class com.appiancorp.ap2.PortalCache

        class PortalCache extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_drafts

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_drafts

            -   ##### \_draftTiles

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_draftTiles

            -   ##### \_editModes

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_editModes

            -   ##### \_pages

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_pages

            -   ##### \_pageTiles

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_pageTiles

            -   ##### \_portlets

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_portlets

            -   ##### \_portletTiles

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_portletTiles

    -   ### Class com.appiancorp.ap2.PortalPage

        class PortalPage extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_approval

                boolean \_approval

            -   ##### \_associatedGroupName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_associatedGroupName

            -   ##### \_categoryId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_categoryId

            -   ##### \_created

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_created

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

            -   ##### \_draftOwner

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_draftOwner

            -   ##### \_group

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_group

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_modified

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_modified

            -   ##### \_modifier

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_modifier

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_portlets

                com.appiancorp.ap2.Portlet\[\]\[\] \_portlets

            -   ##### \_privileges

                int \_privileges

            -   ##### \_prm

                com.appiancorp.ap2.PrivatePageRoleMap \_prm

            -   ##### \_public

                boolean \_public

            -   ##### \_state

                int \_state

            -   ##### \_template

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_template

            -   ##### \_type

                int \_type

            -   ##### \_url

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_url

            -   ##### \_zoneCount

                int \_zoneCount

            -   ##### dataContextTypeId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dataContextTypeId

    -   ### Class com.appiancorp.ap2.PortalPageForm

        class PortalPageForm extends com.appiancorp.ap2.PageForm implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_cust

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_cust

            -   ##### \_security

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_security

            -   ##### \_sharing

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_sharing

    -   ### Class com.appiancorp.ap2.PortalRequestTag

        class PortalRequestTag extends javax.servlet.jsp.tagext.TagSupport implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_scope

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_scope

            -   ##### \_variableName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_variableName

    -   ### Class com.appiancorp.ap2.Portlet

        class Portlet extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_created

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_created

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

            -   ##### \_frame

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_frame

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_inheritSecurity

                boolean \_inheritSecurity

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_parameters

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_parameters

            -   ##### \_portletType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_portletType

            -   ##### \_portletTypeEditable

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_portletTypeEditable

            -   ##### \_privileges

                int \_privileges

            -   ##### \_prm

                com.appiancorp.ap2.PrivatePortalRoleMap \_prm

            -   ##### \_pub

                boolean \_pub

            -   ##### \_sharable

                boolean \_sharable

            -   ##### \_shareable

                boolean \_shareable

    -   ### Class com.appiancorp.ap2.PortletForm

        class PortletForm extends com.appiancorp.ap2.PageForm implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_$i

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_$i

            -   ##### \_findex

                int \_findex

            -   ##### \_frame

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_frame

            -   ##### \_fzone

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_fzone

            -   ##### \_index

                int \_index

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_portletIdToUpdate

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_portletIdToUpdate

            -   ##### \_shared

                boolean \_shared

            -   ##### \_type

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_type

            -   ##### \_xp

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_xp

            -   ##### \_zone

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_zone

    -   ### Class com.appiancorp.ap2.PortletPermissionsForm

        class PortletPermissionsForm extends com.appiancorp.ap2.PermissionsForm implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_i

                int \_i

            -   ##### \_inherit

                boolean \_inherit

            -   ##### \_sharing

                boolean \_sharing

    -   ### Class com.appiancorp.ap2.PortletState

        class PortletState extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_attributes

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_attributes

            -   ##### \_isNew

                boolean \_isNew

            -   ##### \_parameters

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_parameters

    -   ### Class com.appiancorp.ap2.PrivatePageRoleMap

        class PrivatePageRoleMap extends com.appiancorp.ap2.PrivatePortalRoleMap implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class com.appiancorp.ap2.PrivatePortalRoleMap

        class PrivatePortalRoleMap extends [PortalRoleMap](com/appiancorp/suiteapi/portal/PortalRoleMap.html "class in com.appiancorp.suiteapi.portal") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_administratorGroupNames

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_administratorGroupNames

            -   ##### \_editorGroupNames

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_editorGroupNames

            -   ##### \_viewerGroupNames

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_viewerGroupNames

    -   ### Class com.appiancorp.ap2.TruncateTag

        class TruncateTag extends javax.servlet.jsp.tagext.BodyTagSupport implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_altTextOnTruncate

                boolean \_altTextOnTruncate

            -   ##### \_ellipsis

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_ellipsis

            -   ##### \_escapeHtml

                boolean \_escapeHtml

            -   ##### \_length

                int \_length

            -   ##### MAX\_ALT\_LENGTH

                int MAX\_ALT\_LENGTH

-   ## Package [com.appiancorp.common.appianwebmvc](com/appiancorp/common/appianwebmvc/package-summary.html)

    -   ### Class com.appiancorp.common.appianwebmvc.AppianWebMvcActionServlet

        class AppianWebMvcActionServlet extends com.appiancorp.web.framework.kernel.main.ActionServlet implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### appianWebMvcConfiguration

                com.appiancorp.common.appianwebmvc.AppianWebMvcConfiguration appianWebMvcConfiguration

    -   ### Class [com.appiancorp.common.appianwebmvc.BaseActionForm](com/appiancorp/common/appianwebmvc/BaseActionForm.html "class in com.appiancorp.common.appianwebmvc")

        class BaseActionForm extends com.appiancorp.web.framework.kernel.main.ActionForm implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class com.appiancorp.common.appianwebmvc.ExtendedActionForward

        class ExtendedActionForward extends com.appiancorp.web.framework.kernel.main.ForwardingActionForward implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_continueMethodChain

                boolean \_continueMethodChain

    -   ### Exception com.appiancorp.common.appianwebmvc.InvalidFormClassException

        class InvalidFormClassException extends [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class com.appiancorp.common.appianwebmvc.MultipleTokenProcessor

        class MultipleTokenProcessor extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

    -   ### Class com.appiancorp.common.appianwebmvc.MultipleTokenProcessor.InvalidTokensCache

        class InvalidTokensCache extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_invalidTokens

                long\[\] \_invalidTokens

            -   ##### \_lastIndex

                short \_lastIndex

-   ## Package [com.appiancorp.common.query](com/appiancorp/common/query/package-summary.html)

    -   ### Class [com.appiancorp.common.query.Filter](com/appiancorp/common/query/Filter.html "class in com.appiancorp.common.query")

        class Filter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### field

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field

            -   ##### id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id

            -   ##### operator

                [FilterOperator](com/appiancorp/common/query/FilterOperator.html "enum class in com.appiancorp.common.query") operator

            -   ##### valueExpression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") valueExpression

    -   ### Class [com.appiancorp.common.query.GenericFilter](com/appiancorp/common/query/GenericFilter.html "class in com.appiancorp.common.query")

        class GenericFilter extends [Filter](com/appiancorp/common/query/Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### value

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value

    -   ### Class [com.appiancorp.common.query.TypedValueFilter](com/appiancorp/common/query/TypedValueFilter.html "class in com.appiancorp.common.query")

        class TypedValueFilter extends [Filter](com/appiancorp/common/query/Filter.html "class in com.appiancorp.common.query")<[TypedValue](com/appiancorp/suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### validated

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") validated

            -   ##### value

                [TypedValue](com/appiancorp/suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") value

-   ## Package [com.appiancorp.exceptions](com/appiancorp/exceptions/package-summary.html)

    -   ### Class [com.appiancorp.exceptions.AppianError](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions")

        class AppianError extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### cause

                [AppianError](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions") cause

            -   ##### code

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code

            -   ##### data

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") data

            -   ##### details

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details

            -   ##### message

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message

            -   ##### originalMessageWithErrorCode

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") originalMessageWithErrorCode

            -   ##### title

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title

    -   ### Class [com.appiancorp.exceptions.AppianErrorCode](com/appiancorp/exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions")

        class AppianErrorCode extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### code

                int code

            -   ##### hasTitle

                boolean hasTitle

    -   ### Error [com.appiancorp.exceptions.AppianErrorCode.InvalidErrorCode](com/appiancorp/exceptions/AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")

        class InvalidErrorCode extends [Error](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Error.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.exceptions.AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions")

        class AppianException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.exceptions.AppianResponseError](com/appiancorp/exceptions/AppianResponseError.html "class in com.appiancorp.exceptions")

        class AppianResponseError extends [AppianError](com/appiancorp/exceptions/AppianError.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### httpCode

                int httpCode

            -   ##### responseBody

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") responseBody

    -   ### Exception com.appiancorp.exceptions.CompressionLimitException

        class CompressionLimitException extends com.appiancorp.core.expr.exceptions.ExpressionRuntimeException implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### actualSize

                int actualSize

            -   ##### esId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") esId

            -   ##### maxSize

                int maxSize

    -   ### Exception com.appiancorp.exceptions.ConversionNotSupportedException

        class ConversionNotSupportedException extends [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### value

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value

    -   ### Exception com.appiancorp.exceptions.EvaluationEpochOverflowException

        class EvaluationEpochOverflowException extends [AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception com.appiancorp.exceptions.InboundAuthenticationException

        class InboundAuthenticationException extends [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception com.appiancorp.exceptions.InboundAuthenticationRuntimeException

        class InboundAuthenticationRuntimeException extends [RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.exceptions.InsufficientPrivilegesException](com/appiancorp/exceptions/InsufficientPrivilegesException.html "class in com.appiancorp.exceptions")

        class InsufficientPrivilegesException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### targetObjectIdentifier

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") targetObjectIdentifier

            -   ##### username

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username

    -   ### Exception com.appiancorp.exceptions.InsufficientResourceException

        class InsufficientResourceException extends com.appiancorp.core.expr.exceptions.ExpressionRuntimeException implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception com.appiancorp.exceptions.InvalidIndexException

        class InvalidIndexException extends com.appiancorp.core.expr.exceptions.ExpressionRuntimeException implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.exceptions.InvalidStatusException](com/appiancorp/exceptions/InvalidStatusException.html "class in com.appiancorp.exceptions")

        class InvalidStatusException extends [InvalidStatusException](com/appiancorp/suiteapi/common/exceptions/InvalidStatusException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.exceptions.KeyNotFoundException](com/appiancorp/exceptions/KeyNotFoundException.html "class in com.appiancorp.exceptions")

        class KeyNotFoundException extends [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        \-1049569133301204661L

    -   ### Exception [com.appiancorp.exceptions.LocalizedAppianRuntimeException](com/appiancorp/exceptions/LocalizedAppianRuntimeException.html "class in com.appiancorp.exceptions")

        class LocalizedAppianRuntimeException extends [AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.exceptions.LocalizedAppianRuntimeException.LocalizedAppianException](com/appiancorp/exceptions/LocalizedAppianRuntimeException.LocalizedAppianException.html "class in com.appiancorp.exceptions")

        class LocalizedAppianException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### delegate

                [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") delegate

            -   ##### locale

                [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale

    -   ### Exception [com.appiancorp.exceptions.ObjectNotFoundException](com/appiancorp/exceptions/ObjectNotFoundException.html "class in com.appiancorp.exceptions")

        class ObjectNotFoundException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### invalidIdentifier

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") invalidIdentifier

    -   ### Exception com.appiancorp.exceptions.OperationNullException

        class OperationNullException extends com.appiancorp.core.expr.exceptions.ExpressionRuntimeException implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.exceptions.ReportSizeException](com/appiancorp/exceptions/ReportSizeException.html "class in com.appiancorp.exceptions")

        class ReportSizeException extends [ReportSizeException](com/appiancorp/suiteapi/process/exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.exceptions.ResultPageSizeException](com/appiancorp/exceptions/ResultPageSizeException.html "class in com.appiancorp.exceptions")

        class ResultPageSizeException extends [ResultPageSizeException](com/appiancorp/suiteapi/process/exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.exceptions.ToggledOffException](com/appiancorp/exceptions/ToggledOffException.html "class in com.appiancorp.exceptions")

        class ToggledOffException extends [AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

-   ## Package [com.appiancorp.services.exceptions](com/appiancorp/services/exceptions/package-summary.html)

    -   ### Exception com.appiancorp.services.exceptions.InvalidUserException

        class InvalidUserException extends [RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.services.exceptions.ResourceDisabledException](com/appiancorp/services/exceptions/ResourceDisabledException.html "class in com.appiancorp.services.exceptions")

        class ResourceDisabledException extends com.appian.komodo.api.exceptions.KougarException implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_resourceName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_resourceName

            -   ##### \_username

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_username

    -   ### Exception [com.appiancorp.services.exceptions.ResourceRestrictedException](com/appiancorp/services/exceptions/ResourceRestrictedException.html "class in com.appiancorp.services.exceptions")

        class ResourceRestrictedException extends com.appian.komodo.api.exceptions.KougarException implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_resourceName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_resourceName

            -   ##### \_username

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_username

    -   ### Exception [com.appiancorp.services.exceptions.ServiceException](com/appiancorp/services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")

        class ServiceException extends com.appiancorp.asl3.servicefw.connect.ServiceException implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### m

                [Method](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/reflect/Method.html "class or interface in java.lang.reflect") m

            -   ##### p

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") p

    -   ### Exception [com.appiancorp.services.exceptions.UnsupportedServiceException](com/appiancorp/services/exceptions/UnsupportedServiceException.html "class in com.appiancorp.services.exceptions")

        class UnsupportedServiceException extends [ServiceException](com/appiancorp/services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### c

                [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c

-   ## Package [com.appiancorp.suiteapi.administration](com/appiancorp/suiteapi/administration/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.administration.AdminConsolePermissions](com/appiancorp/suiteapi/administration/AdminConsolePermissions.html "class in com.appiancorp.suiteapi.administration")

        class AdminConsolePermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_edit

                boolean \_edit

                Deprecated.

            -   ##### \_view

                boolean \_view

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.administration.AdminConsoleRoleMap](com/appiancorp/suiteapi/administration/AdminConsoleRoleMap.html "class in com.appiancorp.suiteapi.administration")

        class AdminConsoleRoleMap extends [RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.administration.Folder](com/appiancorp/suiteapi/administration/Folder.html "class in com.appiancorp.suiteapi.administration")

        class Folder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_parentId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_parentId

                Deprecated.

            -   ##### accessiblePages

                [Page](com/appiancorp/suiteapi/portal/Page.html "class in com.appiancorp.suiteapi.portal")\[\] accessiblePages

                Deprecated.

            -   ##### pageIds

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pageIds

                Deprecated.

            -   ##### stringPageIds

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> stringPageIds

                Deprecated.

            -   ##### subFolders

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Folder](com/appiancorp/suiteapi/administration/Folder.html "class in com.appiancorp.suiteapi.administration")\> subFolders

                Deprecated.

-   ## Package [com.appiancorp.suiteapi.applications](com/appiancorp/suiteapi/applications/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.applications.ActionNotFoundException](com/appiancorp/suiteapi/applications/ActionNotFoundException.html "class in com.appiancorp.suiteapi.applications")

        class ActionNotFoundException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments

    -   ### Class [com.appiancorp.suiteapi.applications.Application](com/appiancorp/suiteapi/applications/Application.html "class in com.appiancorp.suiteapi.applications")

        class Application extends [Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### isDefaultApplication

                boolean isDefaultApplication

    -   ### Class [com.appiancorp.suiteapi.applications.Application.ApplicationActions](com/appiancorp/suiteapi/applications/Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications")

        class ApplicationActions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### actions

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ApplicationAction](com/appiancorp/suiteapi/applications/ApplicationAction.html "class in com.appiancorp.suiteapi.applications")\> actions

    -   ### Class [com.appiancorp.suiteapi.applications.ApplicationAction](com/appiancorp/suiteapi/applications/ApplicationAction.html "class in com.appiancorp.suiteapi.applications")

        class ApplicationAction extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### applicationActionBean

                [ApplicationActionBean](com/appiancorp/suiteapi/applications/ApplicationActionBean.html "class in com.appiancorp.suiteapi.applications") applicationActionBean

    -   ### Class [com.appiancorp.suiteapi.applications.ApplicationActionBean](com/appiancorp/suiteapi/applications/ApplicationActionBean.html "class in com.appiancorp.suiteapi.applications")

        class ApplicationActionBean extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### actionUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") actionUuid

            -   ##### description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description

            -   ##### displayLabel

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel

            -   ##### processModelUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid

    -   ### Exception [com.appiancorp.suiteapi.applications.ApplicationNotFoundException](com/appiancorp/suiteapi/applications/ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")

        class ApplicationNotFoundException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.applications.ApplicationsFolder](com/appiancorp/suiteapi/applications/ApplicationsFolder.html "class in com.appiancorp.suiteapi.applications")

        class ApplicationsFolder extends [Folder](com/appiancorp/suiteapi/content/Folder.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.applications.InvalidActionException](com/appiancorp/suiteapi/applications/InvalidActionException.html "class in com.appiancorp.suiteapi.applications")

        class InvalidActionException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

            -   ##### errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments

    -   ### Exception [com.appiancorp.suiteapi.applications.InvalidApplicationException](com/appiancorp/suiteapi/applications/InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")

        class InvalidApplicationException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

            -   ##### errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments

    -   ### Exception [com.appiancorp.suiteapi.applications.InvalidNavigationItemException](com/appiancorp/suiteapi/applications/InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")

        class InvalidNavigationItemException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

            -   ##### errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments

    -   ### Exception [com.appiancorp.suiteapi.applications.UnavailableApplicationException](com/appiancorp/suiteapi/applications/UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")

        class UnavailableApplicationException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

            -   ##### errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments

-   ## Package [com.appiancorp.suiteapi.collaboration](com/appiancorp/suiteapi/collaboration/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.collaboration.CollaborationRoleMap](com/appiancorp/suiteapi/collaboration/CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration")

        class CollaborationRoleMap extends [RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.collaboration.Community](com/appiancorp/suiteapi/collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration")

        class Community extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### AdministratorGroups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] AdministratorGroups

                Deprecated.

            -   ##### Administrators

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] Administrators

                Deprecated.

            -   ##### CommName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") CommName

                Deprecated.

            -   ##### DateCreated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") DateCreated

                Deprecated.

            -   ##### Description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") Description

                Deprecated.

            -   ##### Id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Id

                Deprecated.

            -   ##### isActive

                boolean isActive

                Deprecated.

            -   ##### NumberOfDocuments

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NumberOfDocuments

                Deprecated.

            -   ##### ParentId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") ParentId

                Deprecated.

            -   ##### parentName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentName

                Deprecated.

            -   ##### PortalId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") PortalId

                Deprecated.

            -   ##### userStatus

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userStatus

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.collaboration.Document](com/appiancorp/suiteapi/collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration")

        class Document extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_approved

                boolean \_approved

                Deprecated.

            -   ##### \_changesRequireApproval

                boolean \_changesRequireApproval

                Deprecated.

            -   ##### \_dateCreated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_dateCreated

                Deprecated.

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

                Deprecated.

            -   ##### \_expirationDate

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_expirationDate

                Deprecated.

            -   ##### \_extension

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_extension

                Deprecated.

            -   ##### \_fileSystemId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_fileSystemId

                Deprecated.

            -   ##### \_folderId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_folderId

                Deprecated.

            -   ##### \_folderName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_folderName

                Deprecated.

            -   ##### \_forum

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_forum

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_internalFilename

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_internalFilename

                Deprecated.

            -   ##### \_knowledgeCenterId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_knowledgeCenterId

                Deprecated.

            -   ##### \_knowledgeCenterName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_knowledgeCenterName

                Deprecated.

            -   ##### \_lastUserToModify

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_lastUserToModify

                Deprecated.

            -   ##### \_lockedAt

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_lockedAt

                Deprecated.

            -   ##### \_lockedBy

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_lockedBy

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_numberOfVersions

                int \_numberOfVersions

                Deprecated.

            -   ##### \_partition

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_partition

                Deprecated.

            -   ##### \_pendingApproval

                int \_pendingApproval

                Deprecated.

            -   ##### \_size

                long \_size

                Deprecated.

            -   ##### \_status

                int \_status

                Deprecated.

            -   ##### \_versionId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_versionId

                Deprecated.

            -   ##### documentHelper

                com.appiancorp.content.DocumentHelper documentHelper

                Deprecated.

            -   ##### lockedByUsername

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedByUsername

                Deprecated.

            -   ##### uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.collaboration.DocumentStatistics](com/appiancorp/suiteapi/collaboration/DocumentStatistics.html "class in com.appiancorp.suiteapi.collaboration")

        class DocumentStatistics extends [Document](com/appiancorp/suiteapi/collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_numerOfDownloads

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_numerOfDownloads

    -   ### Class [com.appiancorp.suiteapi.collaboration.DownloadStatistics](com/appiancorp/suiteapi/collaboration/DownloadStatistics.html "class in com.appiancorp.suiteapi.collaboration")

        class DownloadStatistics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### CommunityName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") CommunityName

            -   ##### DocumentExtension

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DocumentExtension

            -   ##### DocumentId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") DocumentId

            -   ##### DocumentName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DocumentName

            -   ##### DocumentSearchability

                boolean DocumentSearchability

            -   ##### DownloadDate

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") DownloadDate

            -   ##### DownloadDayOfWeek

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") DownloadDayOfWeek

            -   ##### Downloader

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") Downloader

            -   ##### DownloadHourOfDay

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") DownloadHourOfDay

            -   ##### FolderSearchability

                boolean FolderSearchability

            -   ##### Id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Id

            -   ##### KnowledgeCenterName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") KnowledgeCenterName

            -   ##### KnowledgeCenterSearchability

                boolean KnowledgeCenterSearchability

            -   ##### NumberOfDownloads

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NumberOfDownloads

    -   ### Class [com.appiancorp.suiteapi.collaboration.Folder](com/appiancorp/suiteapi/collaboration/Folder.html "class in com.appiancorp.suiteapi.collaboration")

        class Folder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_AdministratorGroups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_AdministratorGroups

                Deprecated.

            -   ##### \_Administrators

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_Administrators

                Deprecated.

            -   ##### \_AdminPermissionOnly

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_AdminPermissionOnly

                Deprecated.

            -   ##### \_ChangesRequireApproval

                boolean \_ChangesRequireApproval

                Deprecated.

            -   ##### \_Creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_Creator

                Deprecated.

            -   ##### \_DateCreated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_DateCreated

                Deprecated.

            -   ##### \_Forum

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_Forum

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_InheritSecurityFromParent

                boolean \_InheritSecurityFromParent

                Deprecated.

            -   ##### \_KnowledgeCenterId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_KnowledgeCenterId

                Deprecated.

            -   ##### \_KnowledgeCenterName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_KnowledgeCenterName

                Deprecated.

            -   ##### \_KnowledgeCenterSearchable

                boolean \_KnowledgeCenterSearchable

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_NumberOfDocuments

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_NumberOfDocuments

                Deprecated.

            -   ##### \_ParentFolderId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_ParentFolderId

                Deprecated.

            -   ##### \_ParentFolderName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_ParentFolderName

                Deprecated.

            -   ##### \_PendingApproval

                int \_PendingApproval

                Deprecated.

            -   ##### \_ReaderGroups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_ReaderGroups

                Deprecated.

            -   ##### \_Readers

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_Readers

                Deprecated.

            -   ##### \_ReadPermissionOnly

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_ReadPermissionOnly

                Deprecated.

            -   ##### \_Searchable

                boolean \_Searchable

                Deprecated.

            -   ##### \_WritePermissionOnly

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_WritePermissionOnly

                Deprecated.

            -   ##### \_WriterGroups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_WriterGroups

                Deprecated.

            -   ##### \_Writers

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_Writers

                Deprecated.

            -   ##### uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.collaboration.KnowledgeCenter](com/appiancorp/suiteapi/collaboration/KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")

        class KnowledgeCenter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_autoApproveForReadOnlyAccess

                boolean \_autoApproveForReadOnlyAccess

                Deprecated.

            -   ##### \_communityId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_communityId

                Deprecated.

            -   ##### \_documentsPendingApproval

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_documentsPendingApproval

                Deprecated.

            -   ##### \_expirationDays

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_expirationDays

                Deprecated.

            -   ##### \_forum

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_forum

                Deprecated.

            -   ##### accessLevel

                int accessLevel

                Deprecated.

            -   ##### AdministratorGroups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] AdministratorGroups

                Deprecated.

            -   ##### Administrators

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] Administrators

                Deprecated.

            -   ##### ChangesRequireApproval

                boolean ChangesRequireApproval

                Deprecated.

            -   ##### CommunityName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") CommunityName

                Deprecated.

            -   ##### Creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") Creator

                Deprecated.

            -   ##### DateCreated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") DateCreated

                Deprecated.

            -   ##### Description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") Description

                Deprecated.

            -   ##### Folders

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] Folders

                Deprecated.

            -   ##### FoldersPendingApproval

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] FoldersPendingApproval

                Deprecated.

            -   ##### Id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Id

                Deprecated.

            -   ##### IsSearchable

                boolean IsSearchable

                Deprecated.

            -   ##### Name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") Name

                Deprecated.

            -   ##### NumberOfDocuments

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NumberOfDocuments

                Deprecated.

            -   ##### Partition

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") Partition

                Deprecated.

            -   ##### ReaderGroups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ReaderGroups

                Deprecated.

            -   ##### Readers

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] Readers

                Deprecated.

            -   ##### Size

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Size

                Deprecated.

            -   ##### Type

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Type

                Deprecated.

            -   ##### UsersPendingApproval

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] UsersPendingApproval

                Deprecated.

            -   ##### userStatus

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userStatus

                Deprecated.

            -   ##### VersionsPendingApproval

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] VersionsPendingApproval

                Deprecated.

            -   ##### WriterGroups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] WriterGroups

                Deprecated.

            -   ##### Writers

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] Writers

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.collaboration.MenuTree](com/appiancorp/suiteapi/collaboration/MenuTree.html "class in com.appiancorp.suiteapi.collaboration")

        class MenuTree extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### Creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") Creator

                Deprecated.

            -   ##### Id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Id

                Deprecated.

            -   ##### KnowledgeCenterId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") KnowledgeCenterId

                Deprecated.

            -   ##### Name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") Name

                Deprecated.

            -   ##### ParentId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") ParentId

                Deprecated.

            -   ##### Type

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Type

                Deprecated.

            -   ##### UserAccess

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") UserAccess

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.collaboration.Statistics](com/appiancorp/suiteapi/collaboration/Statistics.html "class in com.appiancorp.suiteapi.collaboration")

        class Statistics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### MegaBytesUsed

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") MegaBytesUsed

            -   ##### NumberOfCommunityKnowledgeCenters

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NumberOfCommunityKnowledgeCenters

            -   ##### NumberOfDocuments

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NumberOfDocuments

            -   ##### NumberOfFolders

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NumberOfFolders

            -   ##### NumberOfKnowledgeCenters

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NumberOfKnowledgeCenters

            -   ##### NumberOfUsers

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NumberOfUsers

    -   ### Class [com.appiancorp.suiteapi.collaboration.UploadStatistics](com/appiancorp/suiteapi/collaboration/UploadStatistics.html "class in com.appiancorp.suiteapi.collaboration")

        class UploadStatistics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### CommunityName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") CommunityName

            -   ##### DocumentExtension

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DocumentExtension

            -   ##### Id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Id

            -   ##### KnowledgeCenterName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") KnowledgeCenterName

            -   ##### NumberOfDocumentsUploaded

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NumberOfDocumentsUploaded

            -   ##### NumberOfUploads

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NumberOfUploads

            -   ##### UploadDate

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") UploadDate

            -   ##### UploadDayOfWeek

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") UploadDayOfWeek

            -   ##### UploadHourOfDay

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") UploadHourOfDay

    -   ### Class [com.appiancorp.suiteapi.collaboration.UserSpace](com/appiancorp/suiteapi/collaboration/UserSpace.html "class in com.appiancorp.suiteapi.collaboration")

        class UserSpace extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### free\_space

                long free\_space

                Deprecated.

            -   ##### Id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Id

                Deprecated.

            -   ##### megaBytesAvailable

                [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") megaBytesAvailable

                Deprecated.

            -   ##### MegaBytesFree

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") MegaBytesFree

                Deprecated.

            -   ##### MegaBytesUsed

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") MegaBytesUsed

                Deprecated.

            -   ##### PercentAvailable

                [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") PercentAvailable

                Deprecated.

            -   ##### RoundedPercentAvailable

                [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") RoundedPercentAvailable

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.collaboration.UserStatistics](com/appiancorp/suiteapi/collaboration/UserStatistics.html "class in com.appiancorp.suiteapi.collaboration")

        class UserStatistics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_Id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_Id

            -   ##### \_NumberOfUsersWhoHaveDownloaded

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_NumberOfUsersWhoHaveDownloaded

            -   ##### \_NumberOfUsersWhoHaveEntered

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_NumberOfUsersWhoHaveEntered

            -   ##### \_NumberOfUsersWhoHaveUploaded

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_NumberOfUsersWhoHaveUploaded

-   ## Package [com.appiancorp.suiteapi.common](com/appiancorp/suiteapi/common/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.common.AEVRoleMap](com/appiancorp/suiteapi/common/AEVRoleMap.html "class in com.appiancorp.suiteapi.common")

        class AEVRoleMap extends [PublicRoleMap](com/appiancorp/suiteapi/common/PublicRoleMap.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.common.Credentials](com/appiancorp/suiteapi/common/Credentials.html "class in com.appiancorp.suiteapi.common")

        class Credentials extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_adminGroups

                [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> \_adminGroups

            -   ##### \_memberGroups

                [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> \_memberGroups

            -   ##### \_tenant

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_tenant

            -   ##### \_userGroupsLocalId

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_userGroupsLocalId

            -   ##### \_username

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_username

            -   ##### \_userType

                int \_userType

            -   ##### \_userUuid

                byte\[\] \_userUuid

            -   ##### memberGroupUuids

                [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> memberGroupUuids

    -   ### Class [com.appiancorp.suiteapi.common.Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common")

        class Identity extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        7629223675429294156L

        -   #### Serialized Fields

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_uuid

    -   ### Class [com.appiancorp.suiteapi.common.LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common")

        class LocaleString extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### expression

                boolean expression

            -   ##### insensitive

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") insensitive

            -   ##### sensitive

                [HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> sensitive

            -   ##### structuralHashCode

                int structuralHashCode

            -   ##### structuralHashCodeComputed

                boolean structuralHashCodeComputed

    -   ### Class [com.appiancorp.suiteapi.common.LocalizedIdentity](com/appiancorp/suiteapi/common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

        class LocalizedIdentity extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_name

                [LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common") \_name

                The localized name mappings

    -   ### Class [com.appiancorp.suiteapi.common.LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common")

        class LocalObject extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        \-5221009684376584215L

        -   #### Serialized Fields

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_stringId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_stringId

            -   ##### \_type

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_type

    -   ### Exception [com.appiancorp.suiteapi.common.ProvisionException](com/appiancorp/suiteapi/common/ProvisionException.html "class in com.appiancorp.suiteapi.common")

        class ProvisionException extends [RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.common.PublicRoleMap](com/appiancorp/suiteapi/common/PublicRoleMap.html "class in com.appiancorp.suiteapi.common")

        class PublicRoleMap extends [RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### TYPE\_GROUP

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_GROUP

            -   ##### TYPE\_USER

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_USER

    -   ### Class [com.appiancorp.suiteapi.common.Result](com/appiancorp/suiteapi/common/Result.html "class in com.appiancorp.suiteapi.common")

        class Result extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        \-4786822778432513970L

        -   #### Serialized Fields

            -   ##### \_results

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] \_results

    -   ### Class [com.appiancorp.suiteapi.common.ResultList](com/appiancorp/suiteapi/common/ResultList.html "class in com.appiancorp.suiteapi.common")

        class ResultList extends [Result](com/appiancorp/suiteapi/common/Result.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_resultCodes

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] \_resultCodes

    -   ### Class [com.appiancorp.suiteapi.common.ResultPage](com/appiancorp/suiteapi/common/ResultPage.html "class in com.appiancorp.suiteapi.common")

        class ResultPage extends [Result](com/appiancorp/suiteapi/common/Result.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        \-8911059779518216468L

        -   #### Serialized Fields

            -   ##### \_availableItems

                long \_availableItems

            -   ##### \_codesForFailedIds

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] \_codesForFailedIds

            -   ##### \_failedIds

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_failedIds

            -   ##### \_parent

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") \_parent

    -   ### Class [com.appiancorp.suiteapi.common.RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common")

        class RoleMap extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### m

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") m

    -   ### Class [com.appiancorp.suiteapi.common.RoleSet](com/appiancorp/suiteapi/common/RoleSet.html "class in com.appiancorp.suiteapi.common")

        class RoleSet extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_roles

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_roles

    -   ### Class [com.appiancorp.suiteapi.common.Security](com/appiancorp/suiteapi/common/Security.html "class in com.appiancorp.suiteapi.common")

        class Security extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_canInherit

                boolean \_canInherit

            -   ##### \_doesInherit

                boolean \_doesInherit

            -   ##### \_inheritable

                [RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common") \_inheritable

            -   ##### \_native

                [RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common") \_native

    -   ### Class [com.appiancorp.suiteapi.common.SecurityEntry](com/appiancorp/suiteapi/common/SecurityEntry.html "class in com.appiancorp.suiteapi.common")

        class SecurityEntry extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_displayName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_displayName

            -   ##### \_key

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") \_key

    -   ### Class [com.appiancorp.suiteapi.common.SimpleValueMap](com/appiancorp/suiteapi/common/SimpleValueMap.html "class in com.appiancorp.suiteapi.common")

        class SimpleValueMap extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_map

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_map

    -   ### Class [com.appiancorp.suiteapi.common.Tree](com/appiancorp/suiteapi/common/Tree.html "class in com.appiancorp.suiteapi.common")

        class Tree extends [TreeNode](com/appiancorp/suiteapi/common/TreeNode.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_children

                [Tree](com/appiancorp/suiteapi/common/Tree.html "class in com.appiancorp.suiteapi.common")\[\] \_children

    -   ### Class [com.appiancorp.suiteapi.common.TreeNode](com/appiancorp/suiteapi/common/TreeNode.html "class in com.appiancorp.suiteapi.common")

        class TreeNode extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_data

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") \_data

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

    -   ### Class [com.appiancorp.suiteapi.common.TreePivot](com/appiancorp/suiteapi/common/TreePivot.html "class in com.appiancorp.suiteapi.common")

        class TreePivot extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_breadcrumbs

                [TreeNode](com/appiancorp/suiteapi/common/TreeNode.html "class in com.appiancorp.suiteapi.common")\[\] \_breadcrumbs

            -   ##### \_subtree

                [Tree](com/appiancorp/suiteapi/common/Tree.html "class in com.appiancorp.suiteapi.common") \_subtree

    -   ### Class [com.appiancorp.suiteapi.common.ValidationCode](com/appiancorp/suiteapi/common/ValidationCode.html "class in com.appiancorp.suiteapi.common")

        class ValidationCode extends [AppianErrorCode](com/appiancorp/exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.common.cli](com/appiancorp/suiteapi/common/cli/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.common.cli.Option.TerminateOptionsException](com/appiancorp/suiteapi/common/cli/Option.TerminateOptionsException.html "class in com.appiancorp.suiteapi.common.cli")

        class TerminateOptionsException extends [RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        6123520382559347240L

-   ## Package [com.appiancorp.suiteapi.common.exceptions](com/appiancorp/suiteapi/common/exceptions/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class AppianException extends [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

            -   ##### errorCodeArgs

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArgs

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.AppianPrivilegeNotFoundException](com/appiancorp/suiteapi/common/exceptions/AppianPrivilegeNotFoundException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class AppianPrivilegeNotFoundException extends [AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class AppianRuntimeException extends [RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### delegate

                [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") delegate

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.AppianStorageException](com/appiancorp/suiteapi/common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class AppianStorageException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.ContextException](com/appiancorp/suiteapi/common/exceptions/ContextException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class ContextException extends [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.DatabaseOperationException](com/appiancorp/suiteapi/common/exceptions/DatabaseOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class DatabaseOperationException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.DecryptionException](com/appiancorp/suiteapi/common/exceptions/DecryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class DecryptionException extends [AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.DeprecatedException](com/appiancorp/suiteapi/common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class DeprecatedException extends [RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.DuplicateExpressionException](com/appiancorp/suiteapi/common/exceptions/DuplicateExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class DuplicateExpressionException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

            -   ##### errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.DuplicateIdException](com/appiancorp/suiteapi/common/exceptions/DuplicateIdException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class DuplicateIdException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.DuplicateNameException](com/appiancorp/suiteapi/common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class DuplicateNameException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.DuplicatePortletException](com/appiancorp/suiteapi/common/exceptions/DuplicatePortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class DuplicatePortletException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.DuplicateUuidException](com/appiancorp/suiteapi/common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class DuplicateUuidException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.DuplicateWebServiceNameException](com/appiancorp/suiteapi/common/exceptions/DuplicateWebServiceNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class DuplicateWebServiceNameException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") \_errorCode

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.EncryptionException](com/appiancorp/suiteapi/common/exceptions/EncryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class EncryptionException extends [AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.common.exceptions.ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

        class ErrorCode extends [AppianErrorCode](com/appiancorp/exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.ExpressionException](com/appiancorp/suiteapi/common/exceptions/ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class ExpressionException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.GroupIsAttributeException](com/appiancorp/suiteapi/common/exceptions/GroupIsAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class GroupIsAttributeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.GroupsExtantException](com/appiancorp/suiteapi/common/exceptions/GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class GroupsExtantException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.GroupTypeUsedByRulesException](com/appiancorp/suiteapi/common/exceptions/GroupTypeUsedByRulesException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class GroupTypeUsedByRulesException extends [GroupsExtantException](com/appiancorp/suiteapi/common/exceptions/GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidAdminException](com/appiancorp/suiteapi/common/exceptions/InvalidAdminException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidAdminException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidAnonymousUserException](com/appiancorp/suiteapi/common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidAnonymousUserException extends [InvalidUserException](com/appiancorp/suiteapi/common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidAttachmentException](com/appiancorp/suiteapi/common/exceptions/InvalidAttachmentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidAttachmentException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidAttributeException](com/appiancorp/suiteapi/common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidAttributeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidAttributeValueException](com/appiancorp/suiteapi/common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidAttributeValueException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_attributeIndex

                int \_attributeIndex

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidCategoryException](com/appiancorp/suiteapi/common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidCategoryException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidCommunityException](com/appiancorp/suiteapi/common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidCommunityException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidCreatorException](com/appiancorp/suiteapi/common/exceptions/InvalidCreatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidCreatorException extends [RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidDataFormatException](com/appiancorp/suiteapi/common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidDataFormatException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidDecimalException](com/appiancorp/suiteapi/common/exceptions/InvalidDecimalException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidDecimalException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") \_errorCode

            -   ##### \_errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] \_errorCodeArguments

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidDependencyException](com/appiancorp/suiteapi/common/exceptions/InvalidDependencyException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidDependencyException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidDocumentException](com/appiancorp/suiteapi/common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidDocumentException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidEmailAddressException](com/appiancorp/suiteapi/common/exceptions/InvalidEmailAddressException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidEmailAddressException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidEscalationException](com/appiancorp/suiteapi/common/exceptions/InvalidEscalationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidEscalationException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidEventException](com/appiancorp/suiteapi/common/exceptions/InvalidEventException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidEventException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidExpressionException](com/appiancorp/suiteapi/common/exceptions/InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidExpressionException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidFolderException](com/appiancorp/suiteapi/common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidFolderException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidForumException](com/appiancorp/suiteapi/common/exceptions/InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidForumException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidGroupException](com/appiancorp/suiteapi/common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidGroupException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidGroupTypeException](com/appiancorp/suiteapi/common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidGroupTypeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidKnowledgeCenterException](com/appiancorp/suiteapi/common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidKnowledgeCenterException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidLocalObjectTypeException](com/appiancorp/suiteapi/common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidLocalObjectTypeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidLoginException](com/appiancorp/suiteapi/common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidLoginException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidMemberException](com/appiancorp/suiteapi/common/exceptions/InvalidMemberException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidMemberException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidMemberPolicyException](com/appiancorp/suiteapi/common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidMemberPolicyException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidMessageException](com/appiancorp/suiteapi/common/exceptions/InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidMessageException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidMetadataRuleException](com/appiancorp/suiteapi/common/exceptions/InvalidMetadataRuleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidMetadataRuleException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidNameException](com/appiancorp/suiteapi/common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidNameException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidNodeException](com/appiancorp/suiteapi/common/exceptions/InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidNodeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidNodeMultiplicityException](com/appiancorp/suiteapi/common/exceptions/InvalidNodeMultiplicityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidNodeMultiplicityException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidNodeTypeLogicException](com/appiancorp/suiteapi/common/exceptions/InvalidNodeTypeLogicException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidNodeTypeLogicException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidNodeTypeRecurringException](com/appiancorp/suiteapi/common/exceptions/InvalidNodeTypeRecurringException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidNodeTypeRecurringException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidNotificationException](com/appiancorp/suiteapi/common/exceptions/InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidNotificationException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidNotificationTypeException](com/appiancorp/suiteapi/common/exceptions/InvalidNotificationTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidNotificationTypeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidOperationException](com/appiancorp/suiteapi/common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidOperationException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidPageException](com/appiancorp/suiteapi/common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidPageException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidParentException](com/appiancorp/suiteapi/common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidParentException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidPortletException](com/appiancorp/suiteapi/common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidPortletException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidPortletTypeException](com/appiancorp/suiteapi/common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidPortletTypeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidPriorityException](com/appiancorp/suiteapi/common/exceptions/InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidPriorityException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidProcessModelException](com/appiancorp/suiteapi/common/exceptions/InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidProcessModelException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidRankNameException](com/appiancorp/suiteapi/common/exceptions/InvalidRankNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidRankNameException extends [AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidRoleException](com/appiancorp/suiteapi/common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidRoleException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidScheduleTypeException](com/appiancorp/suiteapi/common/exceptions/InvalidScheduleTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidScheduleTypeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidSecurityMapException](com/appiancorp/suiteapi/common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidSecurityMapException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidStateException](com/appiancorp/suiteapi/common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidStateException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidStatusException](com/appiancorp/suiteapi/common/exceptions/InvalidStatusException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidStatusException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### env

                [Environment](com/appiancorp/exceptions/Environment.html "enum class in com.appiancorp.exceptions") env

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidSupervisorException](com/appiancorp/suiteapi/common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidSupervisorException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidThreadException](com/appiancorp/suiteapi/common/exceptions/InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidThreadException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidTitleException](com/appiancorp/suiteapi/common/exceptions/InvalidTitleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidTitleException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidUserException](com/appiancorp/suiteapi/common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidUserException extends [InvalidCreatorException](com/appiancorp/suiteapi/common/exceptions/InvalidCreatorException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidUuidException](com/appiancorp/suiteapi/common/exceptions/InvalidUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidUuidException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidVersionException](com/appiancorp/suiteapi/common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidVersionException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidViewingPolicyException](com/appiancorp/suiteapi/common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidViewingPolicyException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.InvalidZoneException](com/appiancorp/suiteapi/common/exceptions/InvalidZoneException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class InvalidZoneException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.LockedAccountException](com/appiancorp/suiteapi/common/exceptions/LockedAccountException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class LockedAccountException extends [InvalidLoginException](com/appiancorp/suiteapi/common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.LockException](com/appiancorp/suiteapi/common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class LockException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.NotEmptyException](com/appiancorp/suiteapi/common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class NotEmptyException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.NotesLimitException](com/appiancorp/suiteapi/common/exceptions/NotesLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class NotesLimitException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.NullUserRenameException](com/appiancorp/suiteapi/common/exceptions/NullUserRenameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class NullUserRenameException extends [AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.PasswordExpiredException](com/appiancorp/suiteapi/common/exceptions/PasswordExpiredException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class PasswordExpiredException extends [InvalidLoginException](com/appiancorp/suiteapi/common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### user

                [UserProfile](com/appiancorp/suiteapi/personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") user

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.PortletSharingException](com/appiancorp/suiteapi/common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class PortletSharingException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.PrivilegeException](com/appiancorp/suiteapi/common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class PrivilegeException extends [InsufficientPrivilegesException](com/appiancorp/exceptions/InsufficientPrivilegesException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.ProcessAttachmentsLimitException](com/appiancorp/suiteapi/common/exceptions/ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class ProcessAttachmentsLimitException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.RecursiveRelationshipException](com/appiancorp/suiteapi/common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class RecursiveRelationshipException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.RetryableAppianException](com/appiancorp/suiteapi/common/exceptions/RetryableAppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class RetryableAppianException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.RetryableAppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/RetryableAppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class RetryableAppianRuntimeException extends [AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.SelfRenameException](com/appiancorp/suiteapi/common/exceptions/SelfRenameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class SelfRenameException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.ServiceLocatorException](com/appiancorp/suiteapi/common/exceptions/ServiceLocatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class ServiceLocatorException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.StorageLimitException](com/appiancorp/suiteapi/common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class StorageLimitException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.SystemAttributeException](com/appiancorp/suiteapi/common/exceptions/SystemAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class SystemAttributeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.SystemGroupException](com/appiancorp/suiteapi/common/exceptions/SystemGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class SystemGroupException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.SystemGroupTypeException](com/appiancorp/suiteapi/common/exceptions/SystemGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class SystemGroupTypeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.TemporaryPasswordExpiredException](com/appiancorp/suiteapi/common/exceptions/TemporaryPasswordExpiredException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class TemporaryPasswordExpiredException extends [InvalidLoginException](com/appiancorp/suiteapi/common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### user

                [UserProfile](com/appiancorp/suiteapi/personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") user

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.TooManyDocumentsException](com/appiancorp/suiteapi/common/exceptions/TooManyDocumentsException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class TooManyDocumentsException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.UnsupportedAttributeTypeException](com/appiancorp/suiteapi/common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class UnsupportedAttributeTypeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.UnsupportedOperatorException](com/appiancorp/suiteapi/common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class UnsupportedOperatorException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.UnsupportedRelationshipException](com/appiancorp/suiteapi/common/exceptions/UnsupportedRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class UnsupportedRelationshipException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.UnsupportedRoleException](com/appiancorp/suiteapi/common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class UnsupportedRoleException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.UnsupportedTitleException](com/appiancorp/suiteapi/common/exceptions/UnsupportedTitleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class UnsupportedTitleException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.exceptions.WriteException](com/appiancorp/suiteapi/common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")

        class WriteException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.common.paging](com/appiancorp/suiteapi/common/paging/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.common.paging.SortInfo](com/appiancorp/suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")

        class SortInfo extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### ascending

                boolean ascending

            -   ##### field

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field

            -   ##### id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id

-   ## Package [com.appiancorp.suiteapi.common.spring.security](com/appiancorp/suiteapi/common/spring/security/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.common.spring.security.TemporaryCredentialsExpiredException](com/appiancorp/suiteapi/common/spring/security/TemporaryCredentialsExpiredException.html "class in com.appiancorp.suiteapi.common.spring.security")

        class TemporaryCredentialsExpiredException extends org.springframework.security.authentication.AccountStatusException implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.common.spring.security.TemporaryPasswordException](com/appiancorp/suiteapi/common/spring/security/TemporaryPasswordException.html "class in com.appiancorp.suiteapi.common.spring.security")

        class TemporaryPasswordException extends org.springframework.security.authentication.AccountStatusException implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.content](com/appiancorp/suiteapi/content/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.content.Container](com/appiancorp/suiteapi/content/Container.html "class in com.appiancorp.suiteapi.content")

        class Container extends [Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_fsidCount

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_fsidCount

    -   ### Class [com.appiancorp.suiteapi.content.Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content")

        class Content extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_actionRequested

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_actionRequested

            -   ##### \_actionRequester

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_actionRequester

            -   ##### \_attributes

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> \_attributes

            -   ##### \_changesRequireApproval

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_changesRequireApproval

            -   ##### \_createdTimestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_createdTimestamp

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

            -   ##### \_depth

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_depth

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

            -   ##### \_expirationTimestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_expirationTimestamp

            -   ##### \_favorite

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_favorite

            -   ##### \_forum

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_forum

            -   ##### \_latestVersionId

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_latestVersionId

            -   ##### \_lockedAt

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_lockedAt

            -   ##### \_lockedBy

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_lockedBy

            -   ##### \_log

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_log

            -   ##### \_logName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_logName

            -   ##### \_numberOfVersions

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_numberOfVersions

            -   ##### \_parent

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_parent

            -   ##### \_parentName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_parentName

            -   ##### \_parentType

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_parentType

            -   ##### \_partition

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_partition

            -   ##### \_partitionName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_partitionName

            -   ##### \_roleSet

                [ContentRoleSet](com/appiancorp/suiteapi/content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content") \_roleSet

            -   ##### \_security

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_security

            -   ##### \_size

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_size

            -   ##### \_state

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_state

            -   ##### \_subtype

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_subtype

            -   ##### \_type

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_type

            -   ##### \_typesOfChildren

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_typesOfChildren

            -   ##### \_updatedTimestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_updatedTimestamp

            -   ##### \_usersPendingAccess

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_usersPendingAccess

            -   ##### \_uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_uuid

            -   ##### \_versionId

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_versionId

            -   ##### \_versions

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_versions

            -   ##### \_visibility

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_visibility

            -   ##### currentContentId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") currentContentId

            -   ##### forumUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") forumUuid

                The UUID of this object's associated Forum. This field is ignored except when using the IX API.

            -   ##### lockedByUsername

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedByUsername

            -   ##### originalContentId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") originalContentId

            -   ##### parentUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentUuid

                Returns the UUID of this object's parent. This field is not populated except when using the IX API.

            -   ##### pendingApprovalCount

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") pendingApprovalCount

    -   ### Class [com.appiancorp.suiteapi.content.ContentAccess](com/appiancorp/suiteapi/content/ContentAccess.html "class in com.appiancorp.suiteapi.content")

        class ContentAccess extends com.appiancorp.process.common.presentation.JSONCallableObject implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.content.ContentRoleMap](com/appiancorp/suiteapi/content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content")

        class ContentRoleMap extends [RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.content.ContentRoleSet](com/appiancorp/suiteapi/content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content")

        class ContentRoleSet extends [RoleSet](com/appiancorp/suiteapi/common/RoleSet.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.content.CustomContent](com/appiancorp/suiteapi/content/CustomContent.html "class in com.appiancorp.suiteapi.content")

        class CustomContent extends [Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.content.Folder](com/appiancorp/suiteapi/content/Folder.html "class in com.appiancorp.suiteapi.content")

        class Folder extends [Container](com/appiancorp/suiteapi/content/Container.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.content.exceptions](com/appiancorp/suiteapi/content/exceptions/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.ContentExpiredException](com/appiancorp/suiteapi/content/exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class ContentExpiredException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.DuplicateUuidException](com/appiancorp/suiteapi/content/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class DuplicateUuidException extends [DuplicateUuidException](com/appiancorp/suiteapi/common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.HasChildrenException](com/appiancorp/suiteapi/content/exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class HasChildrenException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.IllegalRecursionException](com/appiancorp/suiteapi/content/exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class IllegalRecursionException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.InsufficientNameUniquenessException](com/appiancorp/suiteapi/content/exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class InsufficientNameUniquenessException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.InvalidApprovalStateException](com/appiancorp/suiteapi/content/exceptions/InvalidApprovalStateException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class InvalidApprovalStateException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.InvalidContentException](com/appiancorp/suiteapi/content/exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class InvalidContentException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.InvalidPersonalContentException](com/appiancorp/suiteapi/content/exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class InvalidPersonalContentException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.InvalidRejectionStateException](com/appiancorp/suiteapi/content/exceptions/InvalidRejectionStateException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class InvalidRejectionStateException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.InvalidTypeMaskException](com/appiancorp/suiteapi/content/exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class InvalidTypeMaskException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.NotLockOwnerException](com/appiancorp/suiteapi/content/exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class NotLockOwnerException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.PendingApprovalException](com/appiancorp/suiteapi/content/exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class PendingApprovalException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.content.exceptions.RenameNotAllowedException](com/appiancorp/suiteapi/content/exceptions/RenameNotAllowedException.html "class in com.appiancorp.suiteapi.content.exceptions")

        class RenameNotAllowedException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

            -   ##### errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments

-   ## Package [com.appiancorp.suiteapi.expression](com/appiancorp/suiteapi/expression/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.expression.Function](com/appiancorp/suiteapi/expression/Function.html "class in com.appiancorp.suiteapi.expression")

        class Function extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### categoryName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") categoryName

            -   ##### description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description

            -   ##### domain

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") domain

            -   ##### externalDescription

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalDescription

            -   ##### functionParameters

                [FunctionParameter](com/appiancorp/suiteapi/expression/FunctionParameter.html "class in com.appiancorp.suiteapi.expression")\[\] functionParameters

            -   ##### hiddenFromAutosuggest

                boolean hiddenFromAutosuggest

            -   ##### i18nKey

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") i18nKey

            -   ##### name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name

            -   ##### outputSystemTypename

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") outputSystemTypename

            -   ##### outputType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") outputType

            -   ##### translatableParameters

                boolean translatableParameters

            -   ##### unlimitedParameters

                boolean unlimitedParameters

    -   ### Class [com.appiancorp.suiteapi.expression.FunctionCategory](com/appiancorp/suiteapi/expression/FunctionCategory.html "class in com.appiancorp.suiteapi.expression")

        class FunctionCategory extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### functions

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Function](com/appiancorp/suiteapi/expression/Function.html "class in com.appiancorp.suiteapi.expression")\> functions

            -   ##### i18nKey

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") i18nKey

            -   ##### name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name

    -   ### Class [com.appiancorp.suiteapi.expression.FunctionParameter](com/appiancorp/suiteapi/expression/FunctionParameter.html "class in com.appiancorp.suiteapi.expression")

        class FunctionParameter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description

            -   ##### name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name

            -   ##### required

                boolean required

            -   ##### systemTypename

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") systemTypename

            -   ##### translatable

                boolean translatable

            -   ##### type

                int type

            -   ##### unlimited

                boolean unlimited

    -   ### Class [com.appiancorp.suiteapi.expression.FunctionRequest](com/appiancorp/suiteapi/expression/FunctionRequest.html "class in com.appiancorp.suiteapi.expression")

        class FunctionRequest extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### domain

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") domain

            -   ##### expressionId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expressionId

            -   ##### function

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") function

            -   ##### functionParameters

                [NamedTypedValue](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] functionParameters

            -   ##### originServerType

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") originServerType

    -   ### Class [com.appiancorp.suiteapi.expression.PartialResult](com/appiancorp/suiteapi/expression/PartialResult.html "class in com.appiancorp.suiteapi.expression")

        class PartialResult extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_assignmentOperator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_assignmentOperator

            -   ##### \_assignmentVariable

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_assignmentVariable

            -   ##### \_function

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_function

            -   ##### \_functionParameters

                [TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] \_functionParameters

            -   ##### \_result

                [TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process") \_result

-   ## Package [com.appiancorp.suiteapi.forums](com/appiancorp/suiteapi/forums/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.forums.Attachment](com/appiancorp/suiteapi/forums/Attachment.html "class in com.appiancorp.suiteapi.forums")

        class Attachment extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_attached

                [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common") \_attached

                Deprecated.

            -   ##### \_attacher

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_attacher

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.forums.DiscussionThread](com/appiancorp/suiteapi/forums/DiscussionThread.html "class in com.appiancorp.suiteapi.forums")

        class DiscussionThread extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_allowedActions

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] \_allowedActions

                Deprecated.

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

                Deprecated.

            -   ##### \_dateCreated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_dateCreated

                Deprecated.

            -   ##### \_dateModified

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_dateModified

                Deprecated.

            -   ##### \_forumId

                [GlobalId](com/appiancorp/suiteapi/common/GlobalId.html "interface in com.appiancorp.suiteapi.common") \_forumId

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_remoteId

                [RemoteId](com/appiancorp/suiteapi/common/RemoteId.html "interface in com.appiancorp.suiteapi.common") \_remoteId

                Deprecated.

            -   ##### \_resources

                [Attachment](com/appiancorp/suiteapi/forums/Attachment.html "class in com.appiancorp.suiteapi.forums")\[\] \_resources

                Deprecated.

            -   ##### \_sponsored

                boolean \_sponsored

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.forums.Forum](com/appiancorp/suiteapi/forums/Forum.html "class in com.appiancorp.suiteapi.forums")

        class Forum extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_allowAnonymousPosting

                boolean \_allowAnonymousPosting

                Deprecated.

            -   ##### \_allowedActions

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] \_allowedActions

                Deprecated.

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

                Deprecated.

            -   ##### \_dateCreated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_dateCreated

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_publicForum

                boolean \_publicForum

                Deprecated.

            -   ##### \_relateds

                [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] \_relateds

                Deprecated.

            -   ##### \_remoteId

                [RemoteId](com/appiancorp/suiteapi/common/RemoteId.html "interface in com.appiancorp.suiteapi.common") \_remoteId

                Deprecated.

            -   ##### \_userSubscribed

                boolean \_userSubscribed

                Deprecated.

            -   ##### \_uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_uuid

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.forums.ForumsRoleMap](com/appiancorp/suiteapi/forums/ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums")

        class ForumsRoleMap extends [PublicRoleMap](com/appiancorp/suiteapi/common/PublicRoleMap.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.forums.ForumSummary](com/appiancorp/suiteapi/forums/ForumSummary.html "class in com.appiancorp.suiteapi.forums")

        class ForumSummary extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_allowedActions

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] \_allowedActions

                Deprecated.

            -   ##### \_id

                [GlobalId](com/appiancorp/suiteapi/common/GlobalId.html "interface in com.appiancorp.suiteapi.common") \_id

                Deprecated.

            -   ##### \_lastMessage

                [Message](com/appiancorp/suiteapi/forums/Message.html "class in com.appiancorp.suiteapi.forums") \_lastMessage

                Deprecated.

            -   ##### \_messages

                int \_messages

                Deprecated.

            -   ##### \_messagesToday

                int \_messagesToday

                Deprecated.

            -   ##### \_mostRecentThreadSubject

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_mostRecentThreadSubject

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_threadCount

                int \_threadCount

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.forums.Message](com/appiancorp/suiteapi/forums/Message.html "class in com.appiancorp.suiteapi.forums")

        class Message extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_allowedActions

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] \_allowedActions

                Deprecated.

            -   ##### \_anonymousAuthor

                boolean \_anonymousAuthor

                Deprecated.

            -   ##### \_author

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_author

                Deprecated.

            -   ##### \_averageRating

                double \_averageRating

                Deprecated.

            -   ##### \_body

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_body

                Deprecated.

            -   ##### \_datePosted

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_datePosted

                Deprecated.

            -   ##### \_depth

                int \_depth

                Deprecated.

            -   ##### \_filename

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_filename

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_parentId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_parentId

                Deprecated.

            -   ##### \_ratingCount

                int \_ratingCount

                Deprecated.

            -   ##### \_remoteId

                [RemoteId](com/appiancorp/suiteapi/common/RemoteId.html "interface in com.appiancorp.suiteapi.common") \_remoteId

                Deprecated.

            -   ##### \_subject

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_subject

                Deprecated.

            -   ##### \_threadId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_threadId

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.forums.ThreadRoleMap](com/appiancorp/suiteapi/forums/ThreadRoleMap.html "class in com.appiancorp.suiteapi.forums")

        class ThreadRoleMap extends [RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.forums.ThreadSummary](com/appiancorp/suiteapi/forums/ThreadSummary.html "class in com.appiancorp.suiteapi.forums")

        class ThreadSummary extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_allowedActions

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] \_allowedActions

                Deprecated.

            -   ##### \_anonymousCreator

                boolean \_anonymousCreator

                Deprecated.

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

                Deprecated.

            -   ##### \_firstMessageId

                [GlobalId](com/appiancorp/suiteapi/common/GlobalId.html "interface in com.appiancorp.suiteapi.common") \_firstMessageId

                Deprecated.

            -   ##### \_firstSubject

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_firstSubject

                Deprecated.

            -   ##### \_forumId

                [GlobalId](com/appiancorp/suiteapi/common/GlobalId.html "interface in com.appiancorp.suiteapi.common") \_forumId

                Deprecated.

            -   ##### \_forumName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_forumName

                Deprecated.

            -   ##### \_id

                [GlobalId](com/appiancorp/suiteapi/common/GlobalId.html "interface in com.appiancorp.suiteapi.common") \_id

                Deprecated.

            -   ##### \_lastMessage

                [Message](com/appiancorp/suiteapi/forums/Message.html "class in com.appiancorp.suiteapi.forums") \_lastMessage

                Deprecated.

            -   ##### \_lastModified

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_lastModified

                Deprecated.

            -   ##### \_messageCount

                int \_messageCount

                Deprecated.

            -   ##### \_resources

                [Attachment](com/appiancorp/suiteapi/forums/Attachment.html "class in com.appiancorp.suiteapi.forums")\[\] \_resources

                Deprecated.

            -   ##### \_sponsored

                boolean \_sponsored

                Deprecated.

            -   ##### \_userSubscribed

                boolean \_userSubscribed

                Deprecated.

-   ## Package [com.appiancorp.suiteapi.knowledge](com/appiancorp/suiteapi/knowledge/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.knowledge.Community](com/appiancorp/suiteapi/knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge")

        class Community extends [Container](com/appiancorp/suiteapi/content/Container.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.knowledge.CommunityKnowledgeCenter](com/appiancorp/suiteapi/knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")

        class CommunityKnowledgeCenter extends [KnowledgeCenter](com/appiancorp/suiteapi/knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.knowledge.Document](com/appiancorp/suiteapi/knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge")

        class Document extends [Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_extension

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_extension

            -   ##### \_extensionInfo

                com.appiancorp.content.ExtensionMap.ExtensionInfo \_extensionInfo

            -   ##### \_externalFilename

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_externalFilename

            -   ##### \_fileSystemId

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_fileSystemId

            -   ##### \_internalFilename

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_internalFilename

            -   ##### \_symbolicLink

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_symbolicLink

            -   ##### documentHelper

                com.appiancorp.content.DocumentHelper documentHelper

    -   ### Class [com.appiancorp.suiteapi.knowledge.KnowledgeCenter](com/appiancorp/suiteapi/knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")

        class KnowledgeCenter extends [Container](com/appiancorp/suiteapi/content/Container.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### accessStatus

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") accessStatus

            -   ##### expirationDays

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") expirationDays

    -   ### Class [com.appiancorp.suiteapi.knowledge.KnowledgeFolder](com/appiancorp/suiteapi/knowledge/KnowledgeFolder.html "class in com.appiancorp.suiteapi.knowledge")

        class KnowledgeFolder extends [Folder](com/appiancorp/suiteapi/content/Folder.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.knowledge.PersonalKnowledgeCenter](com/appiancorp/suiteapi/knowledge/PersonalKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge")

        class PersonalKnowledgeCenter extends [KnowledgeCenter](com/appiancorp/suiteapi/knowledge/KnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.messaging](com/appiancorp/suiteapi/messaging/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.messaging.InvalidJMSDestinationException](com/appiancorp/suiteapi/messaging/InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        class InvalidJMSDestinationException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") \_errorCode

            -   ##### \_errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] \_errorCodeArguments

            -   ##### destination

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") destination

    -   ### Class [com.appiancorp.suiteapi.messaging.Mapping](com/appiancorp/suiteapi/messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")

        class Mapping extends [TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_expression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_expression

    -   ### Class [com.appiancorp.suiteapi.messaging.MessageType](com/appiancorp/suiteapi/messaging/MessageType.html "class in com.appiancorp.suiteapi.messaging")

        class MessageType extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_namesToPropertySchemas

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[MessagePropertySchema](com/appiancorp/suiteapi/messaging/MessagePropertySchema.html "class in com.appiancorp.suiteapi.messaging")\> \_namesToPropertySchemas

            -   ##### \_processesCanProduce

                boolean \_processesCanProduce

            -   ##### \_propertySchemas

                [MessagePropertySchema](com/appiancorp/suiteapi/messaging/MessagePropertySchema.html "class in com.appiancorp.suiteapi.messaging")\[\] \_propertySchemas

-   ## Package [com.appiancorp.suiteapi.personalization](com/appiancorp/suiteapi/personalization/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.personalization.Attribute](com/appiancorp/suiteapi/personalization/Attribute.html "class in com.appiancorp.suiteapi.personalization")

        class Attribute extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name

            -   ##### type

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type

            -   ##### value

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value

    -   ### Class [com.appiancorp.suiteapi.personalization.AttributeType](com/appiancorp/suiteapi/personalization/AttributeType.html "class in com.appiancorp.suiteapi.personalization")

        class AttributeType extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

    -   ### Class [com.appiancorp.suiteapi.personalization.Condition](com/appiancorp/suiteapi/personalization/Condition.html "class in com.appiancorp.suiteapi.personalization")

        class Condition extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### attributeDisplayName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeDisplayName

            -   ##### attributeName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName

            -   ##### dataTypeId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dataTypeId

            -   ##### dataTypeName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dataTypeName

            -   ##### operatorId

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorId

            -   ##### operatorName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") operatorName

            -   ##### value

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value

    -   ### Class [com.appiancorp.suiteapi.personalization.Expression](com/appiancorp/suiteapi/personalization/Expression.html "class in com.appiancorp.suiteapi.personalization")

        class Expression extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### conditions

                [Condition](com/appiancorp/suiteapi/personalization/Condition.html "class in com.appiancorp.suiteapi.personalization")\[\] conditions

            -   ##### entityTypeId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") entityTypeId

            -   ##### entityTypeName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") entityTypeName

            -   ##### entityTypeUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") entityTypeUuid

                The UUID of the expression. This corresponds to the UUID version of the value stored in the entityTypeId field. This field is not populated except when using the IX API.

    -   ### Class [com.appiancorp.suiteapi.personalization.Group](com/appiancorp/suiteapi/personalization/Group.html "class in com.appiancorp.suiteapi.personalization")

        class Group extends [GroupBase](com/appiancorp/suiteapi/personalization/GroupBase.html "class in com.appiancorp.suiteapi.personalization") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_delegatedCreation

                boolean \_delegatedCreation

            -   ##### \_memberPolicyName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_memberPolicyName

            -   ##### \_securityMapName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_securityMapName

            -   ##### \_viewingPolicyName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_viewingPolicyName

            -   ##### attributes

                [Attribute](com/appiancorp/suiteapi/personalization/Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] attributes

            -   ##### description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description

            -   ##### favorite

                boolean favorite

            -   ##### groupTypeId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId

            -   ##### groupTypeUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeUuid

                The UUID of this Group's Group Type. This field is not populated except when using the IX API.

            -   ##### homePageId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") homePageId

                The ID of this Group's Home Page. See #37713.

            -   ##### homePageUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") homePageUuid

                The UUID of this Group's Home Page. This field is ignored except when using the IX API.

            -   ##### id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id

            -   ##### memberPolicyId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") memberPolicyId

            -   ##### parentId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentId

            -   ##### parentUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentUuid

                The UUID of this Group's parent Group. This field is not populated except when using the IX API.

            -   ##### uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid

            -   ##### viewingPolicyId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") viewingPolicyId

    -   ### Class [com.appiancorp.suiteapi.personalization.GroupBase](com/appiancorp/suiteapi/personalization/GroupBase.html "class in com.appiancorp.suiteapi.personalization")

        class GroupBase extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_created

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_created

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

            -   ##### \_groupName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_groupName

            -   ##### \_groupTypeName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_groupTypeName

            -   ##### \_lastModified

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_lastModified

            -   ##### \_parentName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_parentName

            -   ##### \_securityMapId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_securityMapId

    -   ### Class [com.appiancorp.suiteapi.personalization.GroupMemberPolicy](com/appiancorp/suiteapi/personalization/GroupMemberPolicy.html "class in com.appiancorp.suiteapi.personalization")

        class GroupMemberPolicy extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

    -   ### Class [com.appiancorp.suiteapi.personalization.GroupMemberViewingPolicy](com/appiancorp/suiteapi/personalization/GroupMemberViewingPolicy.html "class in com.appiancorp.suiteapi.personalization")

        class GroupMemberViewingPolicy extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

    -   ### Class [com.appiancorp.suiteapi.personalization.GroupSearch](com/appiancorp/suiteapi/personalization/GroupSearch.html "class in com.appiancorp.suiteapi.personalization")

        class GroupSearch extends [GroupBase](com/appiancorp/suiteapi/personalization/GroupBase.html "class in com.appiancorp.suiteapi.personalization") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### operatorCreated

                int operatorCreated

            -   ##### operatorCreator

                int operatorCreator

            -   ##### operatorGroupName

                int operatorGroupName

            -   ##### operatorGroupTypeName

                int operatorGroupTypeName

            -   ##### operatorLastModified

                int operatorLastModified

            -   ##### operatorParentName

                int operatorParentName

            -   ##### operatorSecurityMapId

                int operatorSecurityMapId

    -   ### Class [com.appiancorp.suiteapi.personalization.GroupSecurityType](com/appiancorp/suiteapi/personalization/GroupSecurityType.html "class in com.appiancorp.suiteapi.personalization")

        class GroupSecurityType extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

    -   ### Class [com.appiancorp.suiteapi.personalization.GroupSummary](com/appiancorp/suiteapi/personalization/GroupSummary.html "class in com.appiancorp.suiteapi.personalization")

        class GroupSummary extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_favorite

                boolean \_favorite

                is this group one of the user's favorites?

            -   ##### \_groupDescription

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_groupDescription

                group description

            -   ##### \_groupName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_groupName

                group name

            -   ##### \_groupSecurityTypeName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_groupSecurityTypeName

                group security type (public, restricted, private)

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_numberOfAdministrators

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_numberOfAdministrators

                total number of admins

            -   ##### \_numberOfMembers

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_numberOfMembers

                total number of members (both users and groups)

            -   ##### \_numberOfViewers

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_numberOfViewers

                total number of viewers

            -   ##### \_userStatus

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_userStatus

                user's userStatus (Administrator/Member/Viewer)

    -   ### Class [com.appiancorp.suiteapi.personalization.GroupType](com/appiancorp/suiteapi/personalization/GroupType.html "class in com.appiancorp.suiteapi.personalization")

        class GroupType extends [GroupTypeBase](com/appiancorp/suiteapi/personalization/GroupTypeBase.html "class in com.appiancorp.suiteapi.personalization") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### attributes

                [Attribute](com/appiancorp/suiteapi/personalization/Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] attributes

            -   ##### description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description

            -   ##### id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id

            -   ##### special

                int special

            -   ##### uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid

    -   ### Class [com.appiancorp.suiteapi.personalization.GroupTypeBase](com/appiancorp/suiteapi/personalization/GroupTypeBase.html "class in com.appiancorp.suiteapi.personalization")

        class GroupTypeBase extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### created

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") created

            -   ##### creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator

            -   ##### groupTypeName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeName

            -   ##### lastModified

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lastModified

    -   ### Class [com.appiancorp.suiteapi.personalization.Operator](com/appiancorp/suiteapi/personalization/Operator.html "class in com.appiancorp.suiteapi.personalization")

        class Operator extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_id

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

    -   ### Class [com.appiancorp.suiteapi.personalization.RuleSet](com/appiancorp/suiteapi/personalization/RuleSet.html "class in com.appiancorp.suiteapi.personalization")

        class RuleSet extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### conditions

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") conditions

            -   ##### entityType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") entityType

            -   ##### expressions

                [Expression](com/appiancorp/suiteapi/personalization/Expression.html "class in com.appiancorp.suiteapi.personalization")\[\] expressions

            -   ##### groupId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId

            -   ##### groupTypeId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeId

            -   ##### ruleDescription

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ruleDescription

            -   ##### ruleName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ruleName

    -   ### Class [com.appiancorp.suiteapi.personalization.User](com/appiancorp/suiteapi/personalization/User.html "class in com.appiancorp.suiteapi.personalization")

        class User extends [UserBase](com/appiancorp/suiteapi/personalization/UserBase.html "class in com.appiancorp.suiteapi.personalization") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id

            -   ##### password

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") password

            -   ##### passwordModified

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") passwordModified

            -   ##### temporaryPassword

                boolean temporaryPassword

            -   ##### userLocked

                boolean userLocked

            -   ##### userPassword

                byte\[\] userPassword

            -   ##### uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid

    -   ### Class [com.appiancorp.suiteapi.personalization.UserBase](com/appiancorp/suiteapi/personalization/UserBase.html "class in com.appiancorp.suiteapi.personalization")

        class UserBase extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_displayName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_displayName

            -   ##### \_email

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_email

            -   ##### \_favorite

                boolean \_favorite

            -   ##### \_firstName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_firstName

            -   ##### \_lastName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_lastName

            -   ##### \_middleName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_middleName

            -   ##### \_socialSecurityNumber

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_socialSecurityNumber

            -   ##### \_status

                int \_status

            -   ##### \_username

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_username

    -   ### Class [com.appiancorp.suiteapi.personalization.UserPreferences](com/appiancorp/suiteapi/personalization/UserPreferences.html "class in com.appiancorp.suiteapi.personalization")

        class UserPreferences extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_calendarID

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_calendarID

            -   ##### \_timeZone

                [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") \_timeZone

            -   ##### locale

                [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale

    -   ### Class [com.appiancorp.suiteapi.personalization.UserProfile](com/appiancorp/suiteapi/personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization")

        class UserProfile extends [User](com/appiancorp/suiteapi/personalization/User.html "class in com.appiancorp.suiteapi.personalization") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_address1

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_address1

            -   ##### \_address2

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_address2

            -   ##### \_address3

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_address3

            -   ##### \_city

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_city

            -   ##### \_confirmPassword

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_confirmPassword

            -   ##### \_country

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_country

            -   ##### \_created

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_created

            -   ##### \_customField1

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customField1

            -   ##### \_customField10

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customField10

            -   ##### \_customField2

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customField2

            -   ##### \_customField3

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customField3

            -   ##### \_customField4

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customField4

            -   ##### \_customField5

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customField5

            -   ##### \_customField6

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customField6

            -   ##### \_customField7

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customField7

            -   ##### \_customField8

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customField8

            -   ##### \_customField9

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customField9

            -   ##### \_lastModified

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_lastModified

            -   ##### \_locale

                [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") \_locale

            -   ##### \_phoneHome

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_phoneHome

            -   ##### \_phoneMobile

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_phoneMobile

            -   ##### \_phoneOffice

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_phoneOffice

            -   ##### \_processModelerPreferredView

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_processModelerPreferredView

            -   ##### \_province

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_province

            -   ##### \_state

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_state

            -   ##### \_supervisorName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_supervisorName

            -   ##### \_timeZone

                [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") \_timeZone

            -   ##### \_titleId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_titleId

            -   ##### \_titleName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_titleName

            -   ##### \_userTypeId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_userTypeId

            -   ##### \_userTypeName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_userTypeName

            -   ##### \_zipcode

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_zipcode

            -   ##### blurb

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") blurb

    -   ### Class [com.appiancorp.suiteapi.personalization.UserRank](com/appiancorp/suiteapi/personalization/UserRank.html "class in com.appiancorp.suiteapi.personalization")

        class UserRank extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                rankid

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                rankname

    -   ### Class [com.appiancorp.suiteapi.personalization.UserSearch](com/appiancorp/suiteapi/personalization/UserSearch.html "class in com.appiancorp.suiteapi.personalization")

        class UserSearch extends [UserProfile](com/appiancorp/suiteapi/personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_groupId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_groupId

            -   ##### \_groupName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_groupName

            -   ##### \_operatorCustomField1

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorCustomField1

            -   ##### \_operatorCustomField10

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorCustomField10

            -   ##### \_operatorCustomField2

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorCustomField2

            -   ##### \_operatorCustomField3

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorCustomField3

            -   ##### \_operatorCustomField4

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorCustomField4

            -   ##### \_operatorCustomField5

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorCustomField5

            -   ##### \_operatorCustomField6

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorCustomField6

            -   ##### \_operatorCustomField7

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorCustomField7

            -   ##### \_operatorCustomField8

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorCustomField8

            -   ##### \_operatorCustomField9

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorCustomField9

            -   ##### \_operatorDisplayName

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorDisplayName

            -   ##### \_operatorEmail

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorEmail

            -   ##### \_operatorFirstName

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorFirstName

            -   ##### \_operatorGroupName

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorGroupName

            -   ##### \_operatorLastName

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorLastName

            -   ##### \_operatorMiddleName

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorMiddleName

            -   ##### \_operatorSocialSecurityNumber

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorSocialSecurityNumber

            -   ##### \_operatorSupervisorName

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorSupervisorName

            -   ##### \_operatorTitleName

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorTitleName

            -   ##### \_operatorUsername

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_operatorUsername

-   ## Package [com.appiancorp.suiteapi.portal](com/appiancorp/suiteapi/portal/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.portal.Application](com/appiancorp/suiteapi/portal/Application.html "class in com.appiancorp.suiteapi.portal")

        class Application extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_notificationTypes

                com.appiancorp.ap2.ns.NotificationType\[\] \_notificationTypes

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.Attribute](com/appiancorp/suiteapi/portal/Attribute.html "class in com.appiancorp.suiteapi.portal")

        class Attribute extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                int \_id

                Deprecated.

            -   ##### \_label

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_label

                Deprecated.

            -   ##### \_operatorIds

                int\[\] \_operatorIds

                Deprecated.

            -   ##### \_operatorLabels

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_operatorLabels

                Deprecated.

            -   ##### \_type

                int \_type

                Deprecated.

            -   ##### \_valueIds

                int\[\] \_valueIds

                Deprecated.

            -   ##### \_valueLabels

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_valueLabels

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.Contribution](com/appiancorp/suiteapi/portal/Contribution.html "class in com.appiancorp.suiteapi.portal")

        class Contribution extends [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_author

                boolean \_author

                Deprecated.

            -   ##### \_timestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_timestamp

                Deprecated.

    -   ### Exception [com.appiancorp.suiteapi.portal.InvalidPortletTypeDefinitionException](com/appiancorp/suiteapi/portal/InvalidPortletTypeDefinitionException.html "class in com.appiancorp.suiteapi.portal")

        class InvalidPortletTypeDefinitionException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.portal.InvalidPortletTypeStateException](com/appiancorp/suiteapi/portal/InvalidPortletTypeStateException.html "class in com.appiancorp.suiteapi.portal")

        class InvalidPortletTypeStateException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.portal.InvalidPortletTypeStateFilterException](com/appiancorp/suiteapi/portal/InvalidPortletTypeStateFilterException.html "class in com.appiancorp.suiteapi.portal")

        class InvalidPortletTypeStateFilterException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class com.appiancorp.suiteapi.portal.LocaleSetting

        class LocaleSetting extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_enabled

                boolean \_enabled

            -   ##### locale

                [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale

    -   ### Class [com.appiancorp.suiteapi.portal.Medium](com/appiancorp/suiteapi/portal/Medium.html "class in com.appiancorp.suiteapi.portal")

        class Medium extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_genericOptions

                com.appiancorp.ap2.ns.Option\[\] \_genericOptions

                Deprecated.

            -   ##### \_id

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_specificOptions

                com.appiancorp.ap2.ns.Option\[\] \_specificOptions

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.NavigationButton](com/appiancorp/suiteapi/portal/NavigationButton.html "class in com.appiancorp.suiteapi.portal")

        class NavigationButton extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### counter

                boolean counter

                Deprecated.

            -   ##### counterImplementation

                [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") counterImplementation

                Deprecated.

            -   ##### excludedPeople

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") excludedPeople

                Deprecated.

            -   ##### icon

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") icon

                Deprecated.

            -   ##### id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id

                Deprecated.

            -   ##### key

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key

                Deprecated.

            -   ##### label

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label

                Deprecated.

            -   ##### labelLocalized

                boolean labelLocalized

                Deprecated.

            -   ##### linkType

                int linkType

                Deprecated.

            -   ##### path

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") path

                Deprecated.

            -   ##### targeted

                boolean targeted

                Deprecated.

            -   ##### targetedPeople

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") targetedPeople

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.Notification](com/appiancorp/suiteapi/portal/Notification.html "class in com.appiancorp.suiteapi.portal")

        class Notification extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### application

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") application

                Deprecated.

            -   ##### applicationIcon

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") applicationIcon

                Deprecated.

            -   ##### attributes

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") attributes

                Deprecated.

            -   ##### id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id

                Deprecated.

            -   ##### notificationType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notificationType

                Deprecated.

            -   ##### pageRenderer

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pageRenderer

                Deprecated.

            -   ##### read

                boolean read

                Deprecated.

            -   ##### stringRenderer

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") stringRenderer

                Deprecated.

            -   ##### timestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp

                Deprecated.

            -   ##### typeIcon

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") typeIcon

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.NotificationRule](com/appiancorp/suiteapi/portal/NotificationRule.html "class in com.appiancorp.suiteapi.portal")

        class NotificationRule extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### application

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") application

                Deprecated.

            -   ##### applicationId

                int applicationId

                Deprecated.

            -   ##### conditions

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] conditions

                Deprecated.

            -   ##### keyedOptions

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") keyedOptions

                Deprecated.

            -   ##### medium

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") medium

                Deprecated.

            -   ##### mediumId

                int mediumId

                Deprecated.

            -   ##### options

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") options

                Deprecated.

            -   ##### type

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type

                Deprecated.

            -   ##### typeId

                int typeId

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.Page](com/appiancorp/suiteapi/portal/Page.html "class in com.appiancorp.suiteapi.portal")

        class Page extends [PageInfo](com/appiancorp/suiteapi/portal/PageInfo.html "class in com.appiancorp.suiteapi.portal") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_accessLevel

                int \_accessLevel

                Deprecated.

            -   ##### \_approval

                boolean \_approval

                Deprecated.

            -   ##### \_draftOwner

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_draftOwner

                Deprecated.

            -   ##### \_portlets

                [Portlet](com/appiancorp/suiteapi/portal/Portlet.html "class in com.appiancorp.suiteapi.portal")\[\]\[\] \_portlets

                Deprecated.

            -   ##### \_roleMap

                [PageRoleMap](com/appiancorp/suiteapi/portal/PageRoleMap.html "class in com.appiancorp.suiteapi.portal") \_roleMap

                Deprecated.

            -   ##### \_state

                int \_state

                Deprecated.

            -   ##### \_template

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_template

                Deprecated.

            -   ##### \_zoneCount

                int \_zoneCount

                Deprecated.

            -   ##### dataContextType

                com.appiancorp.type.TypeRef dataContextType

                Deprecated.

            -   ##### uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.PageInfo](com/appiancorp/suiteapi/portal/PageInfo.html "class in com.appiancorp.suiteapi.portal")

        class PageInfo extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_category

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_category

                Deprecated.

            -   ##### \_created

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_created

                Deprecated.

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

                Deprecated.

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

                Deprecated.

            -   ##### \_group

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_group

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_modified

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_modified

                Deprecated.

            -   ##### \_modifier

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_modifier

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_pub

                boolean \_pub

                Deprecated.

            -   ##### \_type

                int \_type

                Deprecated.

            -   ##### \_url

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_url

                Deprecated.

            -   ##### groupUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupUuid

                Deprecated.

                The UUID of this object's associated Group. This field is not populated except when using the IX API.

    -   ### Class [com.appiancorp.suiteapi.portal.PageRoleMap](com/appiancorp/suiteapi/portal/PageRoleMap.html "class in com.appiancorp.suiteapi.portal")

        class PageRoleMap extends [PortalRoleMap](com/appiancorp/suiteapi/portal/PortalRoleMap.html "class in com.appiancorp.suiteapi.portal") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.portal.PortalGroup](com/appiancorp/suiteapi/portal/PortalGroup.html "class in com.appiancorp.suiteapi.portal")

        class PortalGroup extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_homePage

                [PortalGroup.Page](com/appiancorp/suiteapi/portal/PortalGroup.Page.html "class in com.appiancorp.suiteapi.portal") \_homePage

                Deprecated.

            -   ##### \_pages

                [PortalGroup.Page](com/appiancorp/suiteapi/portal/PortalGroup.Page.html "class in com.appiancorp.suiteapi.portal")\[\] \_pages

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.PortalGroup.Page](com/appiancorp/suiteapi/portal/PortalGroup.Page.html "class in com.appiancorp.suiteapi.portal")

        class Page extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_privileges

                int \_privileges

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.PortalRoleMap](com/appiancorp/suiteapi/portal/PortalRoleMap.html "class in com.appiancorp.suiteapi.portal")

        class PortalRoleMap extends [AEVRoleMap](com/appiancorp/suiteapi/common/AEVRoleMap.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.portal.Portlet](com/appiancorp/suiteapi/portal/Portlet.html "class in com.appiancorp.suiteapi.portal")

        class Portlet extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_accessLevel

                int \_accessLevel

                Deprecated.

            -   ##### \_created

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_created

                Deprecated.

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

                Deprecated.

            -   ##### \_frame

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_frame

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_inheritSecurity

                boolean \_inheritSecurity

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_parameters

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> \_parameters

                Deprecated.

            -   ##### \_portletType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_portletType

                Deprecated.

            -   ##### \_portletTypeEditable

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_portletTypeEditable

                Deprecated.

            -   ##### \_pub

                boolean \_pub

                Deprecated.

            -   ##### \_roleMap

                [PortalRoleMap](com/appiancorp/suiteapi/portal/PortalRoleMap.html "class in com.appiancorp.suiteapi.portal") \_roleMap

                Deprecated.

            -   ##### \_shareable

                boolean \_shareable

                Deprecated.

            -   ##### uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.PortletType](com/appiancorp/suiteapi/portal/PortletType.html "class in com.appiancorp.suiteapi.portal")

        class PortletType extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_definition

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_definition

                Deprecated.

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

                Deprecated.

            -   ##### \_editable

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_editable

                Deprecated.

            -   ##### \_extensions

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> \_extensions

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_state

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_state

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.SiteCalendarSettings](com/appiancorp/suiteapi/portal/SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal")

        class SiteCalendarSettings extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### primaryCalendarID

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") primaryCalendarID

            -   ##### sitewideCalendar

                boolean sitewideCalendar

    -   ### Class [com.appiancorp.suiteapi.portal.SiteLocaleSettings](com/appiancorp/suiteapi/portal/SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal")

        class SiteLocaleSettings extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### localSettings

                com.appiancorp.suiteapi.portal.LocaleSetting\[\] localSettings

            -   ##### primaryLocale

                [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") primaryLocale

            -   ##### sitewideLocale

                boolean sitewideLocale

    -   ### Class [com.appiancorp.suiteapi.portal.SiteTimeZoneSettings](com/appiancorp/suiteapi/portal/SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal")

        class SiteTimeZoneSettings extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_primaryTimeZone

                [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") \_primaryTimeZone

            -   ##### \_sitewideTimeZone

                boolean \_sitewideTimeZone

-   ## Package [com.appiancorp.suiteapi.portal.portlets.groupmessage](com/appiancorp/suiteapi/portal/portlets/groupmessage/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessage](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessage.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

        class GroupMessage extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_expirationDate

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_expirationDate

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_link

                [Link](com/appiancorp/suiteapi/portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") \_link

                Deprecated.

            -   ##### \_message

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_message

                Deprecated.

            -   ##### \_updateDate

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_updateDate

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.portlets.groupmessage.GroupMessageLink](com/appiancorp/suiteapi/portal/portlets/groupmessage/GroupMessageLink.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

        class GroupMessageLink extends [Link](com/appiancorp/suiteapi/portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.portal.portlets.groupmessage.InvalidGroupMessageException](com/appiancorp/suiteapi/portal/portlets/groupmessage/InvalidGroupMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")

        class InvalidGroupMessageException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.portal.portlets.leadermessage](com/appiancorp/suiteapi/portal/portlets/leadermessage/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.portal.portlets.leadermessage.InvalidLeaderMessageException](com/appiancorp/suiteapi/portal/portlets/leadermessage/InvalidLeaderMessageException.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

        class InvalidLeaderMessageException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessage](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessage.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

        class LeaderMessage extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_imageUrl

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_imageUrl

                Deprecated.

            -   ##### \_link

                [Link](com/appiancorp/suiteapi/portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") \_link

                Deprecated.

            -   ##### \_message

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_message

                Deprecated.

            -   ##### \_title

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_title

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.portlets.leadermessage.LeaderMessageLink](com/appiancorp/suiteapi/portal/portlets/leadermessage/LeaderMessageLink.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")

        class LeaderMessageLink extends [Link](com/appiancorp/suiteapi/portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.portal.portlets.links](com/appiancorp/suiteapi/portal/portlets/links/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.portal.portlets.links.Folder](com/appiancorp/suiteapi/portal/portlets/links/Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        class Folder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id

                Deprecated.

            -   ##### name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name

                Deprecated.

    -   ### Exception [com.appiancorp.suiteapi.portal.portlets.links.InvalidFolderException](com/appiancorp/suiteapi/portal/portlets/links/InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        class InvalidFolderException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.portal.portlets.links.InvalidLinkException](com/appiancorp/suiteapi/portal/portlets/links/InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        class InvalidLinkException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.portal.portlets.links.InvalidLinkTypeException](com/appiancorp/suiteapi/portal/portlets/links/InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        class InvalidLinkTypeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.portal.portlets.links.Link](com/appiancorp/suiteapi/portal/portlets/links/Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        class Link extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_linkTarget

                [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common") \_linkTarget

                Deprecated.

            -   ##### \_linkType

                [LinkType](com/appiancorp/suiteapi/portal/portlets/links/LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") \_linkType

                Deprecated.

            -   ##### \_linkTypeId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_linkTypeId

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_newWindow

                boolean \_newWindow

                Deprecated.

            -   ##### \_url

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_url

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.portlets.links.LinkType](com/appiancorp/suiteapi/portal/portlets/links/LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        class LinkType extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_localObjectType

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_localObjectType

                Deprecated.

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                Deprecated.

            -   ##### \_prefix

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_prefix

                Deprecated.

            -   ##### \_suffix

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_suffix

                Deprecated.

    -   ### Exception [com.appiancorp.suiteapi.portal.portlets.links.OutOfLinkTypesException](com/appiancorp/suiteapi/portal/portlets/links/OutOfLinkTypesException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        class OutOfLinkTypesException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.portal.portlets.miniwebsite](com/appiancorp/suiteapi/portal/portlets/miniwebsite/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.portal.portlets.miniwebsite.FileChange](com/appiancorp/suiteapi/portal/portlets/miniwebsite/FileChange.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

        class FileChange extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### newFilename

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newFilename

                Deprecated.

            -   ##### oldFilename

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") oldFilename

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadata](com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

        class MiniMetadata extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### approvalRequired

                boolean approvalRequired

                Deprecated.

            -   ##### filename

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filename

                Deprecated.

            -   ##### lockedBy

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy

                Deprecated.

            -   ##### state

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") state

                Deprecated.

            -   ##### template

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") template

                Deprecated.

            -   ##### timestamp

                [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Date.html "class or interface in java.util") timestamp

                Deprecated.

            -   ##### versioned

                boolean versioned

                Deprecated.

            -   ##### versionId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") versionId

                Deprecated.

-   ## Package [com.appiancorp.suiteapi.portal.portlets.wsrp.consumer](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.portal.portlets.wsrp.consumer.DuplicateWSRPProducerURLException](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/DuplicateWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

        class DuplicateWSRPProducerURLException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.portal.portlets.wsrp.consumer.InvalidWSRPProducerException](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

        class InvalidWSRPProducerException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.portal.portlets.wsrp.consumer.InvalidWSRPProducerURLException](com/appiancorp/suiteapi/portal/portlets/wsrp/consumer/InvalidWSRPProducerURLException.html "class in com.appiancorp.suiteapi.portal.portlets.wsrp.consumer")

        class InvalidWSRPProducerURLException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.process](com/appiancorp/suiteapi/process/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.process.AbstractEscalation](com/appiancorp/suiteapi/process/AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

        class AbstractEscalation extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_activityClass

                [ActivityClass](com/appiancorp/suiteapi/process/ActivityClass.html "class in com.appiancorp.suiteapi.process") \_activityClass

            -   ##### \_eventProducer

                [EventProducer](com/appiancorp/suiteapi/process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events") \_eventProducer

            -   ##### \_eventTrigger

                [EventTrigger](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") \_eventTrigger

            -   ##### \_type

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_type

    -   ### Class [com.appiancorp.suiteapi.process.AbstractProcessModel](com/appiancorp/suiteapi/process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")

        class AbstractProcessModel extends [LocalizedIdentity](com/appiancorp/suiteapi/common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_acSchemas

                [ActivityClassSchema](com/appiancorp/suiteapi/process/ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\[\] \_acSchemas

                The schemas for all of the activity classes that are used by all of the nodes in this process model.

            -   ##### \_annotations

                [AnnotationArtifact](com/appiancorp/suiteapi/process/gui/AnnotationArtifact.html "class in com.appiancorp.suiteapi.process.gui")\[\] \_annotations

            -   ##### \_attachments

                [Attachment](com/appiancorp/suiteapi/process/Attachment.html "class in com.appiancorp.suiteapi.process")\[\] \_attachments

            -   ##### \_autoArchiveDelay

                int \_autoArchiveDelay

            -   ##### \_autoDeleteDelay

                int \_autoDeleteDelay

            -   ##### \_autoscaleValidated

                boolean \_autoscaleValidated

            -   ##### \_cleanupAction

                int \_cleanupAction

            -   ##### \_creatorUsername

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creatorUsername

            -   ##### \_deadline

                [Deadline](com/appiancorp/suiteapi/process/Deadline.html "class in com.appiancorp.suiteapi.process") \_deadline

            -   ##### \_defaultProcessSecurity

                [Security](com/appiancorp/suiteapi/common/Security.html "class in com.appiancorp.suiteapi.common") \_defaultProcessSecurity

            -   ##### \_description

                [LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common") \_description

            -   ##### \_emailAttachmentFolderId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_emailAttachmentFolderId

            -   ##### \_enabled

                boolean \_enabled

            -   ##### \_executionEnvironment

                int \_executionEnvironment

            -   ##### \_folderId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_folderId

            -   ##### \_formConfigMap

                [FormConfigMap](com/appiancorp/suiteapi/process/forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") \_formConfigMap

            -   ##### \_groupOwnerId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_groupOwnerId

                The group that owns this model.

            -   ##### \_isPublic

                boolean \_isPublic

            -   ##### \_lanes

                [Lane](com/appiancorp/suiteapi/process/gui/Lane.html "class in com.appiancorp.suiteapi.process.gui")\[\] \_lanes

            -   ##### \_lastModifiedUsername

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_lastModifiedUsername

            -   ##### \_latestVersion

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_latestVersion

            -   ##### \_lockedBy

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_lockedBy

            -   ##### \_lockedByTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_lockedByTime

            -   ##### \_modified

                boolean \_modified

            -   ##### \_mutablePriority

                boolean \_mutablePriority

            -   ##### \_notes

                [Note](com/appiancorp/suiteapi/process/Note.html "class in com.appiancorp.suiteapi.process")\[\] \_notes

            -   ##### \_ntfSettings

                [ProcessModelNotificationSettings](com/appiancorp/suiteapi/process/ProcessModelNotificationSettings.html "class in com.appiancorp.suiteapi.process") \_ntfSettings

            -   ##### \_ownerUsername

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_ownerUsername

                The individual that owns this node.

            -   ##### \_permissions

                [ProcessModelPermissions](com/appiancorp/suiteapi/process/security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") \_permissions

            -   ##### \_priority

                [Priority](com/appiancorp/suiteapi/process/Priority.html "class in com.appiancorp.suiteapi.process") \_priority

            -   ##### \_processName

                [LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common") \_processName

                The default localized name mappings for instances of this process model. At design time, this variable supports the expression syntax.

            -   ##### \_schedules

                [Schedule](com/appiancorp/suiteapi/process/Schedule.html "class in com.appiancorp.suiteapi.process")\[\] \_schedules

            -   ##### \_security

                [Security](com/appiancorp/suiteapi/common/Security.html "class in com.appiancorp.suiteapi.common") \_security

            -   ##### \_state

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_state

            -   ##### \_targetCompletion

                [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") \_targetCompletion

            -   ##### \_timeStampCreated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_timeStampCreated

            -   ##### \_timeStampUpdated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_timeStampUpdated

            -   ##### \_uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_uuid

            -   ##### \_validated

                boolean \_validated

            -   ##### \_version

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_version

            -   ##### \_versionStatus

                int \_versionStatus

            -   ##### emailAttachmentFolderUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") emailAttachmentFolderUuid

                Returns the UUID of the email attachments folder. This field is not populated except when using the IX API.

            -   ##### timeZoneId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneId

            -   ##### useProcessInitiatorTimeZone

                boolean useProcessInitiatorTimeZone

    -   ### Class [com.appiancorp.suiteapi.process.AbstractProcessNode](com/appiancorp/suiteapi/process/AbstractProcessNode.html "class in com.appiancorp.suiteapi.process")

        class AbstractProcessNode extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_activityClass

                [ActivityClass](com/appiancorp/suiteapi/process/ActivityClass.html "class in com.appiancorp.suiteapi.process") \_activityClass

                Representation of the primary activity that executes when this node is traversed.

            -   ##### \_allowsBack

                boolean \_allowsBack

            -   ##### \_assign

                [Assignment](com/appiancorp/suiteapi/process/Assignment.html "class in com.appiancorp.suiteapi.process") \_assign

                The users and groups that are assigned to this node.

            -   ##### \_associations

                [Connection](com/appiancorp/suiteapi/process/Connection.html "class in com.appiancorp.suiteapi.process")\[\] \_associations

            -   ##### \_attachments

                [Attachment](com/appiancorp/suiteapi/process/Attachment.html "class in com.appiancorp.suiteapi.process")\[\] \_attachments

            -   ##### \_confirmationUrl

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_confirmationUrl

                The page to show after this node has been completed, if its primary AC is attended.

            -   ##### \_connections

                [Connection](com/appiancorp/suiteapi/process/Connection.html "class in com.appiancorp.suiteapi.process")\[\] \_connections

                The connections that associate this node with subsequent nodes that can be traversed directly. The `startNode` of each connection should be this node.A node that has a `null` set of connections is final.

            -   ##### \_deadline

                [Deadline](com/appiancorp/suiteapi/process/Deadline.html "class in com.appiancorp.suiteapi.process") \_deadline

            -   ##### \_defaultNodeInstanceSecurity

                [Security](com/appiancorp/suiteapi/common/Security.html "class in com.appiancorp.suiteapi.common") \_defaultNodeInstanceSecurity

            -   ##### \_description

                [LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common") \_description

                The localized description mappings displayed in the design UI.

            -   ##### \_display

                [LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common") \_display

                The localized name mappings displayed in the design UI.

            -   ##### \_eventProducers

                [EventProducer](com/appiancorp/suiteapi/process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")\[\] \_eventProducers

            -   ##### \_exceptionFlow

                [Connection](com/appiancorp/suiteapi/process/Connection.html "class in com.appiancorp.suiteapi.process") \_exceptionFlow

            -   ##### \_exceptionFlowTriggers

                [EventTrigger](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")\[\] \_exceptionFlowTriggers

            -   ##### \_friendlyName

                [LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common") \_friendlyName

                A localized name by which end users identify this node.

            -   ##### \_groupOwner

                [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") \_groupOwner

                Deprecated.

                use groupOwnerId and groupOwnerName instead.

            -   ##### \_groupOwnerId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_groupOwnerId

                The group that owns this node.

            -   ##### \_groupOwnerName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_groupOwnerName

            -   ##### \_guiId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_guiId

                The Id used by the UI. Unique within a process model.

            -   ##### \_icon

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_icon

                A graphic to be shown as a representation of this node.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                The primary key of this node.

            -   ##### \_labelStyle

                [Label](com/appiancorp/suiteapi/process/gui/Label.html "class in com.appiancorp.suiteapi.process.gui") \_labelStyle

            -   ##### \_lane

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_lane

            -   ##### \_lingering

                boolean \_lingering

            -   ##### \_multipleInstance

                [MultipleInstance](com/appiancorp/suiteapi/process/MultipleInstance.html "class in com.appiancorp.suiteapi.process") \_multipleInstance

                What to do if the primary AC for this node is attended and is not acted on quickly enough.

            -   ##### \_notes

                [Note](com/appiancorp/suiteapi/process/Note.html "class in com.appiancorp.suiteapi.process")\[\] \_notes

            -   ##### \_notify

                boolean \_notify

                Whether or not to notify the assigned users of the PM when this node becomes active

            -   ##### \_onCompleteDeletePreviousCompleted

                boolean \_onCompleteDeletePreviousCompleted

            -   ##### \_onCompleteKeepFormData

                boolean \_onCompleteKeepFormData

            -   ##### \_onCreateDeletePreviousActive

                boolean \_onCreateDeletePreviousActive

            -   ##### \_onCreateIgnoreIfActive

                boolean \_onCreateIgnoreIfActive

            -   ##### \_overrideLaneAssignment

                boolean \_overrideLaneAssignment

            -   ##### \_owner

                [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") \_owner

                Deprecated.

                use ownerId and ownerName instead.

            -   ##### \_ownerId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_ownerId

                The individual that owns this node.

            -   ##### \_ownerName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_ownerName

            -   ##### \_paletteIcon

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_paletteIcon

                The smaller graphic that is shown on the palette for this node.

            -   ##### \_postTriggers

                [EventTrigger](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")\[\] \_postTriggers

            -   ##### \_preTriggers

                [EventTrigger](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")\[\] \_preTriggers

            -   ##### \_previousId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_previousId

                The id of the most recent past revision of this node.

            -   ##### \_priority

                [Priority](com/appiancorp/suiteapi/process/Priority.html "class in com.appiancorp.suiteapi.process") \_priority

            -   ##### \_refreshDefaultValues

                boolean \_refreshDefaultValues

            -   ##### \_skipNotification

                boolean \_skipNotification

                Should we email task assignees or not?

            -   ##### \_targetCompletion

                [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") \_targetCompletion

            -   ##### \_targetLag

                [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") \_targetLag

            -   ##### \_uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_uuid

                The uuid of this node.

            -   ##### \_x

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_x

                The horizontal coordinate of this node's location in the user interface.

            -   ##### \_y

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_y

                The vertical coordinate of this node's location in the user interface.

            -   ##### startNode

                boolean startNode

    -   ### Class [com.appiancorp.suiteapi.process.AbstractSchedule](com/appiancorp/suiteapi/process/AbstractSchedule.html "class in com.appiancorp.suiteapi.process")

        class AbstractSchedule extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_absoluteDelay

                boolean \_absoluteDelay

            -   ##### \_absoluteExpression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_absoluteExpression

            -   ##### \_isAbsoluteOrRelative

                boolean \_isAbsoluteOrRelative

            -   ##### \_isRecurring

                boolean \_isRecurring

            -   ##### \_relativeInterval

                [Interval](com/appiancorp/suiteapi/process/Interval.html "class in com.appiancorp.suiteapi.process") \_relativeInterval

    -   ### Class [com.appiancorp.suiteapi.process.ActivityClass](com/appiancorp/suiteapi/process/ActivityClass.html "class in com.appiancorp.suiteapi.process")

        class ActivityClass extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_acSchemaId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_acSchemaId

                The id of the schema for this activity class.

            -   ##### \_customParameters

                [ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] \_customParameters

                Parameters that have been added at design time, and need to be available at runtime.

            -   ##### \_formConfigMap

                [FormConfigMap](com/appiancorp/suiteapi/process/forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") \_formConfigMap

            -   ##### \_helperClass

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_helperClass

            -   ##### \_localId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_localId

                The local id of the schema for this activity class.

            -   ##### \_outputExpressions

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_outputExpressions

                Expressions that are evaluated at the end of the activity. These expressions can be used to save the values of ACPs and ARVs into PVs.

            -   ##### \_outputExpressionsFlags

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_outputExpressionsFlags

            -   ##### \_parameters

                [ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] \_parameters

                List of the parameters (and their values) for this activity class.

            -   ##### \_runAs

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_runAs

                Whom this task should run as, if it is unattended. The value is the id of a role, i.e. process initiator or process model owner.

            -   ##### \_unattended

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_unattended

                Whether or not this class can be run without direct human input.

    -   ### Class [com.appiancorp.suiteapi.process.ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

        class ActivityClassParameter extends [ActivityClassParameterSchema](com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_acpSchemaId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_acpSchemaId

                The primary key of the schema that describes this ACP

            -   ##### \_assignToProcessVariable

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_assignToProcessVariable

            -   ##### \_currCopy

                [ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process") \_currCopy

            -   ##### \_expression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_expression

                An expression in APEL, the evaluation of which produces the runtime default value.

            -   ##### \_generated

                boolean \_generated

            -   ##### \_interiorExpressions

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] \_interiorExpressions

            -   ##### \_passwordStored

                boolean \_passwordStored

            -   ##### \_validationMessages

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") \_validationMessages

                Collection of messages that the runtime components want to display to the user the next time a page containing this parameter is rendered.

            -   ##### \_valueInitialized

                boolean \_valueInitialized

    -   ### Class [com.appiancorp.suiteapi.process.ActivityClassParameterSchema](com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")

        class ActivityClassParameterSchema extends [TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_comment

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_comment

                Comment from administrator to designers.

            -   ##### \_customDisplayReference

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customDisplayReference

            -   ##### \_enumeration

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_enumeration

            -   ##### \_hiddenFromDesigner

                boolean \_hiddenFromDesigner

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_inputToAc

                boolean \_inputToAc

            -   ##### \_localId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_localId

            -   ##### \_mutable

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_mutable

                Determines whether the runtime user may change the value of this parameter. Should only be set to the MUTABLE\_XXX constant values.

            -   ##### \_nullable

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_nullable

                Determines whether the runtime user may omit a value for this parameter. The value should be one of the NULLABLE\_XXX constants.

            -   ##### \_prompt

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_prompt

    -   ### Class [com.appiancorp.suiteapi.process.ActivityClassSchema](com/appiancorp/suiteapi/process/ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")

        class ActivityClassSchema extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_asynchronous

                int \_asynchronous

            -   ##### \_customSetupUrl

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customSetupUrl

            -   ##### \_executionEnvironmentId

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_executionEnvironmentId

            -   ##### \_formConfigMap

                [FormConfigMap](com/appiancorp/suiteapi/process/forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") \_formConfigMap

            -   ##### \_function

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_function

            -   ##### \_helperClass

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_helperClass

            -   ##### \_javaClassName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_javaClassName

            -   ##### \_localId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_localId

            -   ##### \_parameters

                [ActivityClassParameterSchema](com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")\[\] \_parameters

            -   ##### \_returnValues

                [ActivityReturnVariable](com/appiancorp/suiteapi/process/ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] \_returnValues

            -   ##### \_template

                boolean \_template

            -   ##### \_type

                int \_type

            -   ##### \_unattended

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_unattended

                Whether activities of this type can be attended, unattended, or both. For an ActivityClassSchema, all three values are legal. For an ActivityClass, the designer using the activity MUST specify whether the activity is ATTENDED or UNATTENDED. The value of this field should be one of the constants ATTENDED, UNATTENDED, or ATTENDED\_AND\_UNATTENDED.

    -   ### Class [com.appiancorp.suiteapi.process.ActivityProperties](com/appiancorp/suiteapi/process/ActivityProperties.html "class in com.appiancorp.suiteapi.process")

        class ActivityProperties extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_processModelProperties

                [ProcessModelProperties](com/appiancorp/suiteapi/process/ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") \_processModelProperties

            -   ##### \_processProperties

                [ProcessProperties](com/appiancorp/suiteapi/process/ProcessProperties.html "class in com.appiancorp.suiteapi.process") \_processProperties

            -   ##### \_taskProperties

                [TaskProperties](com/appiancorp/suiteapi/process/TaskProperties.html "class in com.appiancorp.suiteapi.process") \_taskProperties

    -   ### Class [com.appiancorp.suiteapi.process.ActivityReturnVariable](com/appiancorp/suiteapi/process/ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")

        class ActivityReturnVariable extends [ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.AppianTypeCache](com/appiancorp/suiteapi/process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process")

        class AppianTypeCache extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_appianTypes

                [SimpleValueMap](com/appiancorp/suiteapi/common/SimpleValueMap.html "class in com.appiancorp.suiteapi.common") \_appianTypes

                Maintains the id and display names of all of the Appian types that are referenced in the model. The keys in the table are the AT\_XXX constants, and the values are HashMaps, of which the keys are ids (as Long or String) and the values are String display names (or null, if the display names have not been retrieved from the database yet).

            -   ##### \_invalidReferences

                boolean \_invalidReferences

                `false` as long as all provided ids have been resolved to display names; `true` if some ids were unresolvable.

    -   ### Class [com.appiancorp.suiteapi.process.Assignment](com/appiancorp/suiteapi/process/Assignment.html "class in com.appiancorp.suiteapi.process")

        class Assignment extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_acceptMode

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_acceptMode

                Whether the user must accept manually, can auto-accept, etc. Values should correspond to ACCEPT\_XXX constants.

            -   ##### \_assignees

                [Assignment.Assignee](com/appiancorp/suiteapi/process/Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\] \_assignees

            -   ##### \_assignmentFunction

                [ActivityClass](com/appiancorp/suiteapi/process/ActivityClass.html "class in com.appiancorp.suiteapi.process") \_assignmentFunction

            -   ##### \_assignmentPosition

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_assignmentPosition

            -   ##### \_multipleInstanceAssigneeType

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_multipleInstanceAssigneeType

    -   ### Class [com.appiancorp.suiteapi.process.Assignment.Assignee](com/appiancorp/suiteapi/process/Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")

        class Assignee extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_displayName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_displayName

            -   ##### \_privilege

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_privilege

                Whether or not the user can reassign a task that has been assigned to him or her.

            -   ##### \_type

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_type

            -   ##### \_value

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") \_value

    -   ### Class [com.appiancorp.suiteapi.process.Attachment](com/appiancorp/suiteapi/process/Attachment.html "class in com.appiancorp.suiteapi.process")

        class Attachment extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_attachedBy

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_attachedBy

            -   ##### \_attachedDocumentSubType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_attachedDocumentSubType

            -   ##### \_attachedObject

                [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common") \_attachedObject

            -   ##### \_attachedTo

                [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common") \_attachedTo

            -   ##### \_attachedToGuiId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_attachedToGuiId

            -   ##### \_attachedUrl

                [Attachment.NamedUrl](com/appiancorp/suiteapi/process/Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") \_attachedUrl

            -   ##### \_comment

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_comment

            -   ##### \_dateAttached

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_dateAttached

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_permissions

                [AttachmentPermissions](com/appiancorp/suiteapi/process/AttachmentPermissions.html "class in com.appiancorp.suiteapi.process") \_permissions

    -   ### Class [com.appiancorp.suiteapi.process.Attachment.NamedUrl](com/appiancorp/suiteapi/process/Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process")

        class NamedUrl extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_url

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_url

    -   ### Class [com.appiancorp.suiteapi.process.AttachmentMediator](com/appiancorp/suiteapi/process/AttachmentMediator.html "class in com.appiancorp.suiteapi.process")

        class AttachmentMediator extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_attachedAtDesignTime

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_attachedAtDesignTime

            -   ##### \_attachedBy

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_attachedBy

            -   ##### \_attachedDocumentSubType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_attachedDocumentSubType

            -   ##### \_attachedObject

                [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common") \_attachedObject

            -   ##### \_attachedTo

                [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common") \_attachedTo

            -   ##### \_attachedUrl

                [Attachment.NamedUrl](com/appiancorp/suiteapi/process/Attachment.NamedUrl.html "class in com.appiancorp.suiteapi.process") \_attachedUrl

            -   ##### \_comment

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_comment

            -   ##### \_dateAttached

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_dateAttached

            -   ##### \_displayName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_displayName

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_isProcessAttachment

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_isProcessAttachment

            -   ##### \_permissions

                [AttachmentPermissions](com/appiancorp/suiteapi/process/AttachmentPermissions.html "class in com.appiancorp.suiteapi.process") \_permissions

            -   ##### \_type

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_type

    -   ### Class [com.appiancorp.suiteapi.process.AttachmentPermissions](com/appiancorp/suiteapi/process/AttachmentPermissions.html "class in com.appiancorp.suiteapi.process")

        class AttachmentPermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_removable

                boolean \_removable

    -   ### Class [com.appiancorp.suiteapi.process.Connection](com/appiancorp/suiteapi/process/Connection.html "class in com.appiancorp.suiteapi.process")

        class Connection extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_associations

                [Connection](com/appiancorp/suiteapi/process/Connection.html "class in com.appiancorp.suiteapi.process")\[\] \_associations

            -   ##### \_chained

                boolean \_chained

            -   ##### \_endNodeGuiId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_endNodeGuiId

            -   ##### \_endObjectType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_endObjectType

            -   ##### \_fromAnchor

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_fromAnchor

            -   ##### \_guiId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_guiId

            -   ##### \_label

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_label

            -   ##### \_labelStyle

                [Label](com/appiancorp/suiteapi/process/gui/Label.html "class in com.appiancorp.suiteapi.process.gui") \_labelStyle

            -   ##### \_overridesAssignment

                boolean \_overridesAssignment

            -   ##### \_showArrowhead

                boolean \_showArrowhead

            -   ##### \_startNodeGuiId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_startNodeGuiId

            -   ##### \_status

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_status

            -   ##### \_synchronizeData

                boolean \_synchronizeData

            -   ##### \_toAnchor

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_toAnchor

    -   ### Class [com.appiancorp.suiteapi.process.Escalation](com/appiancorp/suiteapi/process/Escalation.html "class in com.appiancorp.suiteapi.process")

        class Escalation extends [AbstractEscalation](com/appiancorp/suiteapi/process/AbstractEscalation.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.EscalationInstance](com/appiancorp/suiteapi/process/EscalationInstance.html "class in com.appiancorp.suiteapi.process")

        class EscalationInstance extends [AbstractEscalation](com/appiancorp/suiteapi/process/AbstractEscalation.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_hasTriggered

                boolean \_hasTriggered

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_timeStampScheduled

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_timeStampScheduled

                When the escalation is set to trigger; will be null if the node is not yet active, and is set to trigger at a time relative to the activation of the node

    -   ### Class [com.appiancorp.suiteapi.process.GenericTypedVariable](com/appiancorp/suiteapi/process/GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")

        class GenericTypedVariable extends [TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.HistoryRecord](com/appiancorp/suiteapi/process/HistoryRecord.html "class in com.appiancorp.suiteapi.process")

        class HistoryRecord extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_dataIds

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_dataIds

            -   ##### \_direction

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_direction

            -   ##### \_groups

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_groups

            -   ##### \_newName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_newName

            -   ##### \_newPriority

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_newPriority

            -   ##### \_newTimestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_newTimestamp

            -   ##### \_newValue

                [TypedValue](com/appiancorp/suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") \_newValue

            -   ##### \_objectId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_objectId

            -   ##### \_objectName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_objectName

            -   ##### \_objectType

                int \_objectType

            -   ##### \_timestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_timestamp

            -   ##### \_type

                int \_type

            -   ##### \_user

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_user

            -   ##### \_users

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_users

            -   ##### engineId

                int engineId

            -   ##### savedAsVersion

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") savedAsVersion

            -   ##### sourceModel

                [HistoryRecord.ProcessModelInfo](com/appiancorp/suiteapi/process/HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process") sourceModel

            -   ##### targetModel

                [HistoryRecord.ProcessModelInfo](com/appiancorp/suiteapi/process/HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process") targetModel

            -   ##### writeCounter

                int writeCounter

            -   ##### writeEpoch

                int writeEpoch

    -   ### Class [com.appiancorp.suiteapi.process.HistoryRecord.ProcessModelInfo](com/appiancorp/suiteapi/process/HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")

        class ProcessModelInfo extends [LocalizedIdentity](com/appiancorp/suiteapi/common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid

            -   ##### version

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version

    -   ### Class [com.appiancorp.suiteapi.process.Instances](com/appiancorp/suiteapi/process/Instances.html "class in com.appiancorp.suiteapi.process")

        class Instances extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_expression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_expression

                Expression that is evaluated to find the number of instances that should be spawned for a particular node.

            -   ##### \_instanceType

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_instanceType

                Specifies how the multiple node instances are to be spawned.

                See Also:

                -   [`Instances.SPAWN_COUNT_CONSTANT`](com/appiancorp/suiteapi/process/Instances.html#SPAWN_COUNT_CONSTANT)
                -   [`Instances.SPAWN_COUNT_PV_VALUE`](com/appiancorp/suiteapi/process/Instances.html#SPAWN_COUNT_PV_VALUE)
                -   [`Instances.SPAWN_COUNT_PV_LENGTH`](com/appiancorp/suiteapi/process/Instances.html#SPAWN_COUNT_PV_LENGTH)
                -   [`Instances.SPAWN_COUNT_ASSIGNEE_COUNT`](com/appiancorp/suiteapi/process/Instances.html#SPAWN_COUNT_ASSIGNEE_COUNT)
                -   [`Instances.SPAWN_COUNT_EXPRESSION`](com/appiancorp/suiteapi/process/Instances.html#SPAWN_COUNT_EXPRESSION)

            -   ##### \_nextSpawnNew

                boolean \_nextSpawnNew

                Specifies how many instances of nodes should be spawned when the instances is based on Array type Process Variable.

    -   ### Class [com.appiancorp.suiteapi.process.Interval](com/appiancorp/suiteapi/process/Interval.html "class in com.appiancorp.suiteapi.process")

        class Interval extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_dayInterval

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_dayInterval

            -   ##### \_dayIntervalExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_dayIntervalExpr

            -   ##### \_hourInterval

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_hourInterval

            -   ##### \_hourIntervalExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_hourIntervalExpr

            -   ##### \_minInterval

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_minInterval

            -   ##### \_minIntervalExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_minIntervalExpr

            -   ##### \_monthInterval

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_monthInterval

            -   ##### \_monthIntervalExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_monthIntervalExpr

            -   ##### \_weekInterval

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_weekInterval

            -   ##### \_weekIntervalExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_weekIntervalExpr

            -   ##### \_yearInterval

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_yearInterval

            -   ##### \_yearIntervalExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_yearIntervalExpr

    -   ### Class [com.appiancorp.suiteapi.process.MultipleInstance](com/appiancorp/suiteapi/process/MultipleInstance.html "class in com.appiancorp.suiteapi.process")

        class MultipleInstance extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_recurrence

                [Recurrence](com/appiancorp/suiteapi/process/Recurrence.html "class in com.appiancorp.suiteapi.process") \_recurrence

            -   ##### \_recurrenceInstance

                [RecurrenceInstance](com/appiancorp/suiteapi/process/RecurrenceInstance.html "class in com.appiancorp.suiteapi.process") \_recurrenceInstance

            -   ##### \_spawning

                [Spawning](com/appiancorp/suiteapi/process/Spawning.html "class in com.appiancorp.suiteapi.process") \_spawning

    -   ### Class [com.appiancorp.suiteapi.process.Note](com/appiancorp/suiteapi/process/Note.html "class in com.appiancorp.suiteapi.process")

        class Note extends [NoteMetadata](com/appiancorp/suiteapi/process/NoteMetadata.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_content

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_content

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.process.NoteMetadata](com/appiancorp/suiteapi/process/NoteMetadata.html "class in com.appiancorp.suiteapi.process")

        class NoteMetadata extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_attachedTo

                [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common") \_attachedTo

                Deprecated.

            -   ##### \_author

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_author

                Deprecated.

            -   ##### \_createTimestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_createTimestamp

                Deprecated.

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

                Deprecated.

            -   ##### \_location

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_location

                Deprecated.

            -   ##### \_permissions

                [NotePermissions](com/appiancorp/suiteapi/process/NotePermissions.html "class in com.appiancorp.suiteapi.process") \_permissions

                Deprecated.

            -   ##### \_type

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_type

                Deprecated.

            -   ##### \_updateTimestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_updateTimestamp

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.process.NotePermissions](com/appiancorp/suiteapi/process/NotePermissions.html "class in com.appiancorp.suiteapi.process")

        class NotePermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_deletable

                boolean \_deletable

                Deprecated.

            -   ##### \_updatable

                boolean \_updatable

                Deprecated.

    -   ### Class [com.appiancorp.suiteapi.process.Palette](com/appiancorp/suiteapi/process/Palette.html "class in com.appiancorp.suiteapi.process")

        class Palette extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### category

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") category

            -   ##### enabled

                boolean enabled

            -   ##### items

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[PaletteItem](com/appiancorp/suiteapi/process/PaletteItem.html "class in com.appiancorp.suiteapi.process")\> items

            -   ##### schemas

                [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[ActivityClassSchema](com/appiancorp/suiteapi/process/ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\> schemas

            -   ##### system

                boolean system

                Whether this palette is provided by the system or is a custom one.

    -   ### Class [com.appiancorp.suiteapi.process.Palette.Descriptor](com/appiancorp/suiteapi/process/Palette.Descriptor.html "class in com.appiancorp.suiteapi.process")

        class Descriptor extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.PaletteCategory](com/appiancorp/suiteapi/process/PaletteCategory.html "class in com.appiancorp.suiteapi.process")

        class PaletteCategory extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### enabled

                boolean enabled

            -   ##### palettes

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Palette](com/appiancorp/suiteapi/process/Palette.html "class in com.appiancorp.suiteapi.process")\> palettes

            -   ##### parent

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parent

            -   ##### subCategories

                [PaletteCategory](com/appiancorp/suiteapi/process/PaletteCategory.html "class in com.appiancorp.suiteapi.process")\[\] subCategories

    -   ### Class [com.appiancorp.suiteapi.process.PaletteCategory.AllCategories](com/appiancorp/suiteapi/process/PaletteCategory.AllCategories.html "class in com.appiancorp.suiteapi.process")

        class AllCategories extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.PaletteCategory.Descriptor](com/appiancorp/suiteapi/process/PaletteCategory.Descriptor.html "class in com.appiancorp.suiteapi.process")

        class Descriptor extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

            -   ##### \_numChildren

                int \_numChildren

            -   ##### \_numPalettes

                int \_numPalettes

    -   ### Class [com.appiancorp.suiteapi.process.PaletteErrorItem](com/appiancorp/suiteapi/process/PaletteErrorItem.html "class in com.appiancorp.suiteapi.process")

        class PaletteErrorItem extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.PaletteItem](com/appiancorp/suiteapi/process/PaletteItem.html "class in com.appiancorp.suiteapi.process")

        class PaletteItem extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### acSchemaId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") acSchemaId

            -   ##### acSchemaLocalId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") acSchemaLocalId

            -   ##### appianType

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianType

                The related appian type. Added when implementing the design objects during palette search to access the palette icon and canvas icon fields.

            -   ##### canvasIcon

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") canvasIcon

            -   ##### enabled

                boolean enabled

            -   ##### eventProducer

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") eventProducer

            -   ##### isCustomPlugin

                boolean isCustomPlugin

            -   ##### paletteIcon

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") paletteIcon

            -   ##### postTrigger

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") postTrigger

            -   ##### preTrigger

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") preTrigger

    -   ### Class [com.appiancorp.suiteapi.process.Priority](com/appiancorp/suiteapi/process/Priority.html "class in com.appiancorp.suiteapi.process")

        class Priority extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

            -   ##### \_effectiveId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_effectiveId

            -   ##### \_iconId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_iconId

            -   ##### \_imageLoc

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_imageLoc

            -   ##### \_isDefault

                boolean \_isDefault

    -   ### Class [com.appiancorp.suiteapi.process.ProcessApplicationRoleMap](com/appiancorp/suiteapi/process/ProcessApplicationRoleMap.html "class in com.appiancorp.suiteapi.process")

        class ProcessApplicationRoleMap extends [RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.ProcessDetails](com/appiancorp/suiteapi/process/ProcessDetails.html "class in com.appiancorp.suiteapi.process")

        class ProcessDetails extends [ProcessSummary](com/appiancorp/suiteapi/process/ProcessSummary.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_deadline

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_deadline

            -   ##### \_formConfig

                [FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") \_formConfig

            -   ##### \_groupOwners

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_groupOwners

            -   ##### \_lockedBy

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_lockedBy

            -   ##### \_notes

                [Note](com/appiancorp/suiteapi/process/Note.html "class in com.appiancorp.suiteapi.process")\[\] \_notes

            -   ##### \_timezone

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_timezone

            -   ##### \_userOwners

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_userOwners

    -   ### Class [com.appiancorp.suiteapi.process.ProcessDiagram](com/appiancorp/suiteapi/process/ProcessDiagram.html "class in com.appiancorp.suiteapi.process")

        class ProcessDiagram extends [AbstractProcessModel](com/appiancorp/suiteapi/process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_childProcesses

                [ProcessSummary](com/appiancorp/suiteapi/process/ProcessSummary.html "class in com.appiancorp.suiteapi.process")\[\] \_childProcesses

                The child processes of this process, if this process contains sub or linked processes; null otherwise used for breadcrumbs for child processes in the interface only contains processes that the user can see

            -   ##### \_parentProcesses

                [ProcessSummary](com/appiancorp/suiteapi/process/ProcessSummary.html "class in com.appiancorp.suiteapi.process")\[\] \_parentProcesses

                The parent processes of this process, if this process is a sub or linked process; null otherwise used for breadcrumbs to parent processes in the interface only contains processes that the user can see

            -   ##### \_processId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_processId

            -   ##### \_processLockedBy

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_processLockedBy

                The user name of the person who has locked the process; null if the process is not locked

            -   ##### \_processLockedTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_processLockedTime

                The time at which the process was locked; null if the process is not locked

            -   ##### \_processNodes

                [RuntimeProcessNode](com/appiancorp/suiteapi/process/RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] \_processNodes

            -   ##### \_processPermissions

                [ProcessPermissions](com/appiancorp/suiteapi/process/security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security") \_processPermissions

            -   ##### \_processUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_processUuid

            -   ##### \_runtimeProcessName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_runtimeProcessName

            -   ##### \_runtimeProcessNodes

                [RuntimeProcessNode](com/appiancorp/suiteapi/process/RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] \_runtimeProcessNodes

            -   ##### \_status

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_status

            -   ##### \_variables

                [ProcessVariableInstance](com/appiancorp/suiteapi/process/ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")\[\] \_variables

    -   ### Class [com.appiancorp.suiteapi.process.ProcessException](com/appiancorp/suiteapi/process/ProcessException.html "class in com.appiancorp.suiteapi.process")

        class ProcessException extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_exceptionType

                [ProcessExceptionType](com/appiancorp/suiteapi/process/ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") \_exceptionType

            -   ##### \_resolvedTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_resolvedTime

            -   ##### \_resolver

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_resolver

    -   ### Class [com.appiancorp.suiteapi.process.ProcessExceptionType](com/appiancorp/suiteapi/process/ProcessExceptionType.html "class in com.appiancorp.suiteapi.process")

        class ProcessExceptionType extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### attachedToType

                int attachedToType

            -   ##### description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description

            -   ##### localId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId

            -   ##### noteContent

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") noteContent

            -   ##### noteId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId

            -   ##### notifyProcessAdministrators

                boolean notifyProcessAdministrators

            -   ##### notifyProcessInitiator

                boolean notifyProcessInitiator

            -   ##### notifySystemAdministrators

                boolean notifySystemAdministrators

            -   ##### notifyTaskAcceptor

                boolean notifyTaskAcceptor

            -   ##### recommendedAction

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") recommendedAction

    -   ### Class [com.appiancorp.suiteapi.process.ProcessModel](com/appiancorp/suiteapi/process/ProcessModel.html "class in com.appiancorp.suiteapi.process")

        class ProcessModel extends [AbstractProcessModel](com/appiancorp/suiteapi/process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_datatypeReferences

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_datatypeReferences

            -   ##### \_logging

                [ProcessModelLogging](com/appiancorp/suiteapi/process/ProcessModelLogging.html "class in com.appiancorp.suiteapi.process") \_logging

            -   ##### \_processNodes

                [ProcessNode](com/appiancorp/suiteapi/process/ProcessNode.html "class in com.appiancorp.suiteapi.process")\[\] \_processNodes

            -   ##### \_variables

                [ProcessVariable](com/appiancorp/suiteapi/process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] \_variables

    -   ### Class [com.appiancorp.suiteapi.process.ProcessModel.Descriptor](com/appiancorp/suiteapi/process/ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")

        class Descriptor extends [LocalizedIdentity](com/appiancorp/suiteapi/common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_creatorUsername

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creatorUsername

            -   ##### \_dashboardId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_dashboardId

            -   ##### \_description

                [LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common") \_description

            -   ##### \_enabled

                boolean \_enabled

            -   ##### \_executionEnvironment

                int \_executionEnvironment

            -   ##### \_folderId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_folderId

            -   ##### \_lockedBy

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_lockedBy

            -   ##### \_mutablePriority

                boolean \_mutablePriority

            -   ##### \_objectType

                int \_objectType

            -   ##### \_permissions

                [ProcessModelPermissions](com/appiancorp/suiteapi/process/security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") \_permissions

            -   ##### \_priority

                [Priority](com/appiancorp/suiteapi/process/Priority.html "class in com.appiancorp.suiteapi.process") \_priority

            -   ##### \_timeStampCreated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_timeStampCreated

            -   ##### \_timeStampUpdated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_timeStampUpdated

            -   ##### \_uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_uuid

            -   ##### \_validated

                boolean \_validated

            -   ##### \_version

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_version

            -   ##### \_versionStatus

                int \_versionStatus

            -   ##### favorite

                boolean favorite

            -   ##### lastModifiedUsername

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastModifiedUsername

    -   ### Class [com.appiancorp.suiteapi.process.ProcessModelDetails](com/appiancorp/suiteapi/process/ProcessModelDetails.html "class in com.appiancorp.suiteapi.process")

        class ProcessModelDetails extends [ProcessModelSummary](com/appiancorp/suiteapi/process/ProcessModelSummary.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_formConfig

                [FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") \_formConfig

            -   ##### \_groupOwners

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_groupOwners

            -   ##### \_timezoneId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_timezoneId

            -   ##### \_userOwners

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_userOwners

    -   ### Class [com.appiancorp.suiteapi.process.ProcessModelFolder](com/appiancorp/suiteapi/process/ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")

        class ProcessModelFolder extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_ancestorFolderIds

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_ancestorFolderIds

            -   ##### \_ancestorFolderNames

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_ancestorFolderNames

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

            -   ##### \_dateCreated

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_dateCreated

            -   ##### \_dateModified

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_dateModified

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

            -   ##### \_numberOfChildFolders

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_numberOfChildFolders

            -   ##### \_numberOfProcessModels

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_numberOfProcessModels

            -   ##### \_objectType

                int \_objectType

            -   ##### \_parentFolderId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_parentFolderId

            -   ##### \_parentFolderName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_parentFolderName

            -   ##### \_permissions

                [ProcessModelFolderPermissions](com/appiancorp/suiteapi/process/security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security") \_permissions

            -   ##### \_special

                boolean \_special

            -   ##### \_type

                int \_type

            -   ##### parentFolderUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentFolderUuid

                The UUID of the folder that contains this folder. This field is not populated except when using the IX API.

            -   ##### uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid

    -   ### Class [com.appiancorp.suiteapi.process.ProcessModelLogging](com/appiancorp/suiteapi/process/ProcessModelLogging.html "class in com.appiancorp.suiteapi.process")

        class ProcessModelLogging extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### transformationErrors

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> transformationErrors

    -   ### Class [com.appiancorp.suiteapi.process.ProcessModelNotificationSettings](com/appiancorp/suiteapi/process/ProcessModelNotificationSettings.html "class in com.appiancorp.suiteapi.process")

        class ProcessModelNotificationSettings extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_customSettings

                boolean \_customSettings

            -   ##### \_notifyInitiator

                boolean \_notifyInitiator

            -   ##### \_notifyOwner

                boolean \_notifyOwner

            -   ##### \_notifyRecipientsInExpression

                boolean \_notifyRecipientsInExpression

            -   ##### \_notifyUsersAndGroups

                boolean \_notifyUsersAndGroups

            -   ##### \_recipientsExpression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_recipientsExpression

            -   ##### \_usersAndGroups

                [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] \_usersAndGroups

    -   ### Class [com.appiancorp.suiteapi.process.ProcessModelProperties](com/appiancorp/suiteapi/process/ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")

        class ProcessModelProperties extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

            -   ##### \_processModelVersionId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_processModelVersionId

            -   ##### designer

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") designer

    -   ### Class [com.appiancorp.suiteapi.process.ProcessModelSummary](com/appiancorp/suiteapi/process/ProcessModelSummary.html "class in com.appiancorp.suiteapi.process")

        class ProcessModelSummary extends [ProcessModelProperties](com/appiancorp/suiteapi/process/ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_createdTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_createdTime

            -   ##### \_creator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_creator

            -   ##### \_defaultProcessPriorityName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_defaultProcessPriorityName

            -   ##### \_favorite

                boolean \_favorite

            -   ##### \_lastModifiedTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_lastModifiedTime

            -   ##### \_latestPublishedVersion

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_latestPublishedVersion

            -   ##### \_mutablePriority

                boolean \_mutablePriority

            -   ##### \_permissions

                [ProcessModelPermissions](com/appiancorp/suiteapi/process/security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") \_permissions

            -   ##### \_priority

                [Priority](com/appiancorp/suiteapi/process/Priority.html "class in com.appiancorp.suiteapi.process") \_priority

            -   ##### \_statusName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_statusName

            -   ##### \_targetCompletion

                [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") \_targetCompletion

    -   ### Class [com.appiancorp.suiteapi.process.ProcessNode](com/appiancorp/suiteapi/process/ProcessNode.html "class in com.appiancorp.suiteapi.process")

        class ProcessNode extends [AbstractProcessNode](com/appiancorp/suiteapi/process/AbstractProcessNode.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_escalations

                [Escalation](com/appiancorp/suiteapi/process/Escalation.html "class in com.appiancorp.suiteapi.process")\[\] \_escalations

            -   ##### \_schedule

                [Schedule](com/appiancorp/suiteapi/process/Schedule.html "class in com.appiancorp.suiteapi.process") \_schedule

                Schedule for another activity to run while this node is active.

    -   ### Class [com.appiancorp.suiteapi.process.ProcessProperties](com/appiancorp/suiteapi/process/ProcessProperties.html "class in com.appiancorp.suiteapi.process")

        class ProcessProperties extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        3295352739987212813L

        -   #### Serialized Fields

            -   ##### \_depth

                int \_depth

            -   ##### \_initiator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_initiator

            -   ##### \_priority

                [Priority](com/appiancorp/suiteapi/process/Priority.html "class in com.appiancorp.suiteapi.process") \_priority

    -   ### Class [com.appiancorp.suiteapi.process.ProcessRoleMap](com/appiancorp/suiteapi/process/ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")

        class ProcessRoleMap extends [RoleMap](com/appiancorp/suiteapi/common/RoleMap.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.ProcessSummary](com/appiancorp/suiteapi/process/ProcessSummary.html "class in com.appiancorp.suiteapi.process")

        class ProcessSummary extends [ProcessProperties](com/appiancorp/suiteapi/process/ProcessProperties.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        \-6066680078722624207L

        -   #### Serialized Fields

            -   ##### \_autoscaleUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_autoscaleUuid

            -   ##### \_completedTaskCount

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_completedTaskCount

            -   ##### \_currentTaskCount

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_currentTaskCount

            -   ##### \_dashboardId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_dashboardId

            -   ##### \_designer

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_designer

            -   ##### \_elapsedMilliseconds

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_elapsedMilliseconds

            -   ##### \_endTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_endTime

            -   ##### \_exception

                [ProcessException](com/appiancorp/suiteapi/process/ProcessException.html "class in com.appiancorp.suiteapi.process") \_exception

            -   ##### \_favorite

                boolean \_favorite

            -   ##### \_mutablePriority

                boolean \_mutablePriority

            -   ##### \_parentId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_parentId

            -   ##### \_parentName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_parentName

            -   ##### \_permissions

                [ProcessPermissions](com/appiancorp/suiteapi/process/security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security") \_permissions

            -   ##### \_processModelId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_processModelId

            -   ##### \_processModelName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_processModelName

            -   ##### \_processModelVersion

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_processModelVersion

            -   ##### \_startTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_startTime

            -   ##### \_status

                int \_status

            -   ##### \_statusName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_statusName

    -   ### Class [com.appiancorp.suiteapi.process.ProcessVariable](com/appiancorp/suiteapi/process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")

        class ProcessVariable extends [TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_expression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_expression

                Expression

            -   ##### \_hidden

                boolean \_hidden

                If this variable will be hidden from its parent process

            -   ##### \_parameter

                boolean \_parameter

                Whether or not this variable is a parameter needed to start the process.

            -   ##### \_required

                boolean \_required

                If this variable is a parameter, must the user supply a non-blank value?

            -   ##### \_validationMessages

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") \_validationMessages

                Collection of messages that the runtime components want to display to the user the next time a page containing this parameter is rendered.

    -   ### Class [com.appiancorp.suiteapi.process.ProcessVariableInstance](com/appiancorp/suiteapi/process/ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")

        class ProcessVariableInstance extends [ProcessVariable](com/appiancorp/suiteapi/process/ProcessVariable.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_runningValue

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") \_runningValue

            -   ##### runningType

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") runningType

    -   ### Class [com.appiancorp.suiteapi.process.Recurrence](com/appiancorp/suiteapi/process/Recurrence.html "class in com.appiancorp.suiteapi.process")

        class Recurrence extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_end

                [Recurrence.End](com/appiancorp/suiteapi/process/Recurrence.End.html "class in com.appiancorp.suiteapi.process") \_end

            -   ##### \_recurringInterval

                [RecurringInterval](com/appiancorp/suiteapi/process/RecurringInterval.html "class in com.appiancorp.suiteapi.process") \_recurringInterval

            -   ##### timeZoneId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneId

            -   ##### timeZoneIdExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneIdExpr

    -   ### Class [com.appiancorp.suiteapi.process.Recurrence.End](com/appiancorp/suiteapi/process/Recurrence.End.html "class in com.appiancorp.suiteapi.process")

        class End extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_endDate

                [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") \_endDate

            -   ##### \_endDateExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_endDateExpr

            -   ##### \_endExpression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_endExpression

            -   ##### \_endTime

                [Time](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Time.html "class or interface in java.sql") \_endTime

            -   ##### \_endTimeExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_endTimeExpr

            -   ##### \_endType

                int \_endType

            -   ##### \_numOccurrences

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_numOccurrences

            -   ##### endDateTimeExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endDateTimeExpr

    -   ### Class [com.appiancorp.suiteapi.process.RecurrenceInstance](com/appiancorp/suiteapi/process/RecurrenceInstance.html "class in com.appiancorp.suiteapi.process")

        class RecurrenceInstance extends [Recurrence](com/appiancorp/suiteapi/process/Recurrence.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_timeStampScheduled

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_timeStampScheduled

    -   ### Class [com.appiancorp.suiteapi.process.RecurringInterval](com/appiancorp/suiteapi/process/RecurringInterval.html "class in com.appiancorp.suiteapi.process")

        class RecurringInterval extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_daily

                [RecurringInterval.Daily](com/appiancorp/suiteapi/process/RecurringInterval.Daily.html "class in com.appiancorp.suiteapi.process") \_daily

            -   ##### \_interval

                [Interval](com/appiancorp/suiteapi/process/Interval.html "class in com.appiancorp.suiteapi.process") \_interval

            -   ##### \_intervalType

                int \_intervalType

            -   ##### \_monthly

                [RecurringInterval.Monthly](com/appiancorp/suiteapi/process/RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process") \_monthly

            -   ##### \_time

                [Time](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Time.html "class or interface in java.sql") \_time

            -   ##### \_timeExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_timeExpr

            -   ##### \_weekly

                [RecurringInterval.Weekly](com/appiancorp/suiteapi/process/RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process") \_weekly

            -   ##### \_yearly

                [RecurringInterval.Yearly](com/appiancorp/suiteapi/process/RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process") \_yearly

    -   ### Class [com.appiancorp.suiteapi.process.RecurringInterval.Daily](com/appiancorp/suiteapi/process/RecurringInterval.Daily.html "class in com.appiancorp.suiteapi.process")

        class Daily extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_dayInterval

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_dayInterval

            -   ##### \_dayIntervalExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_dayIntervalExpr

            -   ##### \_everyWeekday

                boolean \_everyWeekday

    -   ### Class [com.appiancorp.suiteapi.process.RecurringInterval.Monthly](com/appiancorp/suiteapi/process/RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process")

        class Monthly extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_dayOfMonth

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_dayOfMonth

            -   ##### \_dayOfMonthExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_dayOfMonthExpr

            -   ##### \_dayOfWeek

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_dayOfWeek

            -   ##### \_monthInterval

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_monthInterval

            -   ##### \_monthIntervalExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_monthIntervalExpr

            -   ##### \_weekdayBased

                boolean \_weekdayBased

            -   ##### \_weekType

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_weekType

    -   ### Class [com.appiancorp.suiteapi.process.RecurringInterval.Weekly](com/appiancorp/suiteapi/process/RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process")

        class Weekly extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_daysOfWeek

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] \_daysOfWeek

            -   ##### \_weekInterval

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_weekInterval

            -   ##### \_weekIntervalExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_weekIntervalExpr

    -   ### Class [com.appiancorp.suiteapi.process.RecurringInterval.Yearly](com/appiancorp/suiteapi/process/RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process")

        class Yearly extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_dayOfMonth

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_dayOfMonth

            -   ##### \_dayOfMonthExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_dayOfMonthExpr

            -   ##### \_dayOfWeek

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_dayOfWeek

            -   ##### \_month

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_month

            -   ##### \_weekdayBased

                boolean \_weekdayBased

            -   ##### \_weekType

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_weekType

    -   ### Class [com.appiancorp.suiteapi.process.RuntimeProcessNode](com/appiancorp/suiteapi/process/RuntimeProcessNode.html "class in com.appiancorp.suiteapi.process")

        class RuntimeProcessNode extends [AbstractProcessNode](com/appiancorp/suiteapi/process/AbstractProcessNode.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_escalationInstances

                [EscalationInstance](com/appiancorp/suiteapi/process/EscalationInstance.html "class in com.appiancorp.suiteapi.process")\[\] \_escalationInstances

            -   ##### \_escalations

                [EscalationInstance](com/appiancorp/suiteapi/process/EscalationInstance.html "class in com.appiancorp.suiteapi.process")\[\] \_escalations

            -   ##### \_instanceIds

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] \_instanceIds

            -   ##### \_schedule

                [ScheduleInstance](com/appiancorp/suiteapi/process/ScheduleInstance.html "class in com.appiancorp.suiteapi.process") \_schedule

            -   ##### \_scheduleInstance

                [ScheduleInstance](com/appiancorp/suiteapi/process/ScheduleInstance.html "class in com.appiancorp.suiteapi.process") \_scheduleInstance

            -   ##### \_spawnedInstances

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_spawnedInstances

                If the node has not yet been reached, this number will be 0. If the node has been set to spawn, and the node has been activated (ie is currently active, has been completed, or was cancelled or paused after being activated), this will be the number of instances which have been spawned, inclusive of spawned instances as a result of a recurrence.

            -   ##### \_status

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_status

                Value will be one of the STATUS fields of TaskSummary If the node has several spawned instances, the status will be incomplete until all instances are complete

    -   ### Class [com.appiancorp.suiteapi.process.Schedule](com/appiancorp/suiteapi/process/Schedule.html "class in com.appiancorp.suiteapi.process")

        class Schedule extends [AbstractSchedule](com/appiancorp/suiteapi/process/AbstractSchedule.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.ScheduleInstance](com/appiancorp/suiteapi/process/ScheduleInstance.html "class in com.appiancorp.suiteapi.process")

        class ScheduleInstance extends [AbstractSchedule](com/appiancorp/suiteapi/process/AbstractSchedule.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_hasTriggered

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_hasTriggered

            -   ##### \_timeStampScheduled

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_timeStampScheduled

    -   ### Class [com.appiancorp.suiteapi.process.ScheduleSummary](com/appiancorp/suiteapi/process/ScheduleSummary.html "class in com.appiancorp.suiteapi.process")

        class ScheduleSummary extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_assignedTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_assignedTime

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_owners

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_owners

            -   ##### \_priority

                [Priority](com/appiancorp/suiteapi/process/Priority.html "class in com.appiancorp.suiteapi.process") \_priority

            -   ##### \_scheduledTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_scheduledTime

            -   ##### \_status

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_status

            -   ##### \_templateId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_templateId

            -   ##### \_type

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_type

    -   ### Class [com.appiancorp.suiteapi.process.Spawning](com/appiancorp/suiteapi/process/Spawning.html "class in com.appiancorp.suiteapi.process")

        class Spawning extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_complexNodeMergeExpression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_complexNodeMergeExpression

                Expression for complex node merge, which should evaluate to true for the next node in the proces to execute.

            -   ##### \_instances

                [Instances](com/appiancorp/suiteapi/process/Instances.html "class in com.appiancorp.suiteapi.process") \_instances

                number of instances that are to be spawned

            -   ##### \_parallelExecution

                boolean \_parallelExecution

                Determines how the spawned nodes are executed. EXEC\_TYPE\_SEQUENTIAL or EXEC\_TYPE\_PARALLEL

                See Also:

                -   [`Spawning.EXEC_TYPE_SEQUENTIAL`](com/appiancorp/suiteapi/process/Spawning.html#EXEC_TYPE_SEQUENTIAL)
                -   [`Spawning.EXEC_TYPE_PARALLEL`](com/appiancorp/suiteapi/process/Spawning.html#EXEC_TYPE_PARALLEL)

            -   ##### \_parallelMergeType

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_parallelMergeType

                Specifies when the next node in the process should execute, when the spawned nodes are executing in parallel.

            -   ##### allowMNIBatching

                boolean allowMNIBatching

                Determines if more than `ServerProcessCommonConfiguration#getMaxNodeInstances` nodes are allowed to be spawned in batches for a sub-process

    -   ### Class [com.appiancorp.suiteapi.process.TaskDetails](com/appiancorp/suiteapi/process/TaskDetails.html "class in com.appiancorp.suiteapi.process")

        class TaskDetails extends [TaskSummary](com/appiancorp/suiteapi/process/TaskSummary.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_attachments

                [Attachment](com/appiancorp/suiteapi/process/Attachment.html "class in com.appiancorp.suiteapi.process")\[\] \_attachments

            -   ##### \_escalationInstances

                [EscalationInstance](com/appiancorp/suiteapi/process/EscalationInstance.html "class in com.appiancorp.suiteapi.process")\[\] \_escalationInstances

            -   ##### \_formType

                int \_formType

                The type of form used with this task. Should be one of the com.appiancorp.suiteapi.process.forms.FormConfig#FORM\_TYPE\_XXX constants.

            -   ##### \_notes

                [Note](com/appiancorp/suiteapi/process/Note.html "class in com.appiancorp.suiteapi.process")\[\] \_notes

            -   ##### \_scheduleInstance

                [ScheduleInstance](com/appiancorp/suiteapi/process/ScheduleInstance.html "class in com.appiancorp.suiteapi.process") \_scheduleInstance

    -   ### Class [com.appiancorp.suiteapi.process.TaskProperties](com/appiancorp/suiteapi/process/TaskProperties.html "class in com.appiancorp.suiteapi.process")

        class TaskProperties extends [Identity](com/appiancorp/suiteapi/common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

            -   ##### \_displayName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_displayName

            -   ##### \_priority

                [Priority](com/appiancorp/suiteapi/process/Priority.html "class in com.appiancorp.suiteapi.process") \_priority

            -   ##### \_uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_uuid

    -   ### Class [com.appiancorp.suiteapi.process.TaskSummary](com/appiancorp/suiteapi/process/TaskSummary.html "class in com.appiancorp.suiteapi.process")

        class TaskSummary extends [TaskProperties](com/appiancorp/suiteapi/process/TaskProperties.html "class in com.appiancorp.suiteapi.process") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        \-5310542927003854555L

        -   #### Serialized Fields

            -   ##### \_acceptedTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_acceptedTime

            -   ##### \_acceptMode

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_acceptMode

            -   ##### \_assignedTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_assignedTime

            -   ##### \_assignees

                [Assignment.Assignee](com/appiancorp/suiteapi/process/Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\] \_assignees

            -   ##### \_childProcessId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_childProcessId

            -   ##### \_completedTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_completedTime

            -   ##### \_elapsed

                [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") \_elapsed

            -   ##### \_elapsedMilliseconds

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_elapsedMilliseconds

            -   ##### \_exception

                [ProcessException](com/appiancorp/suiteapi/process/ProcessException.html "class in com.appiancorp.suiteapi.process") \_exception

            -   ##### \_favorite

                boolean \_favorite

            -   ##### \_inChain

                boolean \_inChain

            -   ##### \_isAttended

                boolean \_isAttended

            -   ##### \_mutablePriority

                boolean \_mutablePriority

            -   ##### \_oneUserAssigned

                boolean \_oneUserAssigned

            -   ##### \_owners

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_owners

            -   ##### \_permissions

                [NodePermissions](com/appiancorp/suiteapi/process/security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security") \_permissions

            -   ##### \_processDeadline

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_processDeadline

            -   ##### \_processId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_processId

            -   ##### \_processInitiator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_processInitiator

            -   ##### \_processName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_processName

            -   ##### \_processStatus

                int \_processStatus

            -   ##### \_status

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_status

            -   ##### \_statusBy

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_statusBy

            -   ##### \_statusTime

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_statusTime

            -   ##### \_taskDeadline

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_taskDeadline

            -   ##### \_templateId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_templateId

            -   ##### allowInlineApproval

                boolean allowInlineApproval

            -   ##### formCapability

                int formCapability

            -   ##### isMobileEnabled

                boolean isMobileEnabled

    -   ### Class [com.appiancorp.suiteapi.process.TypedVariable](com/appiancorp/suiteapi/process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

        class TypedVariable extends [NamedTypedValue](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_detailedTypes

                int\[\] \_detailedTypes

                Deprecated.

            -   ##### multipleOverride

                int multipleOverride

                Deprecated.

                Value to return from [`TypedVariable.getMultiple()`](com/appiancorp/suiteapi/process/TypedVariable.html#getMultiple\(\)) if not equal to `TypedVariable.IGNORE`. Used to preserve old behavior where multiple and instance type were not always in sync.

-   ## Package [com.appiancorp.suiteapi.process.analytics2](com/appiancorp/suiteapi/process/analytics2/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.AheadOfScheduleFilter](com/appiancorp/suiteapi/process/analytics2/AheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class AheadOfScheduleFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class BaseFilter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_apply

                boolean \_apply

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.BehindScheduleFilter](com/appiancorp/suiteapi/process/analytics2/BehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class BehindScheduleFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")

        class Column extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_columnAggregationFunction

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_columnAggregationFunction

            -   ##### \_expression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_expression

            -   ##### \_formatToken

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_formatToken

            -   ##### \_group

                boolean \_group

            -   ##### \_icon

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_icon

            -   ##### \_lastAggregateToken

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_lastAggregateToken

            -   ##### \_lastFormatToken

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_lastFormatToken

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_show

                boolean \_show

            -   ##### \_stringId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_stringId

            -   ##### drillPath

                [DrillPath](com/appiancorp/suiteapi/process/analytics2/DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2") drillPath

            -   ##### localId

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") localId

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.CompletedAheadOfScheduleFilter](com/appiancorp/suiteapi/process/analytics2/CompletedAheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class CompletedAheadOfScheduleFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.CompletedBehindScheduleFilter](com/appiancorp/suiteapi/process/analytics2/CompletedBehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class CompletedBehindScheduleFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.CompletedFilter](com/appiancorp/suiteapi/process/analytics2/CompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class CompletedFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.DrillPath](com/appiancorp/suiteapi/process/analytics2/DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2")

        class DrillPath extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### dashboardId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dashboardId

            -   ##### dashboardUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dashboardUuid

                The UUID of the dashboard to which this `DrillPath` links. This field is not populated except when using the IX API.

            -   ##### enabled

                boolean enabled

            -   ##### expression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression

            -   ##### linkType

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") linkType

            -   ##### otherReportColumnLocalId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") otherReportColumnLocalId

            -   ##### otherReportId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") otherReportId

            -   ##### otherReportUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") otherReportUuid

                The UUID of the report to which this `DrillPath` links. This field is not populated except when using the IX API.

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.DueTodayFilter](com/appiancorp/suiteapi/process/analytics2/DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class DueTodayFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.LastNCompletedFilter](com/appiancorp/suiteapi/process/analytics2/LastNCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class LastNCompletedFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_completedCount

                int \_completedCount

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.LastNDaysFilter](com/appiancorp/suiteapi/process/analytics2/LastNDaysFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class LastNDaysFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_dayCount

                double \_dayCount

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.NotYetCompletedFilter](com/appiancorp/suiteapi/process/analytics2/NotYetCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class NotYetCompletedFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.OutsideNStandardDeviationsFilter](com/appiancorp/suiteapi/process/analytics2/OutsideNStandardDeviationsFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class OutsideNStandardDeviationsFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_standardDeviationCount

                double \_standardDeviationCount

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.PerformanceAttributes](com/appiancorp/suiteapi/process/analytics2/PerformanceAttributes.html "class in com.appiancorp.suiteapi.process.analytics2")

        class PerformanceAttributes extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

            -   ##### \_mainOrder

                int \_mainOrder

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_order

                int \_order

            -   ##### \_resource

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_resource

            -   ##### \_rowsAffected

                int \_rowsAffected

            -   ##### \_time

                double \_time

            -   ##### \_type

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_type

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.PerformanceMetrics](com/appiancorp/suiteapi/process/analytics2/PerformanceMetrics.html "class in com.appiancorp.suiteapi.process.analytics2")

        class PerformanceMetrics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_executionTimestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") \_executionTimestamp

            -   ##### \_maximumReportTime

                double \_maximumReportTime

            -   ##### \_maximumReportTimeMain

                double \_maximumReportTimeMain

            -   ##### \_performanceAttributes

                [PerformanceAttributes](com/appiancorp/suiteapi/process/analytics2/PerformanceAttributes.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] \_performanceAttributes

            -   ##### \_reportName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_reportName

            -   ##### \_totalTime

                double \_totalTime

            -   ##### \_username

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_username

            -   ##### order

                [AtomicInteger](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/atomic/AtomicInteger.html "class or interface in java.util.concurrent.atomic") order

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.ProcessReport](com/appiancorp/suiteapi/process/analytics2/ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")

        class ProcessReport extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_chartHeight

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_chartHeight

            -   ##### \_chartWidth

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_chartWidth

            -   ##### \_data

                [ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2") \_data

            -   ##### \_display

                [ReportDisplay](com/appiancorp/suiteapi/process/analytics2/ReportDisplay.html "class in com.appiancorp.suiteapi.process.analytics2") \_display

            -   ##### \_graphSize

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_graphSize

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_portletId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_portletId

            -   ##### \_showDisplayOptions

                boolean \_showDisplayOptions

            -   ##### cache

                [AppianTypeCache](com/appiancorp/suiteapi/process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache

            -   ##### modified

                boolean modified

            -   ##### showEditControls

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") showEditControls

            -   ##### showFilters

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") showFilters

            -   ##### showTitle

                boolean showTitle

            -   ##### showToolbar

                boolean showToolbar

            -   ##### showUserControls

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") showUserControls

            -   ##### view

                int view

            -   ##### writeAccess

                boolean writeAccess

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.QuickFilter](com/appiancorp/suiteapi/process/analytics2/QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class QuickFilter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_defaultItem

                int \_defaultItem

            -   ##### \_items

                [QuickFilterItem](com/appiancorp/suiteapi/process/analytics2/QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] \_items

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### selectedItem

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") selectedItem

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.QuickFilterItem](com/appiancorp/suiteapi/process/analytics2/QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")

        class QuickFilterItem extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_filters

                [Filter](com/appiancorp/suiteapi/process/analytics2/Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")\[\] \_filters

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.ReportData](com/appiancorp/suiteapi/process/analytics2/ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

        class ReportData extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_arfDocumentId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_arfDocumentId

            -   ##### \_baseFilters

                [Filter](com/appiancorp/suiteapi/process/analytics2/Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")\[\] \_baseFilters

            -   ##### \_batchSize

                int \_batchSize

            -   ##### \_columns

                [LinkedHashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/LinkedHashMap.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Column](com/appiancorp/suiteapi/process/analytics2/Column.html "class in com.appiancorp.suiteapi.process.analytics2")\> \_columns

            -   ##### \_context

                [LocalObject](com/appiancorp/suiteapi/common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] \_context

            -   ##### \_quickFilters

                [QuickFilter](com/appiancorp/suiteapi/process/analytics2/QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] \_quickFilters

            -   ##### \_reportName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_reportName

            -   ##### \_sortColumnLocalId

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_sortColumnLocalId

            -   ##### \_sortOrder

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_sortOrder

            -   ##### \_startIndex

                int \_startIndex

            -   ##### \_type

                int \_type

            -   ##### contextType

                int contextType

            -   ##### grouping

                boolean grouping

            -   ##### recursive

                boolean recursive

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.ReportDisplay](com/appiancorp/suiteapi/process/analytics2/ReportDisplay.html "class in com.appiancorp.suiteapi.process.analytics2")

        class ReportDisplay extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_customToolbar

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_customToolbar

            -   ##### \_description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_description

            -   ##### \_displayThresholds

                boolean \_displayThresholds

            -   ##### \_displayType

                int \_displayType

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_quickFilterDisplay

                int \_quickFilterDisplay

            -   ##### \_showQuickFiltersInToolbar

                boolean \_showQuickFiltersInToolbar

            -   ##### \_supportedTypes

                int\[\] \_supportedTypes

            -   ##### \_thresholds

                [Threshold](com/appiancorp/suiteapi/process/analytics2/Threshold.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] \_thresholds

            -   ##### customBarGraphXMLId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") customBarGraphXMLId

            -   ##### customBarGraphXMLUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customBarGraphXMLUuid

                The UUID of the document that specifes a custom xml file for the bar graph. This field is not populated except when using the IX API.

            -   ##### customChartHeight

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") customChartHeight

            -   ##### customChartWidth

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") customChartWidth

            -   ##### customLineGraphXMLId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") customLineGraphXMLId

            -   ##### customLineGraphXMLUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customLineGraphXMLUuid

                The UUID of the document that specifes a custom xml file for the line graph. This field is not populated except when using the IX API.

            -   ##### customPieGraphXMLId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") customPieGraphXMLId

            -   ##### customPieGraphXMLUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customPieGraphXMLUuid

                The UUID of the document that specifes a custom xml file for the pie graph. This field is not populated except when using the IX API.

            -   ##### showLegend

                boolean showLegend

            -   ##### thresholdColumnLocalId

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") thresholdColumnLocalId

            -   ##### thresholdColumnName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") thresholdColumnName

            -   ##### useCustomToolbar

                boolean useCustomToolbar

            -   ##### useDefaultBarGraphXML

                boolean useDefaultBarGraphXML

            -   ##### useDefaultLineGraphXML

                boolean useDefaultLineGraphXML

            -   ##### useDefaultPieGraphXML

                boolean useDefaultPieGraphXML

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.ReportResultPage](com/appiancorp/suiteapi/process/analytics2/ReportResultPage.html "class in com.appiancorp.suiteapi.process.analytics2")

        class ReportResultPage extends [ResultPage](com/appiancorp/suiteapi/common/ResultPage.html "class in com.appiancorp.suiteapi.common") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        \-6567060707650218457L

        -   #### Serialized Fields

            -   ##### \_columnTypes

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") \_columnTypes

            -   ##### \_maximumReportTimeExceeded

                boolean \_maximumReportTimeExceeded

            -   ##### \_performanceMetrics

                [PerformanceMetrics](com/appiancorp/suiteapi/process/analytics2/PerformanceMetrics.html "class in com.appiancorp.suiteapi.process.analytics2") \_performanceMetrics

            -   ##### taskIds

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds

            -   ##### taskIdsValid

                boolean taskIdsValid

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.RunningFilter](com/appiancorp/suiteapi/process/analytics2/RunningFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class RunningFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.SimpleColumnFilter](com/appiancorp/suiteapi/process/analytics2/SimpleColumnFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

        class SimpleColumnFilter extends [BaseFilter](com/appiancorp/suiteapi/process/analytics2/BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_columnLocalId

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_columnLocalId

            -   ##### \_comparison

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_comparison

            -   ##### \_constant

                [GenericTypedVariable](com/appiancorp/suiteapi/process/GenericTypedVariable.html "class in com.appiancorp.suiteapi.process") \_constant

            -   ##### reportPortletFilter

                boolean reportPortletFilter

    -   ### Class [com.appiancorp.suiteapi.process.analytics2.Threshold](com/appiancorp/suiteapi/process/analytics2/Threshold.html "class in com.appiancorp.suiteapi.process.analytics2")

        class Threshold extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_defaultIconName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_defaultIconName

            -   ##### \_icon

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_icon

            -   ##### \_label

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_label

            -   ##### \_upperBound

                [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") \_upperBound

            -   ##### iconUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") iconUuid

                The document UUID of the icon. This field is not populated except when using the IX API.

-   ## Package [com.appiancorp.suiteapi.process.calendar](com/appiancorp/suiteapi/process/calendar/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.process.calendar.InvalidCalendarException](com/appiancorp/suiteapi/process/calendar/InvalidCalendarException.html "class in com.appiancorp.suiteapi.process.calendar")

        class InvalidCalendarException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.process.events](com/appiancorp/suiteapi/process/events/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.process.events.Event](com/appiancorp/suiteapi/process/events/Event.html "class in com.appiancorp.suiteapi.process.events")

        class Event extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_desc

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_desc

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

            -   ##### \_persistentId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_persistentId

            -   ##### \_type

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_type

    -   ### Class [com.appiancorp.suiteapi.process.events.EventProducer](com/appiancorp/suiteapi/process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")

        class EventProducer extends [Event](com/appiancorp/suiteapi/process/events/Event.html "class in com.appiancorp.suiteapi.process.events") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.events.EventTrigger](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

        class EventTrigger extends [Event](com/appiancorp/suiteapi/process/events/Event.html "class in com.appiancorp.suiteapi.process.events") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_outputs

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_outputs

            -   ##### \_rules

                [Rule](com/appiancorp/suiteapi/process/events/Rule.html "class in com.appiancorp.suiteapi.process.events")\[\] \_rules

    -   ### Class [com.appiancorp.suiteapi.process.events.MessageEventProducer](com/appiancorp/suiteapi/process/events/MessageEventProducer.html "class in com.appiancorp.suiteapi.process.events")

        class MessageEventProducer extends [EventProducer](com/appiancorp/suiteapi/process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_body

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_body

            -   ##### \_propertyMappings

                [Mapping](com/appiancorp/suiteapi/messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")\[\] \_propertyMappings

            -   ##### \_topic

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_topic

    -   ### Class [com.appiancorp.suiteapi.process.events.MessageEventTrigger](com/appiancorp/suiteapi/process/events/MessageEventTrigger.html "class in com.appiancorp.suiteapi.process.events")

        class MessageEventTrigger extends [EventTrigger](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_activeForLifeOfProcess

                boolean \_activeForLifeOfProcess

            -   ##### \_messageType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_messageType

    -   ### Class [com.appiancorp.suiteapi.process.events.Rule](com/appiancorp/suiteapi/process/events/Rule.html "class in com.appiancorp.suiteapi.process.events")

        class Rule extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_expression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_expression

            -   ##### \_leftOperand

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_leftOperand

            -   ##### \_operator

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_operator

            -   ##### \_rightOperand

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_rightOperand

            -   ##### \_type

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_type

    -   ### Class [com.appiancorp.suiteapi.process.events.RuleEventTrigger](com/appiancorp/suiteapi/process/events/RuleEventTrigger.html "class in com.appiancorp.suiteapi.process.events")

        class RuleEventTrigger extends [EventTrigger](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.events.TerminateEventProducer](com/appiancorp/suiteapi/process/events/TerminateEventProducer.html "class in com.appiancorp.suiteapi.process.events")

        class TerminateEventProducer extends [EventProducer](com/appiancorp/suiteapi/process/events/EventProducer.html "class in com.appiancorp.suiteapi.process.events") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.events.TimerEventTrigger](com/appiancorp/suiteapi/process/events/TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events")

        class TimerEventTrigger extends [EventTrigger](com/appiancorp/suiteapi/process/events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_recurrence

                [Recurrence](com/appiancorp/suiteapi/process/Recurrence.html "class in com.appiancorp.suiteapi.process") \_recurrence

            -   ##### \_schedule

                [Schedule](com/appiancorp/suiteapi/process/Schedule.html "class in com.appiancorp.suiteapi.process") \_schedule

-   ## Package [com.appiancorp.suiteapi.process.exceptions](com/appiancorp/suiteapi/process/exceptions/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.ArchivedProcessException](com/appiancorp/suiteapi/process/exceptions/ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class ArchivedProcessException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.IncompatibleArchivedVersionException](com/appiancorp/suiteapi/process/exceptions/IncompatibleArchivedVersionException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class IncompatibleArchivedVersionException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidActivityClassParameterException](com/appiancorp/suiteapi/process/exceptions/InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidActivityClassParameterException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidActivityClassSchemaException](com/appiancorp/suiteapi/process/exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidActivityClassSchemaException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

            -   ##### errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidActivityException](com/appiancorp/suiteapi/process/exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidActivityException extends [InvalidTaskException](com/appiancorp/suiteapi/process/exceptions/InvalidTaskException.html "class in com.appiancorp.suiteapi.process.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidExceptionTypeException](com/appiancorp/suiteapi/process/exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidExceptionTypeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidExpressionGroupException](com/appiancorp/suiteapi/process/exceptions/InvalidExpressionGroupException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidExpressionGroupException extends [InvalidTaskException](com/appiancorp/suiteapi/process/exceptions/InvalidTaskException.html "class in com.appiancorp.suiteapi.process.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidNodeDataTypeReferenceException](com/appiancorp/suiteapi/process/exceptions/InvalidNodeDataTypeReferenceException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidNodeDataTypeReferenceException extends [InvalidTypeReferenceException](com/appiancorp/suiteapi/type/exceptions/InvalidTypeReferenceException.html "class in com.appiancorp.suiteapi.type.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") \_errorCode

            -   ##### \_nodeData

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_nodeData

            -   ##### \_nodeName

                [LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common") \_nodeName

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidNoteException](com/appiancorp/suiteapi/process/exceptions/InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidNoteException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidObjectTypeIdException](com/appiancorp/suiteapi/process/exceptions/InvalidObjectTypeIdException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidObjectTypeIdException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### id

                int id

            -   ##### type

                com.appian.komodo.api.ShardedProcessObjectType type

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidProcessException](com/appiancorp/suiteapi/process/exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidProcessException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidProcessVariableNameException](com/appiancorp/suiteapi/process/exceptions/InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidProcessVariableNameException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidPvTypeReferenceException](com/appiancorp/suiteapi/process/exceptions/InvalidPvTypeReferenceException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidPvTypeReferenceException extends [InvalidTypeReferenceException](com/appiancorp/suiteapi/type/exceptions/InvalidTypeReferenceException.html "class in com.appiancorp.suiteapi.type.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_pvsNames

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_pvsNames

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.InvalidTaskException](com/appiancorp/suiteapi/process/exceptions/InvalidTaskException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class InvalidTaskException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.ReportComplexityException](com/appiancorp/suiteapi/process/exceptions/ReportComplexityException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class ReportComplexityException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.ReportSizeException](com/appiancorp/suiteapi/process/exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class ReportSizeException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### env

                [Environment](com/appiancorp/exceptions/Environment.html "enum class in com.appiancorp.exceptions") env

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.ResultPageSizeException](com/appiancorp/suiteapi/process/exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class ResultPageSizeException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### env

                [Environment](com/appiancorp/exceptions/Environment.html "enum class in com.appiancorp.exceptions") env

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.RetryableSmartServiceException](com/appiancorp/suiteapi/process/exceptions/RetryableSmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class RetryableSmartServiceException extends [SmartServiceException](com/appiancorp/suiteapi/process/exceptions/SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.SmartServiceException](com/appiancorp/suiteapi/process/exceptions/SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class SmartServiceException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### addCauseToAlertMessageArgs

                boolean addCauseToAlertMessageArgs

            -   ##### addCauseToUserMessageArgs

                boolean addCauseToUserMessageArgs

            -   ##### alertMessageArgs

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] alertMessageArgs

            -   ##### alertMessageKey

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alertMessageKey

            -   ##### bundleName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bundleName

            -   ##### classloader

                [ClassLoader](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/ClassLoader.html "class or interface in java.lang") classloader

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

            -   ##### userMessageArgs

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] userMessageArgs

            -   ##### userMessageKey

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userMessageKey

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.TaskNavigationException](com/appiancorp/suiteapi/process/exceptions/TaskNavigationException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class TaskNavigationException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.UnattendedActivityValidationException](com/appiancorp/suiteapi/process/exceptions/UnattendedActivityValidationException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class UnattendedActivityValidationException extends [ActivityExecutionException](com/appiancorp/suiteapi/process/framework/ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.UnsupportedReportSpecificationException](com/appiancorp/suiteapi/process/exceptions/UnsupportedReportSpecificationException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class UnsupportedReportSpecificationException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### env

                [UnsupportedReportSpecificationException.Environment](com/appiancorp/suiteapi/process/exceptions/UnsupportedReportSpecificationException.Environment.html "enum class in com.appiancorp.suiteapi.process.exceptions") env

            -   ##### errorCodeArguments

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] errorCodeArguments

            -   ##### errorType

                [UnsupportedReportSpecificationException.ErrorType](com/appiancorp/suiteapi/process/exceptions/UnsupportedReportSpecificationException.ErrorType.html "enum class in com.appiancorp.suiteapi.process.exceptions") errorType

    -   ### Exception [com.appiancorp.suiteapi.process.exceptions.WSImporterException](com/appiancorp/suiteapi/process/exceptions/WSImporterException.html "class in com.appiancorp.suiteapi.process.exceptions")

        class WSImporterException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") \_errorCode

            -   ##### \_errorCodeArguments

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] \_errorCodeArguments

-   ## Package [com.appiancorp.suiteapi.process.forms](com/appiancorp/suiteapi/process/forms/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.process.forms.DynamicForm](com/appiancorp/suiteapi/process/forms/DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")

        class DynamicForm extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_displayInstructions

                boolean \_displayInstructions

            -   ##### \_elements

                [FormElement](com/appiancorp/suiteapi/process/forms/FormElement.html "class in com.appiancorp.suiteapi.process.forms")\[\] \_elements

            -   ##### \_instructions

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_instructions

    -   ### Class [com.appiancorp.suiteapi.process.forms.FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

        class FormConfig extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_dynamicForm

                [DynamicForm](com/appiancorp/suiteapi/process/forms/DynamicForm.html "class in com.appiancorp.suiteapi.process.forms") \_dynamicForm

            -   ##### \_enabled

                boolean \_enabled

            -   ##### \_internalForm

                [InternalForm](com/appiancorp/suiteapi/process/forms/InternalForm.html "class in com.appiancorp.suiteapi.process.forms") \_internalForm

            -   ##### \_jspForm

                [JSPForm](com/appiancorp/suiteapi/process/forms/JSPForm.html "class in com.appiancorp.suiteapi.process.forms") \_jspForm

            -   ##### \_type

                int \_type

            -   ##### \_useTextBundle

                boolean \_useTextBundle

            -   ##### hiddenSections

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") hiddenSections

            -   ##### uiExpressionForm

                [UiExpressionForm](com/appiancorp/suiteapi/process/forms/UiExpressionForm.html "class in com.appiancorp.suiteapi.process.forms") uiExpressionForm

    -   ### Class [com.appiancorp.suiteapi.process.forms.FormConfigMap](com/appiancorp/suiteapi/process/forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms")

        class FormConfigMap extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### map

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util"),[FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")\> map

    -   ### Class [com.appiancorp.suiteapi.process.forms.FormElement](com/appiancorp/suiteapi/process/forms/FormElement.html "class in com.appiancorp.suiteapi.process.forms")

        class FormElement extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_expressions

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") \_expressions

            -   ##### \_extra

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_extra

            -   ##### \_hidden

                boolean \_hidden

            -   ##### \_instructions

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_instructions

            -   ##### \_label

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_label

            -   ##### \_mappedTo

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_mappedTo

                name of ACP or PP mapped to this element - can be null.

            -   ##### \_mappedToArrayIndex

                int \_mappedToArrayIndex

            -   ##### \_mappedToBeanArray

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_mappedToBeanArray

            -   ##### \_multiple

                boolean \_multiple

            -   ##### \_mutable

                boolean \_mutable

            -   ##### \_name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_name

                used for form elements that do not map to ACPs

            -   ##### \_options

                [Option](com/appiancorp/suiteapi/process/forms/Option.html "class in com.appiancorp.suiteapi.process.forms")\[\] \_options

                hardcoded options

            -   ##### \_required

                boolean \_required

            -   ##### \_type

                int \_type

            -   ##### \_value

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_value

                used for form elements that do not map to ACPs

    -   ### Class [com.appiancorp.suiteapi.process.forms.FormElementBinding](com/appiancorp/suiteapi/process/forms/FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")

        class FormElementBinding extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_formInput

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_formInput

            -   ##### \_mappedTo

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_mappedTo

                name of ACP or Process Parameter mapped to this element - can be null.

            -   ##### \_mappedToArrayIndex

                int \_mappedToArrayIndex

            -   ##### \_mappedToBeanArray

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_mappedToBeanArray

    -   ### Class [com.appiancorp.suiteapi.process.forms.InternalForm](com/appiancorp/suiteapi/process/forms/InternalForm.html "class in com.appiancorp.suiteapi.process.forms")

        class InternalForm extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_docId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_docId

            -   ##### \_formElementBindings

                [FormElementBinding](com/appiancorp/suiteapi/process/forms/FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")\[\] \_formElementBindings

            -   ##### \_internalType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_internalType

            -   ##### docUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") docUuid

                Returns the UUID of the form's document. This field is not populated except when using the IX API.

    -   ### Class [com.appiancorp.suiteapi.process.forms.JSPForm](com/appiancorp/suiteapi/process/forms/JSPForm.html "class in com.appiancorp.suiteapi.process.forms")

        class JSPForm extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_path

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_path

    -   ### Class [com.appiancorp.suiteapi.process.forms.Option](com/appiancorp/suiteapi/process/forms/Option.html "class in com.appiancorp.suiteapi.process.forms")

        class Option extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_default

                boolean \_default

                should this be selected by default?

            -   ##### \_id

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_id

            -   ##### \_value

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_value

    -   ### Class [com.appiancorp.suiteapi.process.forms.UiExpressionForm](com/appiancorp/suiteapi/process/forms/UiExpressionForm.html "class in com.appiancorp.suiteapi.process.forms")

        class UiExpressionForm extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### expression

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression

-   ## Package [com.appiancorp.suiteapi.process.framework](com/appiancorp/suiteapi/process/framework/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.process.framework.ActivityExecutionException](com/appiancorp/suiteapi/process/framework/ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

        class ActivityExecutionException extends [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### attendedMsg

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg

            -   ##### notified

                boolean notified

            -   ##### notifyMsg

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg

    -   ### Class [com.appiancorp.suiteapi.process.framework.ActivityExecutionMetadata](com/appiancorp/suiteapi/process/framework/ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework")

        class ActivityExecutionMetadata extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_activityProperties

                [ActivityProperties](com/appiancorp/suiteapi/process/ActivityProperties.html "class in com.appiancorp.suiteapi.process") \_activityProperties

            -   ##### \_additionalContext

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> \_additionalContext

            -   ##### \_asynchronous

                boolean \_asynchronous

            -   ##### \_backButtonEnabled

                boolean \_backButtonEnabled

            -   ##### \_chained

                boolean \_chained

            -   ##### \_confirmationUrl

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_confirmationUrl

            -   ##### \_executionEnvironment

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") \_executionEnvironment

            -   ##### \_form

                [FormConfig](com/appiancorp/suiteapi/process/forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") \_form

            -   ##### \_formDeleted

                boolean \_formDeleted

            -   ##### \_helper

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_helper

            -   ##### \_helperInstance

                [ActivityParameterHelper](com/appiancorp/suiteapi/process/framework/ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework") \_helperInstance

            -   ##### \_id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_id

            -   ##### \_javaActivityClassname

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_javaActivityClassname

            -   ##### \_lingering

                boolean \_lingering

            -   ##### \_onCompleteKeepFormData

                boolean \_onCompleteKeepFormData

            -   ##### \_parameters

                [ActivityClassParameter](com/appiancorp/suiteapi/process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] \_parameters

            -   ##### \_precedingChainedActivity

                int \_precedingChainedActivity

            -   ##### \_returnVariables

                [ActivityReturnVariable](com/appiancorp/suiteapi/process/ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] \_returnVariables

            -   ##### \_user

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_user

            -   ##### \_workId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_workId

            -   ##### \_workToken

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_workToken

            -   ##### \_workType

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_workType

            -   ##### asyncState

                com.appiancorp.process.engine.async.AsyncExecutionConstants.AsyncExecutionState asyncState

            -   ##### chainingTimeout

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") chainingTimeout

            -   ##### grantorUsername

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername

            -   ##### outputExpressions

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] outputExpressions

            -   ##### runAsUsername

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") runAsUsername

    -   ### Class [com.appiancorp.suiteapi.process.framework.EmptyActivityParameterHelper](com/appiancorp/suiteapi/process/framework/EmptyActivityParameterHelper.html "class in com.appiancorp.suiteapi.process.framework")

        class EmptyActivityParameterHelper extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.process.framework.HandledActivityExecutionException](com/appiancorp/suiteapi/process/framework/HandledActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

        class HandledActivityExecutionException extends [ActivityExecutionException](com/appiancorp/suiteapi/process/framework/ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_exceptionTypeLocalId

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_exceptionTypeLocalId

            -   ##### \_message

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_message

            -   ##### \_taskId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_taskId

    -   ### Exception [com.appiancorp.suiteapi.process.framework.RetryableActivityExecutionException](com/appiancorp/suiteapi/process/framework/RetryableActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

        class RetryableActivityExecutionException extends [ActivityExecutionException](com/appiancorp/suiteapi/process/framework/ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.process.gui](com/appiancorp/suiteapi/process/gui/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.process.gui.Label](com/appiancorp/suiteapi/process/gui/Label.html "class in com.appiancorp.suiteapi.process.gui")

        class Label extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_bold

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_bold

            -   ##### \_fontColor

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_fontColor

            -   ##### \_fontFamily

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_fontFamily

            -   ##### \_fontSize

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_fontSize

            -   ##### \_italics

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_italics

            -   ##### \_underline

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") \_underline

    -   ### Class [com.appiancorp.suiteapi.process.gui.Lane](com/appiancorp/suiteapi/process/gui/Lane.html "class in com.appiancorp.suiteapi.process.gui")

        class Lane extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### assign

                [Assignment](com/appiancorp/suiteapi/process/Assignment.html "class in com.appiancorp.suiteapi.process") assign

            -   ##### color

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") color

            -   ##### dimension

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dimension

            -   ##### isLaneAssignment

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isLaneAssignment

            -   ##### isVertical

                [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isVertical

            -   ##### label

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label

            -   ##### labelStyle

                [Label](com/appiancorp/suiteapi/process/gui/Label.html "class in com.appiancorp.suiteapi.process.gui") labelStyle

            -   ##### runAs

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") runAs

            -   ##### unattended

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") unattended

-   ## Package [com.appiancorp.suiteapi.process.history](com/appiancorp/suiteapi/process/history/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.process.history.AuditHistoryException](com/appiancorp/suiteapi/process/history/AuditHistoryException.html "class in com.appiancorp.suiteapi.process.history")

        class AuditHistoryException extends [RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.process.history.AuditHistoryRow](com/appiancorp/suiteapi/process/history/AuditHistoryRow.html "class in com.appiancorp.suiteapi.process.history")

        class AuditHistoryRow extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        2L

        -   #### Serialized Fields

            -   ##### completeOrPartialValue

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") completeOrPartialValue

            -   ##### dom

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dom

            -   ##### key

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key

            -   ##### name

                [LocaleString](com/appiancorp/suiteapi/common/LocaleString.html "class in com.appiancorp.suiteapi.common") name

            -   ##### order

                [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") order

            -   ##### processId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId

            -   ##### processModelId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId

            -   ##### processModelUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid

            -   ##### taskId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") taskId

            -   ##### timestamp

                [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp

            -   ##### username

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username

            -   ##### userUuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userUuid

-   ## Package [com.appiancorp.suiteapi.process.security](com/appiancorp/suiteapi/process/security/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.process.security.NodePermissions](com/appiancorp/suiteapi/process/security/NodePermissions.html "class in com.appiancorp.suiteapi.process.security")

        class NodePermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_addAttachment

                boolean \_addAttachment

            -   ##### \_assignToAnyone

                boolean \_assignToAnyone

            -   ##### \_assignWithinPool

                boolean \_assignWithinPool

            -   ##### \_changeRole

                boolean \_changeRole

            -   ##### \_complete

                boolean \_complete

            -   ##### \_modifyInFlight

                boolean \_modifyInFlight

            -   ##### \_override

                boolean \_override

            -   ##### \_reject

                boolean \_reject

            -   ##### \_removeAttachment

                boolean \_removeAttachment

            -   ##### \_view

                boolean \_view

    -   ### Class [com.appiancorp.suiteapi.process.security.ProcessApplicationPermissions](com/appiancorp/suiteapi/process/security/ProcessApplicationPermissions.html "class in com.appiancorp.suiteapi.process.security")

        class ProcessApplicationPermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_accessProcessDesigner

                boolean \_accessProcessDesigner

            -   ##### \_changeRole

                boolean \_changeRole

            -   ##### \_createProcessModel

                boolean \_createProcessModel

            -   ##### \_editSecurityMap

                boolean \_editSecurityMap

            -   ##### \_registerActivityClass

                boolean \_registerActivityClass

            -   ##### \_registerExceptionType

                boolean \_registerExceptionType

            -   ##### \_registerPalette

                boolean \_registerPalette

            -   ##### \_registerPriority

                boolean \_registerPriority

            -   ##### \_setPaths

                boolean \_setPaths

            -   ##### \_unarchiveProcess

                boolean \_unarchiveProcess

            -   ##### \_updateUsernames

                boolean \_updateUsernames

            -   ##### \_viewAnalytics

                boolean \_viewAnalytics

            -   ##### \_viewProcesses

                boolean \_viewProcesses

            -   ##### \_viewProcessModels

                boolean \_viewProcessModels

    -   ### Class [com.appiancorp.suiteapi.process.security.ProcessModelFolderPermissions](com/appiancorp/suiteapi/process/security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security")

        class ProcessModelFolderPermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_archive

                boolean \_archive

            -   ##### \_changeRole

                boolean \_changeRole

            -   ##### \_createSubFolder

                boolean \_createSubFolder

            -   ##### \_delete

                boolean \_delete

            -   ##### \_update

                boolean \_update

            -   ##### \_view

                boolean \_view

    -   ### Class [com.appiancorp.suiteapi.process.security.ProcessModelPermissions](com/appiancorp/suiteapi/process/security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security")

        class ProcessModelPermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### \_addAttachment

                boolean \_addAttachment

            -   ##### \_archive

                boolean \_archive

            -   ##### \_changeRole

                boolean \_changeRole

            -   ##### \_delete

                boolean \_delete

            -   ##### \_editAndSave

                boolean \_editAndSave

            -   ##### \_initiateProcess

                boolean \_initiateProcess

            -   ##### \_overrideLock

                boolean \_overrideLock

            -   ##### \_publish

                boolean \_publish

            -   ##### \_removeAttachment

                boolean \_removeAttachment

            -   ##### \_simulate

                boolean \_simulate

            -   ##### \_view

                boolean \_view

            -   ##### \_viewReport

                boolean \_viewReport

    -   ### Class [com.appiancorp.suiteapi.process.security.ProcessPermissions](com/appiancorp/suiteapi/process/security/ProcessPermissions.html "class in com.appiancorp.suiteapi.process.security")

        class ProcessPermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        682419321721014910L

        -   #### Serialized Fields

            -   ##### \_addAttachment

                boolean \_addAttachment

            -   ##### \_archive

                boolean \_archive

            -   ##### \_changeRole

                boolean \_changeRole

            -   ##### \_delete

                boolean \_delete

            -   ##### \_modifyInFlight

                boolean \_modifyInFlight

            -   ##### \_removeAttachment

                boolean \_removeAttachment

            -   ##### \_stopAndPause

                boolean \_stopAndPause

            -   ##### \_updateVariables

                boolean \_updateVariables

            -   ##### \_viewNodeReport

                boolean \_viewNodeReport

            -   ##### \_viewReport

                boolean \_viewReport

            -   ##### \_viewStatus

                boolean \_viewStatus

-   ## Package [com.appiancorp.suiteapi.process.test](com/appiancorp/suiteapi/process/test/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.process.test.Controller.ControllerException](com/appiancorp/suiteapi/process/test/Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test")

        class ControllerException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

-   ## Package [com.appiancorp.suiteapi.process.upgrade](com/appiancorp/suiteapi/process/upgrade/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.process.upgrade.UpgradeException](com/appiancorp/suiteapi/process/upgrade/UpgradeException.html "class in com.appiancorp.suiteapi.process.upgrade")

        class UpgradeException extends [AppianException](com/appiancorp/suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### completedUpgrades

                [ProcessUpgrade](com/appiancorp/suiteapi/process/upgrade/ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\[\] completedUpgrades

            -   ##### processIdsCausingFailure

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIdsCausingFailure

-   ## Package [com.appiancorp.suiteapi.process.webservices](com/appiancorp/suiteapi/process/webservices/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.process.webservices.BusinessEntity](com/appiancorp/suiteapi/process/webservices/BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices")

        class BusinessEntity extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### contactInformation

                [BusinessEntity.ContactBean](com/appiancorp/suiteapi/process/webservices/BusinessEntity.ContactBean.html "class in com.appiancorp.suiteapi.process.webservices") contactInformation

            -   ##### description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description

            -   ##### organizationName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") organizationName

            -   ##### uddiRegistry

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uddiRegistry

            -   ##### uuid

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid

    -   ### Class [com.appiancorp.suiteapi.process.webservices.BusinessEntity.ContactBean](com/appiancorp/suiteapi/process/webservices/BusinessEntity.ContactBean.html "class in com.appiancorp.suiteapi.process.webservices")

        class ContactBean extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### email

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") email

            -   ##### emailType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") emailType

            -   ##### name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name

            -   ##### telephone

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") telephone

            -   ##### telephoneType

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") telephoneType

    -   ### Class [com.appiancorp.suiteapi.process.webservices.ProcessStartingInfo](com/appiancorp/suiteapi/process/webservices/ProcessStartingInfo.html "class in com.appiancorp.suiteapi.process.webservices")

        class ProcessStartingInfo extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_parameters

                [ProcessVariable](com/appiancorp/suiteapi/process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] \_parameters

            -   ##### \_processModelId

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_processModelId

            -   ##### \_processModelServiceName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_processModelServiceName

-   ## Package [com.appiancorp.suiteapi.rules](com/appiancorp/suiteapi/rules/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.rules.Constant](com/appiancorp/suiteapi/rules/Constant.html "class in com.appiancorp.suiteapi.rules")

        class Constant extends [Rule](com/appiancorp/suiteapi/rules/Rule.html "class in com.appiancorp.suiteapi.rules") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.rules.FreeformRule](com/appiancorp/suiteapi/rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules")

        class FreeformRule extends [Rule](com/appiancorp/suiteapi/rules/Rule.html "class in com.appiancorp.suiteapi.rules") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### jaxbParams

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[NamedTypedValue](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\> jaxbParams

            -   ##### metadataExpr

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") metadataExpr

    -   ### Class [com.appiancorp.suiteapi.rules.Rule](com/appiancorp/suiteapi/rules/Rule.html "class in com.appiancorp.suiteapi.rules")

        class Rule extends [Content](com/appiancorp/suiteapi/content/Content.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Class [com.appiancorp.suiteapi.rules.RulesFolder](com/appiancorp/suiteapi/rules/RulesFolder.html "class in com.appiancorp.suiteapi.rules")

        class RulesFolder extends [Folder](com/appiancorp/suiteapi/content/Folder.html "class in com.appiancorp.suiteapi.content") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

-   ## Package [com.appiancorp.suiteapi.security.auth](com/appiancorp/suiteapi/security/auth/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.security.auth.AppianUserDetails](com/appiancorp/suiteapi/security/auth/AppianUserDetails.html "class in com.appiancorp.suiteapi.security.auth")

        class AppianUserDetails extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialization Methods

            -   ##### readObject

                private void readObject([ObjectInputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/ObjectInputStream.html "class or interface in java.io") in) throws [IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io"), [ClassNotFoundException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/ClassNotFoundException.html "class or interface in java.lang")

                When an Appian session is serialized/deserialized in a High Availability environment, we need to re-initialize our \_transient\_ fields to sane values, since Java Serialization will not run any of the initialization expressions attached to the field declarations above.

                Throws:

                `[IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")`

                `[ClassNotFoundException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/ClassNotFoundException.html "class or interface in java.lang")`

        -   #### Serialized Fields

            -   ##### allowOverrideForDisabledLocale

                boolean allowOverrideForDisabledLocale

            -   ##### appianLoginContext

                com.appiancorp.security.auth.AppianLoginContext appianLoginContext

            -   ##### authenticatedByAppianInternalProvider

                boolean authenticatedByAppianInternalProvider

            -   ##### encryptedSamlAssertion

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") encryptedSamlAssertion

            -   ##### groupMembershipInfoProvider

                com.appiancorp.security.auth.GroupMembershipInfoProvider groupMembershipInfoProvider

            -   ##### isAdsSuperUser

                boolean isAdsSuperUser

            -   ##### loggedInThroughSaml

                boolean loggedInThroughSaml

            -   ##### memberGroupRefs

                [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<com.appiancorp.type.refs.GroupRef> memberGroupRefs

            -   ##### memberGroupUuidsFromWhichRefsWereCalculated

                [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> memberGroupUuidsFromWhichRefsWereCalculated

            -   ##### overrideLocale

                [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") overrideLocale

            -   ##### passwordStatus

                [PasswordStatus](com/appiancorp/suiteapi/security/auth/PasswordStatus.html "enum class in com.appiancorp.suiteapi.security.auth") passwordStatus

            -   ##### scsKey

                char\[\] scsKey

            -   ##### up

                [UserProfile](com/appiancorp/suiteapi/personalization/UserProfile.html "class in com.appiancorp.suiteapi.personalization") up

            -   ##### username

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username

            -   ##### userRef

                com.appiancorp.type.refs.UserRef userRef

            -   ##### userType

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userType

    -   ### Exception [com.appiancorp.suiteapi.security.auth.TerminateAuthenticationChainException](com/appiancorp/suiteapi/security/auth/TerminateAuthenticationChainException.html "class in com.appiancorp.suiteapi.security.auth")

        class TerminateAuthenticationChainException extends org.springframework.security.authentication.AccountStatusException implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        \-5428711816927752694L

-   ## Package [com.appiancorp.suiteapi.servlet](com/appiancorp/suiteapi/servlet/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.servlet.AppianServlet](com/appiancorp/suiteapi/servlet/AppianServlet.html "class in com.appiancorp.suiteapi.servlet")

        class AppianServlet extends javax.servlet.http.HttpServlet implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

-   ## Package [com.appiancorp.suiteapi.type](com/appiancorp/suiteapi/type/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.type.Datatype](com/appiancorp/suiteapi/type/Datatype.html "class in com.appiancorp.suiteapi.type")

        class Datatype extends [DatatypeProperties](com/appiancorp/suiteapi/type/DatatypeProperties.html "class in com.appiancorp.suiteapi.type") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### instanceProperties

                [NamedTypedValue](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] instanceProperties

            -   ##### listViewMapping

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") listViewMapping

            -   ##### typeProperties

                [NamedTypedValue](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] typeProperties

    -   ### Class [com.appiancorp.suiteapi.type.DatatypeProperties](com/appiancorp/suiteapi/type/DatatypeProperties.html "class in com.appiancorp.suiteapi.type")

        class DatatypeProperties extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### base

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") base

            -   ##### description

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description

            -   ##### flags

                int flags

            -   ##### foundation

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foundation

            -   ##### id

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id

            -   ##### list

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") list

            -   ##### name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name

            -   ##### namespace

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") namespace

            -   ##### nameWithinNamespace

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") nameWithinNamespace

            -   ##### typeof

                [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeof

    -   ### Class [com.appiancorp.suiteapi.type.NamedTypedValue](com/appiancorp/suiteapi/type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

        class NamedTypedValue extends [TypedValue](com/appiancorp/suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### name

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name

    -   ### Class [com.appiancorp.suiteapi.type.TypedValue](com/appiancorp/suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")

        class TypedValue extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        \-925509717318185317L

        -   #### Serialization Methods

            -   ##### readObject

                private void readObject([ObjectInputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/ObjectInputStream.html "class or interface in java.io") in) throws [IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io"), [ClassNotFoundException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/ClassNotFoundException.html "class or interface in java.lang")

                Throws:

                `[IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")`

                `[ClassNotFoundException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/ClassNotFoundException.html "class or interface in java.lang")`

            -   ##### writeObject

                private void writeObject([ObjectOutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/ObjectOutputStream.html "class or interface in java.io") out) throws [IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")

                Throws:

                `[IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")`

        -   #### Serialized Fields

            -   ##### typeRef

                com.appiancorp.type.TypeRef typeRef

    -   ### Class [com.appiancorp.suiteapi.type.TypeResource](com/appiancorp/suiteapi/type/TypeResource.html "class in com.appiancorp.suiteapi.type")

        class TypeResource extends [HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### validCharacters

                [Pattern](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html "class or interface in java.util.regex") validCharacters

            -   ##### validInitialCharacters

                [Pattern](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/regex/Pattern.html "class or interface in java.util.regex") validInitialCharacters

-   ## Package [com.appiancorp.suiteapi.type.config.xsd.exceptions](com/appiancorp/suiteapi/type/config/xsd/exceptions/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.type.config.xsd.exceptions.InvalidXsdException](com/appiancorp/suiteapi/type/config/xsd/exceptions/InvalidXsdException.html "class in com.appiancorp.suiteapi.type.config.xsd.exceptions")

        class InvalidXsdException extends [ImportException](com/appiancorp/suiteapi/type/exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.type.config.xsd.exceptions.UnsupportedXsdException](com/appiancorp/suiteapi/type/config/xsd/exceptions/UnsupportedXsdException.html "class in com.appiancorp.suiteapi.type.config.xsd.exceptions")

        class UnsupportedXsdException extends [ImportException](com/appiancorp/suiteapi/type/exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.type.config.xsd.exceptions.XsdImportEcoreSaveException](com/appiancorp/suiteapi/type/config/xsd/exceptions/XsdImportEcoreSaveException.html "class in com.appiancorp.suiteapi.type.config.xsd.exceptions")

        class XsdImportEcoreSaveException extends [ImportException](com/appiancorp/suiteapi/type/exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### validationErrors

                [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ValidationItem](com/appiancorp/suiteapi/common/ValidationItem.html "class in com.appiancorp.suiteapi.common")\> validationErrors

-   ## Package [com.appiancorp.suiteapi.type.exceptions](com/appiancorp/suiteapi/type/exceptions/package-summary.html)

    -   ### Exception [com.appiancorp.suiteapi.type.exceptions.ImportException](com/appiancorp/suiteapi/type/exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")

        class ImportException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### \_diagnostics

                [ImportDiagnostic](com/appiancorp/suiteapi/type/config/ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] \_diagnostics

            -   ##### \_errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") \_errorCode

            -   ##### \_errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] \_errorCodeArguments

    -   ### Exception com.appiancorp.suiteapi.type.exceptions.InvalidNamespaceException

        class InvalidNamespaceException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.type.exceptions.InvalidTypeException](com/appiancorp/suiteapi/type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        class InvalidTypeException extends [AppianRuntimeException](com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

    -   ### Exception [com.appiancorp.suiteapi.type.exceptions.InvalidTypeReferenceException](com/appiancorp/suiteapi/type/exceptions/InvalidTypeReferenceException.html "class in com.appiancorp.suiteapi.type.exceptions")

        class InvalidTypeReferenceException extends [InvalidTypeException](com/appiancorp/suiteapi/type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### typesNames

                [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")\[\] typesNames

    -   ### Exception [com.appiancorp.suiteapi.type.exceptions.NonSystemTypesUnsupportedException](com/appiancorp/suiteapi/type/exceptions/NonSystemTypesUnsupportedException.html "class in com.appiancorp.suiteapi.type.exceptions")

        class NonSystemTypesUnsupportedException extends [AppianException](com/appiancorp/exceptions/AppianException.html "class in com.appiancorp.exceptions") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        serialVersionUID:

        1L

        -   #### Serialized Fields

            -   ##### errorCode

                [ErrorCode](com/appiancorp/suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode

            -   ##### errorCodeArguments

                [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] errorCodeArguments

-   ## Package [com.appiancorp.suiteapi.web.portal](com/appiancorp/suiteapi/web/portal/package-summary.html)

    -   ### Class [com.appiancorp.suiteapi.web.portal.PortalStateTag](com/appiancorp/suiteapi/web/portal/PortalStateTag.html "class in com.appiancorp.suiteapi.web.portal")

        class PortalStateTag extends javax.servlet.jsp.tagext.TagSupport implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### scope

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") scope

            -   ##### variableName

                [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") variableName

    -   ### Class [com.appiancorp.suiteapi.web.portal.PortletSession](com/appiancorp/suiteapi/web/portal/PortletSession.html "class in com.appiancorp.suiteapi.web.portal")

        class PortletSession extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

        -   #### Serialized Fields

            -   ##### a

                [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") a

            -   ##### isnew

                boolean isnew