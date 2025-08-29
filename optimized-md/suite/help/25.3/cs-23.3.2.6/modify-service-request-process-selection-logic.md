---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/modify-service-request-process-selection-logic.html
original_path: cs-23.3.2.6/modify-service-request-process-selection-logic.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modifying Connected Servicing Template Selection Logic

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Servicing, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

When a new service request is created, Connected Servicing automatically knows which default tasks need to be assigned. To do this, it needs two things: the service process template and the attributes entered during service request creation used to select the template.

Out of the box, Connected Servicing uses the **Type** and **Subtype** to determine which service request process template to select. For example, suppose a user selects _Product update_ for the type and _Fee structure update_ for the subtype. In that case, Connected Service will generate a different set of tasks than if the user selects _Customer information update_ and _Beneficial owners update_.

This page describes adding or removing the attributes used to select the service request process templates. For instructions on modifying service process templates, including creating templates for these attributes, see [Managing templates](setting-up-processes.html) on the Setting Up Service Request Processes page.

## Adding a selection attribute

If your organization wants to use an attribute other than type and sub-type, you will need to add a new attribute.

Adding a new selection attribute consists of:

-   Updating objects to store the new attribute for template selection.
-   Enabling users to choose the attribute's value when setting up a service request process template.
-   Enabling the solution to use the new attribute to select the correct template when creating a new service request.
-   Enabling the solution to properly audit any changes made to the templates with this new attribute.

We will walk through an example to add the service request owner as a new attribute throughout the following steps.

### Step 1: Add field to the template reference CDT

To be able to save the value of the new attribute, you will need to add it to the CDT for the service request process template.

1.  Add the attribute as a field to the `AS_SRQ_R_TemplateRequestTypeSubTypeMapping` CDT.
2.  Verify the data store.
    -   Open the `AS SRQ Ref Data Store` data store.
    -   Click **Verify**.
    -   Click **Save & Publish**.

**EXAMPLE**

The following screenshot shows the `owner` field added to the `AS_SRQ_R_TemplateRequestTypeSubTypeMapping` CDT.

![owner_mapping.jpg](images/owner_mapping.jpg)

### Step 2: Add the field to the template audit configuration rule

The template audit configuration rule tracks changes to a template when attributes are changed. For example, if a user changes a template mapping from one owner to another owner, the template audit configuration rule will capture this in the audit history.

After you add a field to the `AS_SRQ_R_TemplateRequestTypeSubTypeMapping` CDT, you will need to update the audit configuration rule for the CDT.

1.  Open the `AS_SRQ_ENTRYPOINT_GETDATA_getTemplateMappingFields` expression rule.
2.  Add the new field name to the list of fields.

### Step 3: Add the attribute to the template properties interface

Users will select the new attribute's value when setting up the service request process template. You will need to add the attribute to this interface so they can choose it. Additionally, you will need to save their selection to the database and pass the value into related interfaces.

1.  Open the `AS_SRQ_ENTRYPOINT_DISPLAY_mappingFieldsForRTemplate` expression rule.
2.  Add a new mapping component input to allow the user to choose a value for the new attribute and save their selection. Copy the design used for the existing attributes.

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
     ...
     mappingComponentThree: a!localVariables(
       rule!AS_CO_CP_pickerFieldUsers(
       label: rule!AS_CO_I18N_UT_displayLabel(
         i18nData: local!i18nData,
         bundleKey: "AS.SRQ.RequestOwners.lbl_Owner"
       ),
       required: true,
       maxSelections: 1,
       groupFilter: <YOUR GROUP OF OWNERS>,
       value: ri!mappingCdt.owner,
       saveInto: ri!newOwner.owner,
       placeholder: rule!AS_CO_I18N_UT_displayLabel(
         i18nData: local!i18nData,
         bundleKey: "AS.SRQ.RequestOwners.plc_SearchUsers"
         )
       )
     )
     ...
    ```

3.  Open `AS_TMG_CPS_manageReferenceTemplateProperties` expression rule.
4.  Show the mapping next to or below the other mapping properties.

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
       ...

       a!localVariables(
                 local!mappingFields: a!refreshVariable(
                   value: rule!AS_TMG_UT_determineMappingFieldsForTemplate(
                     mappingCdt: ri!mappingCdt,
                     recordTypeCode: ri!selectedTemplate.recordTypeCode
                   ),
                   refreshAlways: true
                 ),
                 {
                   a!columnLayout(
                     contents: { local!mappingFields.mappingComponentOne },
                     width: "AUTO"
                   ),
                   a!columnLayout(
                     contents: { local!mappingFields.mappingComponentTwo },
                     width: "MEDIUM"
                   ),
    !                  a!columnLayout(
    !                    contents: { local!mappingFields.mappingComponentThree },
    !                    width: "MEDIUM"
    !                  )
                 }
               )
       ...

    ```

### Step 4: Update the queries that retrieve the templates

The `AS_SRQ_QE_getTemplateTypeSubtypeMapping` expression rule is a query that retrieves the appropriate template based on the attributes it receives. For the correct template to be selected during the service request, you will need to add the new attribute to this expression rule to include it in the query parameters.

1.  Open the `AS_SRQ_QE_getTemplateTypeSubtypeMapping` expression rule.
2.  Add a rule input with the same name as the new field you added to the CDT.
3.  Add a query filter where the new field equals the new rule input.
    -   **Note**: In the following `a!queryFilter()` example, you would replace _<newField>_ with the name of the field that you added to the CDT.

        ```
        1
        2
        3
        4
        5
        a!queryFilter(
          field: "<newField>",
          operator: "=",
          value: ri!<newField>
        )
        ```

