---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/cli/Option.html
original_path: api/com/appiancorp/suiteapi/common/cli/Option.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.cli](package-summary.html)

# Class Option

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.cli.Option

* * *

public class Option extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static enum` 

    `[Option.Arguments](Option.Arguments.html "enum class in com.appiancorp.suiteapi.common.cli")`

    Arguments may or may not have parameters.

    `static class` 

    `[Option.Execute](Option.Execute.html "class in com.appiancorp.suiteapi.common.cli")`

    Any extender of Execute MUST implement one of these methods.

    `static class` 

    `[Option.TerminateOptionsException](Option.TerminateOptionsException.html "class in com.appiancorp.suiteapi.common.cli")`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Option](#%3Cinit%3E\(char,java.lang.String,boolean,java.lang.String,com.appiancorp.suiteapi.common.cli.Option.Arguments,java.lang.String,com.appiancorp.suiteapi.common.cli.Option.Execute\))(char shortOption, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") longOption, boolean required, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description, [Option.Arguments](Option.Arguments.html "enum class in com.appiancorp.suiteapi.common.cli") arguments, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") argumentName, [Option.Execute](Option.Execute.html "class in com.appiancorp.suiteapi.common.cli") execute)`

    Construct an Option, to be returned by a Driver.

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[execute](#execute\(java.lang.String,java.lang.String%5B%5D,java.util.List,java.io.PrintStream\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") program, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] args, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Option](Option.html "class in com.appiancorp.suiteapi.common.cli")> options, [PrintStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/PrintStream.html "class or interface in java.io") out)`

    Construct a list of Options, then invoke Option.execute("myprogram",args,options).

    `static [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Option](Option.html "class in com.appiancorp.suiteapi.common.cli")>`

    `[getStandardOptions](#getStandardOptions\(java.lang.String,java.io.PrintStream\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") program, [PrintStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/PrintStream.html "class or interface in java.io") out)`

    Return the standard options such as 'options' and 'help'.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Option

        public Option(char shortOption, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") longOption, boolean required, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description, [Option.Arguments](Option.Arguments.html "enum class in com.appiancorp.suiteapi.common.cli") arguments, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") argumentName, [Option.Execute](Option.Execute.html "class in com.appiancorp.suiteapi.common.cli") execute)

        Construct an Option, to be returned by a Driver.

        Parameters:

        `shortOption` - The single character Option.

        `longOption` - The long name Option.

        `required` - If the option MUST be passed.

        `description` - Description of the Option for help.

        `arguments` - Set to one of the Arguments enumeration to determine if this Option has a parameter.

        `argumentName` - The name of the argument to the Option if it has one, otherwise must be null.

        `execute` - This callback will be executed when the option is passed. Typically this will be used to set a field in the Driver, possibly with validation.

-   ## Method Details

    -   ### getStandardOptions

        public static [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Option](Option.html "class in com.appiancorp.suiteapi.common.cli")\> getStandardOptions([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") program, [PrintStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/PrintStream.html "class or interface in java.io") out)

        Return the standard options such as 'options' and 'help'.

        Parameters:

        `program` -

        `out` -

        Returns:

    -   ### execute

        public static [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> execute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") program, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] args, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Option](Option.html "class in com.appiancorp.suiteapi.common.cli")\> options, [PrintStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/PrintStream.html "class or interface in java.io") out) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Construct a list of Options, then invoke Option.execute("myprogram",args,options). It will return all unparsed options. (If you don't want any, just error on their existance.) The help option should be new Option.Help() for its execute to get automatic help.

        Parameters:

        `program` - The program name, used in help.

        `args` - Program arguments, typically from main(String args\[\])

        `options` - List of options to execute

        `out` - Typically System.out, but if null will prevent prompting for required parameters, instead throwing an exception.

        Returns:

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")`