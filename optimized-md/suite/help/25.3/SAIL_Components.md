---
source_url: https://docs.appian.com/suite/help/25.3/SAIL_Components.html
original_path: SAIL_Components.html
version: "25.3"
title: "Interface Components"
page_id: "SAIL_Components"
section: "Layouts"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Interface Components

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Interfaces in Appian are made up of components. This page lists all the components and supporting configurations delivered with Appian.

-   If you're looking for information about the **PATTERNS** tab of the component palette, see [Interface Patterns](SAIL_Recipes.html).
-   To understand the Interface design, concepts, and functionality available, see [Interface Object](interface_object.html).
-   If you're new to Appian, check out [Academy Online](https://academy.appian.com).

## Layouts

[**Billboard Layout**](/suite/help/25.3/Billboard_Layout.html) - Displays a background color, image, or video with optional overlay content.

[**Box Layout**](/suite/help/25.3/Box_Layout.html) - Displays any arrangement of layouts and components within a box on an interface.

[**Card Group Layout**](/suite/help/25.3/card-group-layout.html) - Displays an arrangement of cards, with the same width and height.

[**Card Layout**](/suite/help/25.3/card_layout.html) - Displays any arrangement of layouts and components within a card on an interface. Can be styled or linked.

[**Columns Layout**](/suite/help/25.3/Columns_Layout.html) - Displays any number of columns alongside each other. On narrow screens and mobile devices, columns are stacked.

[**Form Layout**](/suite/help/25.3/Form_Layout.html) - Displays any arrangement of layouts and components beneath a header and above buttons. Use this as the top-level layout for start and task forms.

[**Header Content Layout**](/suite/help/25.3/Header_Layout.html) - Displays any arrangement of layouts and components beneath a card or billboard flush with the edge of the page.

[**Pane Layout**](/suite/help/25.3/Pane_Layout.html) - Displays two or three vertical panes, each with independent scrolling. Can be used as a top-level layout, or in the contents parameter of a form or header content layout.

[**Section Layout**](/suite/help/25.3/Section_Layout.html) - This layout requires Appian for Mobile Devices version 17.2 or later. Displays any arrangement of layouts and components beneath a section title on an interface.

[**Side By Side Layout**](/suite/help/25.3/Side_By_Side_Layout.html) - Displays components alongside each other.

[**Wizard Layout**](/suite/help/25.3/Wizard_Layout.html) - Displays a multi-step form with a step indicator. Use this as the top-level layout for complex forms to organize inputs into steps. Reference information about wizard steps using `fv!activeStepIndex`, `fv!isFirstStep`, and `fv!isLastStep`.

### Billboard Overlays

-   [**Bar Overlay**](/suite/help/25.3/bar-overlay.html) - Displays a horizontal bar overlay for use in billboard layout.

-   [**Column Overlay**](/suite/help/25.3/column-overlay.html) - Displays a vertical column overlay for use in billboard layout.

-   [**Full Overlay**](/suite/help/25.3/full-overlay.html) - Displays an overlay that covers the entire billboard layout.

### Layout Elements

-   [**Column Layout**](/suite/help/25.3/Column_Layout.html) - Displays a column that can be used within the columns layout.

-   [**Pane Component**](/suite/help/25.3/Pane_Component.html) - Displays a pane within [a!paneLayout()](Pane_Layout.html).

-   [**Side By Side Item**](/suite/help/25.3/Side_By_Side_Item.html) - Displays one item within a side by side layout.

-   [**Validation Message**](/suite/help/25.3/Validation_Message.html) - Configures a validation message for forms, sections, grids, and wizard steps.

-   [**Wizard Step**](/suite/help/25.3/Wizard_Step_Component.html) - Displays the components and layouts of a single wizard step within the Wizard Layout.

### Title Bar Templates

-   [**Full Header Template**](/suite/help/25.3/Header_Template_Full.html) - A title bar template that displays a prominent header with a background color at the top of the [form](Form_Layout.html) or [wizard](Wizard_Layout.html). The header spans the full width of the page and can include an optional decorative stamp.