4.  In the following expression rules, if the rule input is not in the `serviceRequest` CDT, pass down the rule input that you just added to the `AS_SRQ_QE_getTemplateTypeSubtypeMapping` expression rule to use this new field for default template selection.
    -   `AS_SRQ_QE_getTemplateForServiceRequest` expression rule

**EXAMPLE**

The following is an example of adding the new query filter to the `AS_SRQ_QE_getTemplateTypeSubtypeMapping` expression rule.

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
...
      a!queryLogicalExpression(
        ignoreFiltersWithEmptyValues: true,
        operator: "AND",
        filters: {
          a!queryFilter(
            field: "templateId",
            operator: "in",
            value: ri!templateId
          ),
          a!queryFilter(
            field: "templateName",
            operator: "=",
            value: ri!templateName
          ),
          a!queryFilter(
            field: "serviceRequestTypeCode",
            operator: "in",
            value: ri!serviceRequestTypeCode
          ),
          a!queryFilter(
            field: "serviceRequestSubTypeCode",
            operator: "in",
            value: ri!serviceRequestSubTypeCode
          ),
!          a!queryFilter(
!            field: "owner",
!            operator: "=",
!            value: ri!owner
!          )
        }
      ),
...
```

### Step 5: Update the template validations

The `AS_SRQ_UT_isDuplicateTemplateByMappingFields` expression rule validates that there are no overlapping templates and no blank template attributes. This rule ensures that there is not more than one template with the same combination of attributes. For example, there cannot be two templates Type: _Product update_ and Subtype: _Fee structure update_.

You will need to add the new attribute to this rule to ensure that it is included in this validation.

1.  Open the `AS_SRQ_UT_isDuplicateTemplateByMappingFields` expression rule.
2.  In the `or()` function, add a condition to check if the new field is blank. See the example below for how to add this.
3.  In the `rule!AS_SRQ_QE_getTemplateTypeSubtypeMapping()` part of the expression, add the parameter for the new attribute. See the example below for how to add this.

**EXAMPLE**

In the example below, we added a check to see if the owner is blank. We also added the customer type code to the template query.

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
if(
  or(
    rule!AS_CO_UT_isBlank(
      ri!requestTypeSubTypeMapping.serviceRequestSubTypeCode
    ),
    rule!AS_CO_UT_isBlank(
      ri!requestTypeSubTypeMapping.serviceRequestTypeCode
    ),
    rule!AS_CO_UT_isBlank(
      ri!requestTypeSubTypeMapping.owner
    )
  ),
  "",
  a!localVariables(
    local!isDuplicate: rule!AS_SRQ_QE_getTemplateTypeSubtypeMapping(
      serviceRequestTypeCode: ri!requestTypeSubTypeMapping.serviceRequestTypeCode,
      serviceRequestSubTypeCode: ri!requestTypeSubTypeMapping.serviceRequestSubTypeCode,
      owner: ri!requestTypeSubTypeMapping.owner,
      returnType: cons!AS_CO_ENUM_QE_RETURN_TYPE_TOTAL_COUNT,
      isActive: true,
      templateIdsToExclude: ri!requestTypeSubTypeMapping.templateId
    ) > 0,
    if(
      local!isDuplicate,
      rule!AS_SRQ_UT_loadBundleAndDisplayLabel(
        bundleKey: "AS.SRQ.General.vld_DuplicateTemplateMappingWithSameTypeAndSubType"
      ),
      null
    )
  )
)
```

When business users set up the service request process template, they will be required to select a value for the new attribute. Additionally, when users create a new service request and select a value for the new attribute, that value will determine which service request process template to use for the tasks.

## Removing a selection attribute

You can remove attributes if your organization doesn't want to use _Type_ or _Subtype_ to select the service request process template.

Note that removing the actual field from the CDT does not need to be removed. Leaving a new field on the CDT will not affect anything.

### Step 1: Remove the attribute from the template properties interface

Business users select attributes when setting up the service request process template. You will need to remove the attribute from this interface. Additionally, you will need to update the related interfaces that receive this information.

1.  Open the `AS_SRQ_ENTRYPOINT_DISPLAY_mappingFieldsForRTemplate` interface.
2.  Remove the user picker component that allows users to choose a value for the old attribute.
3.  In the following dependent interfaces, remove the corresponding mapping components:
    -   `AS_TMG_UT_determineMappingFieldsForTemplate`interface
    -   `AS_TMG_CPS_manageReferenceTemplateProperties`interface

### Step 2: Update the queries that retrieve the templates

The `AS_SRQ_QE_getTemplateTypeSubtypeMapping` expression rule is a query that retrieves the appropriate template based on the attributes it receives. You will need to add the new attribute to this expression rule to include in the query parameters.

1.  Open the `AS_SRQ_QE_getTemplateTypeSubtypeMapping` expression rule.
2.  Remove the rule input for the attribute being removed.
3.  Remove the query filter for the attribute being removed.
4.  In the following expression rules, remove the references to the rule input for the attribute that is being removed.
    -   `AS_SRQ_QE_getTemplateForServiceRequest` expression rule

### Step 3: Update the template validations

The `AS_SRQ_UT_isDuplicateTemplateByMappingFields` expression rule validates that there are no overlapping templates and no blank template attributes.

You will need to remove the attribute from this rule so that it is no longer included in this validation.

1.  Open the `AS_SRQ_UT_isDuplicateTemplateByMappingFields` expression rule.
2.  In the `or()` function, remove the condition to check if the field you are removing is blank.
3.  In the `rule!AS_SRQ_QE_getTemplateTypeSubtypeMapping()` part of the expression, remove the parameter for the attribute you are removing.

When users set up the service request process template, the attribute you just removed will no longer be an option for determining template selection. Additionally, when users create a new service request, the value you just deleted will not be used to determine which service request process template to use for the tasks.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...