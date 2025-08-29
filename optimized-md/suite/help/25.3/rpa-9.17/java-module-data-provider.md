---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/java-module-data-provider.html
original_path: rpa-9.17/java-module-data-provider.html
version: "25.3"
title: "Data-Provider Java Module"
page_id: "rpa-9.17/java-module-data-provider"
section: "Using the Data Provider module"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data-Provider Java Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The Data Provider module allows your robotic task to access data from Excel or ZIP files. This module also allows your robotic task to create and write to Excel files.

To use the Data Provider module, you must first [include the module dependency](develop-java.html#add-dependencies) in the pom.xml.

## Using the Data Provider module

The Data Provider module allows your robotic task to access data from two different sources: Excel and ZIP files. Once the robotic task has access to either of these sources, each Excel row or compressed file can be used as an item in your workflow. An item represents an element to be treated by a robotic task.

Your robotic task also has the ability to create Excel files and add data to them.

### Adding data to Excel

The _IExcel_ interface allows your robotic task to handle Excel files.

The _IExcel_ interface uses [Apache POI](https://poi.apache.org/components/index.html). In Apache POI, the interface _Workbook_ is the highest-level representation of an Excel workbook. The two following classes implement the Workbook interface in Apache POI:

-   _HSSFWorkbook (HSSF)_: Implements Excel file handling using 2007 and earlier Excel file formatting, such as `\*.xls` and `\*.doc`.
-   _XSSFWorkbook (XSSF)_: Implements Excel file handling in OOXML file format, such as `\*.xlsx` and `\*.docx`.

Because _IExcel_ uses Apache POI, it has direct access to work with its classes and simplifies its implementation.

Use the following code snippet to obtain an instance of _IExcel_:

```
1
IExcel excel = IExcel.getExcelInstance(this);
```

Where `this` refers to the class that implements the _IRobot_ interface.

#### Accessing existing Excel files

To initialize the instance with an existing Excel file, use the _init(String url)_ method, where _url_ is the path to the file you want to open.

```
1
2
3
4
5
6
try(IExcel excel = IExcel.getExcelInstance(this)) {
excel.init(excelPath);
    // TO DO: something with Excel
} catch(Exception e) {
    // TO DO: manage the exceptions
}
```

#### Creating Excel files

To create a new Excel file, use the _create(String url, EExcelType type)_ method.

```
1
void create(String url, EExcelType type) throws Exception;
```

The _create(String url, EExcelType type)_ method receives the following parameters:

-   _url_: The path where the Excel file will be created.
-   _type_: The type of Excel file format. This parameter accepts one of the values of the enum type _EExcelType_, which are:
    -   _XLS_ for files `\*.xls`.
    -   _XLSX_ for files `\*.xlsx`.

The following example shows how to create a new Excel file and initialize the instance of _IExcel_.

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
// Get the robotic task's working directory
String robotDir = server.getCurrentDir();

// Create a unique name for the Excel file
String name = String.valueOf(new Date().getTime()) + ".xlsx";

// Final path of the file
File file = Paths.get(robotDir, name).toFile();
excelPath = file.getAbsolutePath();// Inicializar la instancia de IEx-cel
try(IExcel excel = IExcel.getExcelInstance(this)) {
    // Create the file and initialize Excel
    excel.create(excelPath, EExcelType.XLSX);
    // Perform tasks with Excel here
} catch(Exception e) {
    // Manage exceptions here
}
```

#### Adding a sheet to a workbook

To add a sheet to a workbook, use the _createSheet(String sheetName)_ method, where _sheetName_ is the specified name of the new sheet.

The method returns `true` if the sheet was successfully created. It's recommended to check the returned value before entering data into the sheet.

```
1
2
3
if(excel.createSheet("Sheet 1")) {
    // The sheet was added
}
```

The _createSheet(String sheetName, int index)_ method allows you to create a new sheet in a specific position by specifying the index.

```
1
boolean createSheet(String sheetName, int index)
```

In Apache POI, the _Sheet_ interface represents a sheet in an Excel workbook. It provides a wide range of methods that allow you to create rows, delete rows, get a specific row, or set measurements, dimensions, and margins. For more information on the Apache POI _Sheet_ interface, please see the [Apache POI documentation](https://poi.apache.org/apidocs/org/apache/poi/ss/usermodel/Sheet.html).

#### Adding a header to a sheet

Before entering data, it's recommended to first create a row for the header where you can define the content of each column. To create a new row, you must create an object [_Row_](https://poi.apache.org/apidocs/org/apache/poi/ss/usermodel/Row.html).

The Apache POI interface _Row_ represents an Excel row. _Row_ inherits from _Iterable<Cell>_, which allows you to iterate on the row's cells. To create a header row, use the following code snippet:

```
1
2
// Create a header row in a specified sheet
Row row = excel.getWorkbook().getSheet("Sheet 1").createRow(0);
```

To enter values in a new row, create a cell for each value using the _createCell (int column, int type)_ method of the class _Row_. This method returns the object [Cell](https://poi.apache.org/apidocs/org/apache/poi/ss/usermodel/Cell.html).

The _createCell (int column, int type)_ method receives the following parameters:

-   _int column_: Indicates which column to add the cell to (zero-based).
-   _int type_: Indicates the type of content in the cell. The types available are:
    -   _CELL\_TYPE\_NUMERIC_
    -   _CELL\_TYPE\_STRING_
    -   _CELL\_TYPE\_FORMULA_
    -   _CELL\_TYPE\_BLANK_
    -   _CELL\_TYPE\_BOOLEAN_
    -   _CELL\_TYPE\_ERROR_

To add values to your cell, use the _setCellValue_ method. For example, in this header, there are four cells with different values: Title, Author, Price, and Stock.

```
1
2
3
4
5
// Header content
row.createCell(0, CellType.STRING).setCellValue("Title");
row.createCell(1, CellType.STRING).setCellValue("Author");
row.createCell(2, CellType.STRING).setCellValue("Price");
row.createCell(3, CellType.STRING).setCellValue("Stock");
```

Another option is to create each cell independently and set its content type last. For example:

```
1
2
3
Cell cell = row.createCell(0);
cell.setCellValue("Title");
cell.setCellType(CellType.STRING);
```

#### Formatting data in a sheet

To apply a style to a row, use the class [_XSSFCellStyle_](https://poi.apache.org/apidocs/org/apache/poi/xssf/usermodel/XSSFCellStyle.html) or [_HSSFCellStyle_](https://poi.apache.org/apidocs/org/apache/poi/hssf/usermodel/HSSFCellStyle.html), depending on which Excel file format you've implemented. Both classes implement the interface [_CellStyle_](https://poi.apache.org/apidocs/org/apache/poi/ss/usermodel/CellStyle.html).

For example, to create and apply a style to a header row using _XSSFCellStyle_:

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
// Create header row style
XSSFCellStyle style = (XSSFCellStyle)
        excel.getWorkbook().createCellStyle();
style.setAlignment(HorizontalAlignment.CENTER);
style.setFillForegroundColor(new XSSFColor(new java.awt.Color(255, 0, 0)));
style.setFillPattern(FillPatternType.SOLID_FOREGROUND);

// Create the header row font
XSSFFont font = (XSSFFont) excel.getWorkbook().createFont();
font.setColor(IndexedColors.WHITE.getIndex());
font.setFontName("Verdana");
font.setFontHeight(10);
style.setFont(font);

// Apply style
row.getCell(0).setCellStyle(style);
row.getCell(1).setCellStyle(style);
row.getCell(2).setCellStyle(style);
row.getCell(3).setCellStyle(style);

// Define the column width
excel.getSheet().setDefaultColumnWidth(20);
```

The last line of this example sets the sheet's default column width. Another option is to set each cell width based on its content using the following code snippet:

```
1
excel.getSheet().autoSizeColumn(0);
```

Apache POI recommends setting width at the end after all data has been entered to avoid slowing down the task.

#### Entering data in a sheet

After creating and formatting the header, the next step would be to write the data processed by your robotic task to the rows in the sheet. To add data that is stored in an array to your sheet, you will follow the same pattern used to [create a row for the header](#adding-a-header-to-a-sheet).

Before writing the data, first retrieve the data and assign each value an index. For example:

```
1
2
3
4
5
6
// Get info
String[] book = books[itemIndex].split("#");
String title = book[0];
String author = book[1];
String price = book[2];
String num = book[3];
```

Once you have the data, create a new row in your workbook using _createRow_. Use _itemIndex_ to refer to the current item. For an array of data, you should start from 0. Since the first row of a sheet is typically the header row, add `+ 1` to create the row after the header row.

```
1
2
// Create a row in the only available sheet
Row row = excel.getSheet().createRow(currentItem + 1);
```

To enter values in a new row, first create a cell for each value using the _createCell (int column, int type)_ method of the class _Row_. Then add values to your cell using the _setCellValue_ method.

```
1
2
3
4
row.createCell(0, CellType.STRING).setCellValue(title);
row.createCell(1, CellType.STRING).setCellValue(author);
row.createCell(2, CellType.NUMERIC).setCellValue(price);
row.createCell(3, CellType.NUMERIC).setCellValue(num);
```

To insert all of the data stored in the array, use a `for` loop. To increase the value of `itemIndex` each time the code in the loop is executed, add `++`.

```
1
2
3
for (int itemIndex = 0 ; itemIndex < books.length ; itemIndex++) {
  /* Code */
}
```

#### Closing the workbook

When you've finished entering data and your robotic task ends, all resources used by _IExcel_ should be closed and released using the _close_ method. If the file has already been closed, this method will be ignored. This method should be called in the _cleanUp_ method.

If your robotic task is compatible with initializing _IExcel_ with a try-with-resources, then you don't need to use the _close_ method because the JVM will call it for you.

#### Obtaining cells and rows

_IExcel_ allows you to obtain cells and rows from a cell reference. This reference is the class [_CellReference_](https://poi.apache.org/apidocs/org/apache/poi/ss/util/CellReference.html) in Apache POI.

##### Cells

There are two methods of _IExcel_ that allow you to obtain a cell from a _CellReference_:

-   _Cell getCell(CellReference reference)_: Get this cell.
-   _Cell getCellWithCreation(CellReference reference)_: Get this cell. If the cell doesn't exist, create it.

To initialize _CellReference_, use either of the two methods and include the row and column in which the cell is located. For example, the following code snippet obtains the cell from row 2 and column 3 and will create the cell if it does not exist.

```
1
Cell cell = excel.getCellWithCreation(new CellReference(2, 3));
```

Alternatively, you can obtain the reference from the cell representation in Excel. For example, using the format "B3" instead of (2,3).

If you already have a cell and want to obtain its _CellReference_, use the following code snippet:

```
1
CellReference cReference = new CellReference(cell);
```

To indicate the sheet where the cells are located, use the following code snippet:

```
1
CellReference(String pSheetName, int pRow, int pCol, boolean pAbsRow, boolean pAbsCol)
```

To set the value of a cell, use the _setCellValueByName_ method. For example, the code snippet below sets the value "This is the cell B3" to the cell B3:

```
1
excel.setCellValueByName("B3", "This is the cell B3");
```

To obtain a cell value, use the cell's location in Excel or through a _CellReference_. For example:

```
1
excel.getCellValueByName("B3");
```

##### Rows

To obtain a row, you can reference one of its cells using the following code snippet:

```
1
Row r = excel.getRow(new CellReference("B3"));
```

To create a row in the event that it does not exist, use the following code snippet:

```
1
Row r = excel.getRowWithCreation(new CellReference("B3"));
```

To return a list of cells in a row, use the _getEntireRow_ method. This method returns a list of cells _(List<Cell>)_ from a row according to the row number or directly from an object Row:

-   _List<Cell> getEntireRow(int rowIndex)_
-   _List<Cell> getEntireRow(Row row)_

For example:

```
1
excel.setCellValueByRef(new CellReference("B3"), "This is the cell B3");
```

For more information about this class, see Apache POI's [CellReference documentation](https://poi.apache.org/apidocs/org/apache/poi/ss/util/CellReference.html).

#### Inserting a link in a cell

To insert a link into a cell, use the _setCellLink_ method.

```
1
2
// Link to Appian.com
excel.setCellLink("B3", "https://www.appian.com");
```

#### Inserting images

To insert images into a cell, use the _insertImage_ method. You can also specify an image's height and width, or its vertical and horizontal alignment.

```
1
2
// Insert an image
excel.insertImage(servidor.getCurrentDir() + "/resources/icon.png", "B3");
```

#### Obtaining a list with all the cells of a row

To obtain the cells of a row, use the _getEntireRow_ method. This method returns a list of cells _(List<Cell>)_ of a row according to the row number or directly from an object Row:

-   _List<Cell> getEntireRow(int rowIndex)_
-   _List<Cell> getEntireRow(Row row)_

#### Entering formulas and using FormulaEvaluator

_IExcel_ provides access to [FormulaEvaluator](https://poi.apache.org/apidocs/org/apache/poi/ss/usermodel/FormulaEvaluator.html) through the _getFormulaEvaluator()_ method.

To enter a formula into a cell:

```
1
2
Cell cell = excel.getCellWithCreation(new CellReference("D8"));
cell.setCellFormula("SUM(D2:D7)");
```

To evaluate a formula, obtain an instance of _FormulaEvaluator_:

```
1
2
FormulaEvaluator fEvaluator = excel.getFormulaEvaluator();
CellValue cv = fEvaluator.evaluate(excel.getCell(new CellReference("E8")));
```

To learn more about FormulaEvaluator, see the Apache POI documentation on [FormulaEvaluator](https://poi.apache.org/apidocs/org/apache/poi/ss/usermodel/FormulaEvaluator.html).

### Accessing data from Excel using the ExcelDataProvider

The _IJidokaExcelDataProvider_ interface allows you to use an Excel file as a data source for your items. This interface contains methods that allow you to access items and obtain information about them.

To get an instance of the object, use the following code snippet:

```
1
IJidokaDataProvider.getInstance(this, Provider.EXCEL)
```

Where `this` refers to the class that implements the _IRobot_ interface.

Once you have an instance of _IJidokaExcelDataProvider_, you must initialize the instance. If you do not initialize the instance, exceptions may occur.

To initialize the instance, call the method:

```
1
init (String url, String sheetName, Integer firstRow, IRowMapper\<IExcel, T\>mapper)
```

This method accepts the following parameters:

-   _url_: Path to the Excel file.
-   _sheetName_: Excel file sheet name.
-   _firstRow_: Indicates the last row used as the header in Excel. For example, if you are using row 1 to display header content, enter the number 1 so the robotic task knows to start after the first row.
-   _mapper_: An instance of [_IRowMapper_](#transforming-excel-rows-to-java-objects).

Once the instance has been initialized, you can use any of the following methods provided by the _IJidokaExcelDataProvider_ interface:

| Method | Description |
| --- | --- |
| _nextRow()_ | Determines if the data provider has a "next" row. |
| _getCurrentItem()_ | Returns the object associated with the data provider's current position. You must call the _nextRow()_ method before using this method otherwise an exception will occur. |
| _getCurrentItemNumber()_ | Returns the data provider's current position. |
| _updateItem()_ | Updates an item in the data provider. This method uses the _IRowMapper_ interface. |
| _flush()_ | Saves the sheet. If someone were to open the Excel file during the robot execution, you could see the robotic task's progress. |

#### Transforming Excel rows to Java objects

The _IRowMapper_ interface determines how to transform an Excel row (retrieved as an input) into a Java object that represents the information in that row. This interface provides methods to update a specific row and to indicate the last Excel row to be read. To use these methods, you must create a class that implements the _IRowMapper_ interface.

The methods to implement the _IRowMapper_ interface are:

| Method | Description |
| --- | --- |
| _T map(D data, int rowNum)_ | Converts the row located in _rowNum_ to a Java instance of type _T_. |
| _void update(D data, int rowNum, T rowData)_ | Modifies the row located in _rowNum_ with the data stored in a Java instance of type _T_. |
| _boolean isLastRow(T instance)_ | Determines the last row of the file. Remember that _DataProvider_ is used to provide items. |
| _boolean mustBeProcessed(T instance)_ | Determines if the current instance must be considered a valid item. Only valid items are counted and processed. |

The _IRowMapper_ interface uses two generic method declarations:

-   The object that operates directly with Excel data. For _ExcelDataProvider_, the object _D_ is always _IExcel_.
-   The object built from each Excel row (Instance _T_). This object must be created by the developer.

To learn more about this interface, open the Appian RPA Console and click **Help** > **Javadoc** in the left menu.

### Accessing data from ZIP files

The _IJidokaZipDataProvider_ interface allows you to use a ZIP file as a data source for your items. Using this data provider, you delegate the control of the items to Appian RPA.

You can select specific files from the ZIP file to process in the data provider. You can filter by one or more extensions. If no filter is specified, all files contained in the ZIP file will be processed.

To obtain an instance of _IJidokaZipDataProvider_, use the following code snippet:

```
1
IJidokaDataProvider.getInstance(this, Provider.ZIP)
```

Where `this` refers to the class that implements the interface IRobot.

To initialize the instance, call the method:

```
1
init(String url, String\... extensionsToExtract)
```

This method accepts the following parameters:

-   _url_: The path to the ZIP file that will be used as data source.
-   _extensionsToExtract_: The file extensions to be processed from the ZIP file.

Once we have initialized the instance, you can use any of the following methods provided by the _IJidokaZipDataProvider_ interface:

| Method | Description |
| --- | --- |
| _nextRow()_ | Determines if the data provider has a "next" row. |
| _getCurrentItem()_ | Returns the file associated with the data provider's current position. You must call the _nextRow_ method before using this method otherwise an exception will occur. |
| _getCurrentItemNumber()_ | Returns the data provider's current position. |
| _updateItem()_ | Update a file in the data provider. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...