-   [**Image Header Template**](/suite/help/25.3/Header_Template_Image.html) - A title bar template that displays a prominent header with a background color at the top of the [form](Form_Layout.html) or [wizard](Wizard_Layout.html). The header spans the full width of the page and can include a decorative image next to the title.

-   [**Sidebar Template**](/suite/help/25.3/Sidebar_Template.html) - A title bar template that displays a sidebar in a [form](Form_Layout.html) or [wizard](Wizard_Layout.html). On narrower screens, the sidebar automatically displays as a header. In wizard layouts with a vertical milestone, the sidebar displays the milestone.

-   [**Simple Header Template**](/suite/help/25.3/Header_Template_Simple.html) - A title bar template that displays a simple text header at the top of the [form](Form_Layout.html) or [wizard](Wizard_Layout.html). The header aligns with the width of the contents and can include an optional decorative stamp.

## Inputs

[**Barcode**](/suite/help/25.3/Barcode_Component.html) - Displays and allows entry of a barcode value using a barcode scanner or manual input.

[**Data Fabric Chatbot**](/suite/help/25.3/Data-Fabric-Chatbot-Component.html) - Creates a chatbot for chatting with your data fabric.

[**Date**](/suite/help/25.3/Date_Component.html) - Displays and allows entry of a single date (year, month, day). To display a read-only date using a custom format, use a text component.

[**Date and Time**](/suite/help/25.3/Date_and_Time_Component.html) - Displays and allows entry of a single date and time (year, month, day, hour, minute, second). To display a read-only date and time using a custom format, use a text component.

[**Decimal (Floating Point)**](/suite/help/25.3/Floating_Point_Component.html) - Displays and allows entry of a single decimal number, stored with a floating point representation.

[**Documents Chat**](/suite/help/25.3/Documents_Chat_Component.html) - Creates a chat for users to ask questions about a curated set of documents.

[**Encrypted Text**](/suite/help/25.3/Encrypted_Text_Component.html) - Allows entry of a single line of text that is encrypted when saved into a variable. The value remains encrypted while on the server and is only decrypted when displayed in the component.

[**File Upload**](/suite/help/25.3/File_Upload_Component.html) - Allows users to upload one or more files. To upload files outside of a [start form](process-model-object.html#process-start-form-tab) or [task](Tasks.html), use [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html) in the _saveInto_ parameter of a submit [button](Button_Component.html) or [link](Link_Component.html). Uploaded documents are not accessible until after form submission.

[**Integer**](/suite/help/25.3/Integer_Component.html) - Displays and allows entry of a single integer number.

[**Paragraph**](/suite/help/25.3/Paragraph_Component.html) - Displays and allows entry of multiple lines of text.

[**Records Chat**](/suite/help/25.3/Records_Chat_Component.html) - Creates a chatbot for chatting on a record summary view.

[**Signature**](/suite/help/25.3/Signature_Component.html) - Allows users to capture and save a .png signature file. To upload signatures outside of a [start form](process-model-object.html#process-start-form-tab) or [task](Tasks.html), use [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html) in the _saveInto_ parameter of a submit [button](Button_Component.html) or [link](Link_Component.html).

[**Styled Text Editor**](/suite/help/25.3/Styled_Text_Editor_Component.html) - Allows users to enter and view styled text. Text is stored with HTML formatting.

[**Text**](/suite/help/25.3/Text_Component.html) - Displays and allows entry of a single line of text.

## Selection

[**Card Choices**](/suite/help/25.3/card-choices-component.html) - Displays a set of cards from which the user may select one or many cards and saves a value based on the selected choice.

[**Checkbox By Index**](/suite/help/25.3/Checkbox_By_Index_Component.html) - Displays a limited set of choices from which the user may select none, one, or many items and saves the indices of the selected choices.

[**Checkbox**](/suite/help/25.3/Checkbox_Component.html) - Displays a limited set of choices from which the user may select none, one, or many items and saves the values of the selected choices.

[**Dropdown By Index**](/suite/help/25.3/Dropdown_By_Index_Component.html) - Displays a list of choices for the user to select one item and saves the index of the selected choice.

[**Dropdown**](/suite/help/25.3/Dropdown_Component.html) - Displays a list of choices for the user to select one item and saves a value based on the selected choice.

[**Multiple Dropdown By Index**](/suite/help/25.3/Multiple_Dropdown_By_Index_Component.html) - Displays a list of choices for the user to select multiple items and saves the indices of the selected choices.

[**Multiple Dropdown**](/suite/help/25.3/Multiple_Dropdown_Component.html) - Displays a list of choices for the user to select multiple items and saves values based on the selected choices.

[**Radio Button By Index**](/suite/help/25.3/Radio_Button_By_Index_Component.html) - Displays a limited set of choices from which the user must select one item and saves the index of the selected choice.

[**Radio Button**](/suite/help/25.3/Radio_Button_Component.html) - Displays a limited set of choices from which the user must select one item and saves a value based on the selected choice.

### Card Choices Templates

-   [**Bars (Justified Text) Template**](/suite/help/25.3/card-choices-bars.html) - Displays a bar card template with an icon, primary text, and secondary text justified on either side of the card. For use in the [Card Choice Field](card-choices-component.html) _cardTemplate_ parameter.

-   [**Bars (Stacked Text) Template**](/suite/help/25.3/card-choices-bars-text-stacked.html) - Displays a bar card template with an icon and stacked primary text and secondary text. For use in the [Card Choice Field](card-choices-component.html) _cardTemplate_ parameter.

-   [**Tiles Template**](/suite/help/25.3/card-choices-tiles.html) - Displays a tile card template with a stacked icon, primary text, and secondary text. For use in the [Card Choice Field](card-choices-component.html) _cardTemplate_ parameter.

## Display

[**Document Viewer**](/suite/help/25.3/Document_Viewer_Component.html) - Displays a document from document management on an interface.

[**Gauge**](/suite/help/25.3/Gauge_Component.html) - Displays completion percentage in a circular style with optional text.

[**Heading Component**](/suite/help/25.3/heading-component.html) - Displays a heading with configurations for the color, size, and font weight. Also supports heading accessibility tags, which are used by screen readers and produce no visible change.

[**Horizontal Line**](/suite/help/25.3/Horizontal_Line_Component.html) - Displays a horizontal line

[**Image**](/suite/help/25.3/Image_Component.html) - Displays an image from document management or the web.

[**KPI**](/suite/help/25.3/KPI_Component.html) - Displays a key performance indicator that can be configured using a record type as the source.

[**Message Banner**](/suite/help/25.3/Message_Banner.html) - Displays a message banner that screen readers can announce whenever the component is evaluated. The banner can include primary text, secondary text, accessibility text, an icon, and custom colors.

[**Milestone**](/suite/help/25.3/Milestone_Component.html) - Displays the completed, current, and future steps of a process or sequence.

[**Progress Bar**](/suite/help/25.3/Progress_Bar_Component.html) - Displays a completion percentage in bar style.

[**Rich Text Display**](/suite/help/25.3/Rich_Text_Component.html) - Displays text in variety of styles, including bold, italics, underline, links, and numbered and bulleted lists.

[**Stamp**](/suite/help/25.3/Stamp_Component.html) - Displays an icon and/or text on a colored circular background.

[**Tag Component**](/suite/help/25.3/Tag_Component.html) - Displays a list of short text labels with colored background to highlight important attributes.

[**Tag Item**](/suite/help/25.3/Tag_Item_Component.html) - Displays a short text label with colored background for use with a!tagField.

[**Time Display**](/suite/help/25.3/Time_Component.html) - Displays a single time (hour, minute, second) but cannot take input.

[**Video**](/suite/help/25.3/Video_Component.html) - Creates a Video component.

[**Web Content Field**](/suite/help/25.3/Web_Content_Component.html) - Displays content inline from an external source.

### Gauge Types

-   [**Gauge Fraction**](/suite/help/25.3/Gauge_Fraction_Component.html) - Displays text in fractional format for use within the gauge field primary text parameter.

-   [**Gauge Icon**](/suite/help/25.3/Gauge_Icon_Component.html) - Displays an icon for use within the gauge field primary text parameter.

-   [**Gauge Percentage**](/suite/help/25.3/Gauge_Percentage_Component.html) - Displays the configured percentage of the gauge as an integer for use within the gauge field primary text parameter.

### Image Types

-   [**Document Image**](/suite/help/25.3/Document_Image_Component.html) - Displays an image from document management.

-   [**User Image**](/suite/help/25.3/User_Image_Component.html) - Displays the profile photo of the user.

-   [**Web Image**](/suite/help/25.3/Web_Image_Component.html) - Displays an image from the web.

### Rich Text Types

-   [**Bulleted List**](/suite/help/25.3/Bulleted_List_Component.html) - Displays a bulleted list within a [rich text display](Rich_Text_Component.html) component.

-   [**Icon**](/suite/help/25.3/Styled_Icon_Component.html) - Displays an icon for use in [rich text display](Rich_Text_Component.html).

-   [**Image**](/suite/help/25.3/Inline_Image_Component.html) - Displays an icon-sized image within a [rich text display](Rich_Text_Component.html) component.

-   [**List Item**](/suite/help/25.3/List_Item_Component.html) - Displays a nested list within a bulleted or numbered list in a [rich text display](Rich_Text_Component.html) component.

-   [**Numbered List**](/suite/help/25.3/Numbered_List_Component.html) - Displays a numbered list within a [rich text display](Rich_Text_Component.html) component.

-   [**Text Item**](/suite/help/25.3/Styled_Text_Component.html) - Displays a text item within a [rich text display](Rich_Text_Component.html) component.

### Video Types

-   [**Web Video**](/suite/help/25.3/Web_Video_Component.html) - Displays a video from the web for use in a [video](Video_Component.html) component.

## Action

[**Button Array Layout**](/suite/help/25.3/Button_Array_Layout.html) - Displays a list of buttons in the order they are specified. Use this layout for buttons within interfaces rather than for submission buttons at the bottom of forms

[**Button Layout**](/suite/help/25.3/Button_Layout.html) - Displays a list of buttons grouped by prominence. Use this layout in cases where prominence needs to be explicitly specified.

[**Link**](/suite/help/25.3/Link_Component.html) - Displays one or more links of any link type, including document links, task links, record view links, external web page links, and dynamic links that update variables.

[**Record Actions**](/suite/help/25.3/Record_Action_Component.html) - Displays a list of record actions with a consistent style. A record action is an end-user action configured within a [record type object](Record_Type_Object.html), such as a related action or record list action.

### Action Types

-   [**Record Action Item**](/suite/help/25.3/Record_Action_Item_Component.html) - Displays a record action defined within a record action field or a read-only grid that uses a record type as the data source. A record action is an end-user action configured within a record type object, such as a related action or a record list action.

### Button Types

-   [**Button**](/suite/help/25.3/Button_Component.html) - Displays a button that can conditionally be used to submit a form.

### Link Types

-   [**Authorization Link**](/suite/help/25.3/authorization_link_component.html) - Defines a link to authorize a user for a connected system that uses OAuth 2.0 Authorization Code grant.

-   [**Document Download Link**](/suite/help/25.3/Document_Link_Component.html) - Defines a link used to download a document.

-   [**Dynamic Link**](/suite/help/25.3/Dynamic_Link_Component.html) - Defines a link that triggers updates to one or more variables.

-   [**News Entry Link**](/suite/help/25.3/News_Entry_Link_Component.html) - Defines a link to news entries.

-   [**Process Task Link**](/suite/help/25.3/Process_Task_Link_Component.html) - Defines a link to a process task.

-   [**Record Link**](/suite/help/25.3/Record_Link_Component.html) - Defines a link to a record view. Record links must be used in a link parameter of another component, such as the links parameter in the link component.

-   [**Report Link**](/suite/help/25.3/Report_Link_Component.html) - Defines a link to a report.

-   [**Safe Link**](/suite/help/25.3/Web_Link_Component.html) - Defines a link to an external web page.

-   [**Start Process Link**](/suite/help/25.3/Start_Process_Link_Component.html) - Defines a link to start a process and navigates the user through any initial chained forms.

-   [**Submit Link**](/suite/help/25.3/Submit_Link_Component.html) - Defines a link to trigger form submission.

-   [**User Record Link**](/suite/help/25.3/User_Record_Link_Component.html) - Defines a link to a user record. User record links must be used in a link parameter of another component, such as the links parameter in the link component.

## Grids and Lists

[**Editable Grid**](/suite/help/25.3/Editable_Grid_Component.html) - Displays a tabular layout of SAIL components to provide quick inline editing of fields. For an example of how to configure an editable grid, see the Add, Edit, and Remove Data in an Inline Editable Grid SAIL Recipe.

[**Event History List**](/suite/help/25.3/Event_History_List_Component.html) - Displays the event history for one or more record types.

[**Read-Only Grid**](/suite/help/25.3/Paging_Grid_Component.html) - Displays a grid of data as rich text, links, images, buttons, tags, record actions, or progress bars. This grid component also supports searching, filtering, selecting, sorting, and paging.

### Editable Grid Elements

-   [**Editable Grid Column Configuration**](/suite/help/25.3/Grid_Column_Config_Component.html) - Defines a column configuration for use in an editable grid (a!gridLayout).

-   [**Editable Grid Header**](/suite/help/25.3/Grid_Header_Component.html) - Defines a column header for use in an editable grid (a!gridLayout).

-   [**Editable Grid Row**](/suite/help/25.3/Grid_Row_Component.html) - Displays a row of components within an editable grid (a!gridLayout).

### Event History List Elements

-   [**Event Data**](/suite/help/25.3/Event_Data_Component.html) - This function determines the event data to display for a single record type in the [Event History List component](Event_History_List_Component.html).

### Read-Only Grid Elements

-   [**Read-Only Grid Column**](/suite/help/25.3/Grid_Column_Component.html) - Displays a column of data as read-only text, links, images, or rich text within the read-only grid.

## Charts

[**Area Chart**](/suite/help/25.3/Area_Chart_Component.html) - Displays a series of numerical data as points connected by lines with the area between the line and axis shaded. Use an area chart to visualize trends over time and compare multiple values. If specific values are more important than the trend, consider using a [column chart](Column_Chart_Component.html).

[**Bar Chart**](/suite/help/25.3/Bar_Chart_Component.html) - Displays numerical data as horizontal bars. Use a bar chart to display several values at the same point in time.

[**Column Chart**](/suite/help/25.3/Column_Chart_Component.html) - Displays numerical data as vertical bars. Use a column chart to graphically display data that changes over time.

[**Line Chart**](/suite/help/25.3/Line_Chart_Component.html) - Displays a series of numerical data as points connected by lines. Use a line chart to visualize trends of data that changes over time.

[**Pie Chart**](/suite/help/25.3/Pie_Chart_Component.html) - Displays numerical data as slices of a single circle. Use a pie chart to graphically display parts of a whole.

[**Scatter Chart**](/suite/help/25.3/Scatter_Chart_Component.html) - Displays the relationship between two numerical data points. Use a scatter chart to compare multiple values, visualize trends over time, and spot outliers.

### Chart Elements

-   [**Area Chart Configuration**](/suite/help/25.3/Area_Chart_Config_Component.html) - Contains configuration for how to display data in an area chart.

-   [**Bar Chart Configuration**](/suite/help/25.3/Bar_Chart_Config_Component.html) - Contains configuration for how to display data in a bar chart.

-   [**Chart Custom Color Scheme**](/suite/help/25.3/Chart_Custom_Color_Scheme_Component.html) - A custom list of colors to apply to any chart.

-   [**Chart Reference Line**](/suite/help/25.3/Chart_Reference_Line_Component.html) - Contains the reference line value for each threshold that is defined on a column, bar, line, or area chart.

-   [**Chart Series**](/suite/help/25.3/Chart_Series_Component.html) - Defines a series of data for a bar, column, line, area, or pie chart. This component is always used within a chart component.

-   [**Column Chart Configuration**](/suite/help/25.3/Column_Chart_Config_Component.html) - Contains configuration for how to display data in a column chart.

-   [**Grouping**](/suite/help/25.3/Grouping_Component.html) - Determines the fields to group by in a query or chart that uses a record type as the source. The grouping should incorporate a record field or a related record field, an alias, and an optional interval to group by a date.

-   [**Line Chart Configuration**](/suite/help/25.3/Line_Chart_Config_Component.html) - Contains configuration for how to display data in a line chart.

-   [**Measure**](/suite/help/25.3/Measure_Component.html) - Determines the numerical values to display on a query, chart, or KPI. The measure should incorporate a record field or a related record field, the appropriate calculation to run on the field, and an alias. If your record type has data sync enabled, you can also apply filters to determine which values are included in the calculation.

-   [**Pie Chart Configuration**](/suite/help/25.3/Pie_Chart_Config_Component.html) - Contains configuration for how to display data in a pie chart.

## Pickers

[**Custom Picker**](/suite/help/25.3/Custom_Picker_Component.html) - Displays an autocompleting input for the selection of one or more items from an arbitrary data set. For an example of how to configure the picker, see the Configure an Array Picker SAIL Recipe.

[**Document Picker**](/suite/help/25.3/Document_Picker_Component.html) - Displays an autocompleting input for the selection of one or more documents.

[**Document and Folder Picker**](/suite/help/25.3/Document_and_Folder_Picker_Component.html) - Displays an autocompleting input for the selection of one or more documents or folders.

[**Folder Picker**](/suite/help/25.3/Folder_Picker_Component.html) - Displays an autocompleting input for selecting one or more folders.

[**Group Picker**](/suite/help/25.3/Group_Picker_Component.html) - Displays an autocompleting input for selecting one or more groups.

[**Record Picker**](/suite/help/25.3/Record_Picker_Component.html) - Displays an autocompleting input for the selection of one or more records, filtered by a single record type. Suggestions and picker tokens use the title of the record.

[**User Picker**](/suite/help/25.3/User_Picker_Component.html) - Displays an autocompleting input for the selection of one or more users.

[**User and Group Picker**](/suite/help/25.3/User_and_Group_Picker_Component.html) - Displays an autocompleting input for selecting one or more users or groups.

## Browsers

[**Document Browser**](/suite/help/25.3/Document_Browser_Component.html) - Displays the contents of a folder and allows users to navigate through a series of folders to find and select a document.

[**Document and Folder Browser**](/suite/help/25.3/Document_and_Folder_Browser_Component.html) - Displays the contents of a folder and allows users to navigate through a series of folders to find and select a folder or document.

[**Folder Browser**](/suite/help/25.3/Folder_Browser_Component.html) - Displays the contents of a folder and allows users to navigate through a series of folders to find and select a folder.

[**Group Browser**](/suite/help/25.3/Group_Browser_Components.html) - Displays group membership structure in columns. Users can navigate through the structure and select a single group.

[**Hierarchy Browser (Columns)**](/suite/help/25.3/Columns_Browser_Component.html) - Displays hierarchical data in the form of drillable columns with selectable cells.

[**Hierarchy Browser (Tree)**](/suite/help/25.3/Tree_Browser_Component.html) - Displays hierarchical data in the form of drillable tree.

[**Org Chart**](/suite/help/25.3/Org_Chart_Component.html) - Displays the organizational structure of users within Appian based on the users’ Supervisor field values.

[**User Browser**](/suite/help/25.3/User_Browser_Components.html) - Displays group membership structure in columns. Users can navigate through the structure and select a single user.

[**User and Group Browser**](/suite/help/25.3/User_and_Group_Browser_Components.html) - Displays group membership structure in columns. Users can navigate through the structure and select a single user or group.

### Hierarchy Browser Elements

-   [**Hierarchy Browser Node (Columns)**](/suite/help/25.3/Columns_Browser_Node_Component.html) - Returns a Hierarchy Browser Field Columns Node, used in the Node Configurations parameter of the Columns Browser to determine how items in the hierarchy are displayed.

-   [**Hierarchy Browser Node (Tree)**](/suite/help/25.3/Tree_Browser_Node_Component.html) - Returns a Tree Node, used in the Node Configurations parameter of the Tree Browser Component to determine how items in the hierarchy are displayed.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...