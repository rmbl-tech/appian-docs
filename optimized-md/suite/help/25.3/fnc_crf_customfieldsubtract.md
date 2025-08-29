---
source_url: https://docs.appian.com/suite/help/25.3/fnc_crf_customfieldsubtract.html
original_path: fnc_crf_customfieldsubtract.html
version: "25.3"
title: "a!customFieldSubtract() Function"
page_id: "fnc_crf_customfieldsubtract"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!customFieldSubtract() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!customFieldSubtract**( _value1, value2_ )

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns the difference between two numbers. You can subtract record fields, related record fields, or literal values of type Number (Integer) or Number (Decimal).

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value1`

 |

_Any Type_

 |

The record field, related record field, or literal value from which _value2_ is subtracted. Valid data types include Number (Integer) or Number (Decimal).

 |
|

`value2`

 |

_Any Type_

 |

The record field, related record field, or literal value to subtract. Valid data types include Number (Integer) or Number (Decimal).

 |

## Usage considerations

### Where to use this function

The `a!customFieldSubtract()` function can only be used to create a custom record field that evaluates in [real time](custom-record-fields.html#about-custom-record-fields). This means you can reference related record fields, constants, and other [supported functions](#supported-functions) in your calculations.

To create a custom record field that evaluates in real-time:

1.  In your record type, go to **Data Model**.
2.  Click **NEW CUSTOM RECORD FIELD**.
3.  From **SELECT A TEMPLATE**, choose **Write Your Own Expression**.
4.  Choose **Real-time evaluation**.
5.  Click **NEXT**.
6.  Enter an expression using any **Custom Field** function.

    **Note:**  Custom record fields that evaluate in real-time must use at least one Custom Field function.

7.  Click **NEXT**.
8.  Enter a **Name** for your custom record field.
9.  Click **CREATE**.
10.  Click **SAVE**. The new custom record field appears in your list of fields.

### Use with other Custom Field functions

You can use the `a!customFieldSubtract()` function in conjunction with other Custom Field functions, like [a!customFieldSum()](fnc_crf_customfieldsum.html), [a!customFieldDivide()](fnc_crf_customfielddivide.html), or [a!customFieldMultiply()](fnc_crf_customfieldmultiply.html) to create the calculations you need.

See the [Real-time evaluation recipes](custom-record-fields.html#real-time-evaluation-recipes) for an example.

## Example

Let's say you want calculate each employee's net salary.

The Employee record type has a `grossSalary` field, which contains each employee's salary amount. The Benefits record type has a `deductions` field, which determines the deduction amount based on the selected benefits plan.

To calculate each employee's net salary, you could create a custom record field on the Employee record type that evaluates in real-time so you can reference the related record field from the Benefits record type in your calculation.

The expression would look something like this:

```
1
2
3
4
a!customFieldSubtract(
  value1: recordType!Employee.fields.grossSalary,
  value2: recordType!Employee.relationships.benefits.fields.deductions
)
```

## Supported functions

You can use any of the following supported functions in either parameter of `a!customFieldSubtract()`. However, you must reference a record field, related record field, or another Custom Field function in at least one parameter.

**Note:**  When you use a supported function in a Custom Field function, you can only pass static values or constants containing static values into the supported function; you cannot pass record field references.

| Category | Function | Description |
| --- | --- | --- |
| Array | [a!flatten()](/suite/help/25.3/fnc_array_a_flatten.html) |
Converts an array that contains other arrays into an array of single items.

 |
| Array | [a!update()](/suite/help/25.3/fnc_array_a_update.html) |

Inserts new values or replaces existing values at the specified index or field name and returns the resulting updated data.

 |
| Array | [append()](/suite/help/25.3/fnc_array_append.html) |

Appends a value or values to the given array, and returns the resulting array.

 |
| Array | [index()](/suite/help/25.3/fnc_array_index.html) |

Returns the data\[index\] if it is valid or else returns the default value.

 |
| Array | [insert()](/suite/help/25.3/fnc_array_insert.html) |

Inserts a value into the given array and returns the resulting array.

 |
| Array | [joinarray()](/suite/help/25.3/fnc_array_joinarray.html) |

Concatenates the elements of an array together into one string and inserts a string separator between each element.

 |
| Array | [ldrop()](/suite/help/25.3/fnc_array_ldrop.html) |

Drops a given number of values from the left side of an array and returns the resulting array.

 |
| Array | [length()](/suite/help/25.3/fnc_array_length.html) |

This function returns the number of elements in an array.

 |
| Array | [rdrop()](/suite/help/25.3/fnc_array_rdrop.html) |

Drops a given number of values from the right side of an array, and returns the resulting array.

 |
| Array | [remove()](/suite/help/25.3/fnc_array_remove.html) |

Removes the value at a given index from an array, and returns the resulting array.

 |
| Array | [reverse()](/suite/help/25.3/fnc_array_reverse.html) |

Returns an array in reverse order.

 |
| Array | [updatearray()](/suite/help/25.3/fnc_array_updatearray.html) |

Inserts new values or modifies existing values at the specified index of a given array, and returns the resulting array.

 |
| Array | [where()](/suite/help/25.3/fnc_array_where.html) |

Returns the indexes where the values in the input array are true.

 |
| Array | [wherecontains()](/suite/help/25.3/fnc_array_wherecontains.html) |

Receives one or more values and returns an array of indexes that indicate the position of the values within the array.

 |
| Base Conversion | [bin2dec()](/suite/help/25.3/fnc_base_conversion_bin2dec.html) |

Converts a Binary number as text to a Decimal number.

 |
| Base Conversion | [bin2hex()](/suite/help/25.3/fnc_base_conversion_bin2hex.html) |

Converts a Binary number as text to a Hex number as text.

 |
| Base Conversion | [bin2oct()](/suite/help/25.3/fnc_base_conversion_bin2oct.html) |

Converts a Binary number as text to an Octal number as text.

 |
| Base Conversion | [dec2bin()](/suite/help/25.3/fnc_base_conversion_dec2bin.html) |

Converts a Decimal number to a Binary number as text.

 |
| Base Conversion | [dec2hex()](/suite/help/25.3/fnc_base_conversion_dec2hex.html) |

Converts a Decimal number to a Hex number as text.

 |
| Base Conversion | [dec2oct()](/suite/help/25.3/fnc_base_conversion_dec2oct.html) |

Converts a Decimal number to an Octal number as text.

 |
| Base Conversion | [hex2bin()](/suite/help/25.3/fnc_base_conversion_hex2bin.html) |

Converts a Hex number as text to a Binary number as text.

 |
| Base Conversion | [hex2dec()](/suite/help/25.3/fnc_base_conversion_hex2dec.html) |

Converts a Hex number as text to a Decimal number.

 |
| Base Conversion | [hex2oct()](/suite/help/25.3/fnc_base_conversion_hex2oct.html) |

Converts a Hex number as text to an Octal number as text.

 |
| Base Conversion | [oct2bin()](/suite/help/25.3/fnc_base_conversion_oct2bin.html) |

Converts an Octal number as text to a Binary number as text.

 |
| Base Conversion | [oct2dec()](/suite/help/25.3/fnc_base_conversion_oct2dec.html) |

Converts an Octal number as text to a Decimal number.

 |
| Base Conversion | [oct2hex()](/suite/help/25.3/fnc_base_conversion_oct2hex.html) |

Converts an Octal number as text to a Hex number as text.

 |
| Conversion | [displayvalue()](/suite/help/25.3/fnc_conversion_displayvalue.html) |

Tries to match a value in a given array with a value at the same index in a replacement array and returns either the value at the same index or a default value if the value is not found.

 |
| Conversion | [externalize()](/suite/help/25.3/fnc_conversion_externalize.html) |

Converts the given value to a string representation so that it can be saved externally.

 |
| Conversion | [toboolean()](/suite/help/25.3/fnc_conversion_toboolean.html) |

Converts a value to Boolean.

 |
| Conversion | [todate()](/suite/help/25.3/fnc_conversion_todate.html) |

Converts a value to Date with Timezone.

 |
| Conversion | [todatetime()](/suite/help/25.3/fnc_conversion_todatetime.html) |

Converts a value to Date and Time with Timezone.

 |
| Conversion | [todecimal()](/suite/help/25.3/fnc_conversion_todecimal.html) |

Converts a value to Decimal (double-precision floating-point number).

 |
| Conversion | [toemailaddress()](/suite/help/25.3/fnc_conversion_toemailaddress.html) |

Converts a value to email address.

 |
| Conversion | [tointeger()](/suite/help/25.3/fnc_conversion_tointeger.html) |

Converts a value to Integer.

 |
| Conversion | [tointervalds()](/suite/help/25.3/fnc_conversion_tointervalds.html) |

Converts a value to Interval (Day to Second).

 |
| Conversion | [tostring()](/suite/help/25.3/fnc_conversion_tostring.html) |

Converts a value to Text.

 |
| Conversion | [totime()](/suite/help/25.3/fnc_conversion_totime.html) |

Converts a value to Time.

 |
| Conversion | [touniformstring()](/suite/help/25.3/fnc_conversion_touniformstring.html) |

Converts a value or list to text, preserving the original scalar or array structure.

 |
| Date and Time | [a!addDateTime()](/suite/help/25.3/fnc_date_and_time_adddatetime.html) |

Adds the specified increments of time to the _startDateTime_ and returns a date and time value. You can select a [process calendar](Process_Calendar_Settings.html) to ensure the return value falls within the specified working days and time.

 |
| Date and Time | [calisworkday()](/suite/help/25.3/fnc_date_and_time_calisworkday.html) |

This returns whether or not the given Date and Time is a work day, according to the calendar defined for the system.

 |
| Date and Time | [calisworktime()](/suite/help/25.3/fnc_date_and_time_calisworktime.html) |

This returns whether or not the given Date and Time is within working hours, according to the calendars defined for the system.

 |
| Date and Time | [calworkdays()](/suite/help/25.3/fnc_date_and_time_calworkdays.html) |

This returns the actual number of work days between two Date and Times (both inclusive), according to the calendar defined for the system.

 |
| Date and Time | [calworkhours()](/suite/help/25.3/fnc_date_and_time_calworkhours.html) |

This returns the actual number of work hours between two given Date and Times (both inclusive), according to the calendar defined for the system.

 |
| Date and Time | [date()](/suite/help/25.3/fnc_date_and_time_date.html) |

Converts text into data accepted by the date data type and functions that require date parameters.

 |
| Date and Time | [datetime()](/suite/help/25.3/fnc_date_and_time_datetime.html) |

Converts the given Date and Time into a serial number that holds the Date and Time data type.

 |
| Date and Time | [datevalue()](/suite/help/25.3/fnc_date_and_time_datevalue.html) |

Converts a value to a date.

 |
| Date and Time | [day()](/suite/help/25.3/fnc_date_and_time_day.html) |

Returns the day of the month from the date specified.

 |
| Date and Time | [dayofyear()](/suite/help/25.3/fnc_date_and_time_dayofyear.html) |

Returns the day number within the year.

 |
| Date and Time | [days360()](/suite/help/25.3/fnc_date_and_time_days360.html) |

Returns the number of days between two dates, based on a 360-day calendar.

 |
| Date and Time | [daysinmonth()](/suite/help/25.3/fnc_date_and_time_daysinmonth.html) |

Returns the number of days in the given month in the given year.

 |
| Date and Time | [edate()](/suite/help/25.3/fnc_date_and_time_edate.html) |

Returns the date that is the number of months before or after the given starting date.

 |
| Date and Time | [eomonth()](/suite/help/25.3/fnc_date_and_time_eomonth.html) |

Returns the date for the last day of the month that is the number of months before or after the given starting date.

 |
| Date and Time | [gmt()](/suite/help/25.3/fnc_date_and_time_gmt.html) |

Subtracts a time zone offset from a given Date and Time.

 |
| Date and Time | [hour()](/suite/help/25.3/fnc_date_and_time_hour.html) |

Returns the hour from the time specified.

 |
| Date and Time | [intervalds()](/suite/help/25.3/fnc_date_and_time_intervalds.html) |

Converts the given time components into an equivalent time duration, an interval expressing days to seconds. This value is treated as a duration (Joe ran the marathon in 3 hours and 23 minutes), not a point in time.

 |
| Date and Time | [isleapyear()](/suite/help/25.3/fnc_date_and_time_isleapyear.html) |

Returns a Boolean value for whether the given year is a leap year.

 |
| Date and Time | [lastndays()](/suite/help/25.3/fnc_date_and_time_lastndays.html) |

Returns a Boolean value for whether the given date is within the last given number of days.

 |
| Date and Time | [local()](/suite/help/25.3/fnc_date_and_time_local.html) |

This is a Date and Time _addition_ function, adding time zone offset to given Date and Time.

 |
| Date and Time | [milli()](/suite/help/25.3/fnc_date_and_time_milli.html) |

This function returns the millisecond portion of a timestamp or the decimal number that represents 1 millisecond in days.

 |
| Date and Time | [minute()](/suite/help/25.3/fnc_date_and_time_minute.html) |

Returns the minute from the time specified.

 |
| Date and Time | [month()](/suite/help/25.3/fnc_date_and_time_month.html) |

Returns the month from the specified date.

 |
| Date and Time | [networkdays()](/suite/help/25.3/fnc_date_and_time_networkdays.html) |

Returns the number of working days between two specified dates.

 |
| Date and Time | [now()](/suite/help/25.3/fnc_date_and_time_now.html) |

Returns the current Date and Time as a serial number.

 |
| Date and Time | [second()](/suite/help/25.3/fnc_date_and_time_second.html) |

Returns the seconds from the specified time.

 |
| Date and Time | [a!subtractDateTime()](/suite/help/25.3/fnc_date_and_time_subtractdatetime.html) |

Subtracts the specified increments of time from the _startDateTime_ and returns a date and time value. You can select a [process calendar](Process_Calendar_Settings.html) to ensure the return value falls within the specified working days and time.

 |
| Date and Time | [time()](/suite/help/25.3/fnc_date_and_time_time.html) |

Converts the given time into an equivalent time value.

 |
| Date and Time | [timevalue()](/suite/help/25.3/fnc_date_and_time_timevalue.html) |

Converts the given time into an equivalent interval.

 |
| Date and Time | [timezone()](/suite/help/25.3/fnc_date_and_time_timezone.html) |

Returns the default offset in minutes from GMT, which is generally the process initiator's time zone.

 |
| Date and Time | [timezoneid()](/suite/help/25.3/fnc_date_and_time_timezoneid.html) |

Returns the time zone ID for the current context.

 |
| Date and Time | [today()](/suite/help/25.3/fnc_date_and_time_today.html) |

Returns the current day in GMT.

 |
| Date and Time | [weekday()](/suite/help/25.3/fnc_date_and_time_weekday.html) |

Returns the day of the week of the specified date.

 |
| Date and Time | [weeknum()](/suite/help/25.3/fnc_date_and_time_weeknum.html) |

Returns the week number within the year for the given date using a given methodology.

 |
| Date and Time | [workday()](/suite/help/25.3/fnc_date_and_time_workday.html) |

Returns the date the given number of workdays before or after the given date.

 |
| Date and Time | [year()](/suite/help/25.3/fnc_date_and_time_year.html) |

Returns the year for the date specified.

 |
| Date and Time | [yearfrac()](/suite/help/25.3/fnc_date_and_time_yearfrac.html) |

Determine the fraction of the year.

 |
| Informational | [a!defaultValue()](/suite/help/25.3/fnc_informational_a_defaultvalue.html) |

Returns a default value when the specified value is null or empty. When there are multiple _default_ parameters, each parameter is evaluated in order and the first non-null and non-empty _default_ will be returned. `Null`, `""`, and `{}` are all considered null or empty values.

 |
| Informational | [a!keys()](/suite/help/25.3/fnc_informational_a_keys.html) |

Returns the keys of the provided map, dictionary, CDT, or record.

 |
| Informational | [a!listType()](/suite/help/25.3/fnc_informational_a_listtype.html) |

Returns the list type number for a given type number.

 |
| Conversion | [cast()](/suite/help/25.3/fnc_informational_cast.html) |

Converts a value from its existing type to the specified type.

 |
| Informational | [error()](/suite/help/25.3/fnc_informational_error.html) |

Raises an error with the given message, used for invalidating execution.This function never returns a value.

 |
| Informational | [infinity()](/suite/help/25.3/fnc_informational_infinity.html) |

Represents a constant number that stands for positive infinity or a negative infinity if you negate the value.

 |
| Informational | [isinfinite()](/suite/help/25.3/fnc_informational_isinfinite.html) |

Tests given numbers against positive and negative infinity, returning `true` if the number is infinite, `false` if the number is not infinite.

 |
| Informational | [isnegativeinfinity()](/suite/help/25.3/fnc_informational_isnegativeinfinity.html) |

Tests given numbers against negative infinity, returning true if number is negative infinity, false if number is not negative infinity.

 |
| Informational | [a!isNotNullOrEmpty()](/suite/help/25.3/fnc_informational_isnotnullorempty.html) |

Returns `false` if the value is null, an empty string, or an empty list. Otherwise returns `true`.

 |
| Informational | [isnull()](/suite/help/25.3/fnc_informational_isnull.html) |

Returns true if value is null, false otherwise.

 |
| Informational | [a!isNullOrEmpty()](/suite/help/25.3/fnc_informational_isnullorempty.html) |

Returns `true` if the value is null, an empty string, or an empty list. Otherwise returns `false`.

 |
| Informational | [ispositiveinfinity()](/suite/help/25.3/fnc_informational_ispositiveinfinity.html) |

Tests given numbers against positive infinity, returning `true` if the numbers are positive infinity, false if the numbers are not positive infinity.

 |
| Informational | [nan()](/suite/help/25.3/fnc_informational_nan.html) |

Constant number representing Not A Number, generally used for comparison to the result of mathematical operations with invalid inputs. This is equivalent to a decimal (floating point) null, but nan() is provided for more explicit usage in mathematical expressions.

 |
| Informational | [null()](/suite/help/25.3/fnc_informational_null.html) |

Returns a null value.

 |
| Informational | [runtimetypeof()](/suite/help/25.3/fnc_informational_runtimetypeof.html) |

Returns the numerical representation of an Appian system data type when used during process execution.

 |
| Informational | [typename()](/suite/help/25.3/fnc_informational_typename.html) |

Returns the type name of a given type number.

 |
| Informational | [typeof()](/suite/help/25.3/fnc_informational_typeof.html) |

Returns the type number of a given value.

 |
| Logical | [and()](/suite/help/25.3/fnc_logical_and.html) |

Returns `true` if all inputs are `true`; returns `false` if at least one input is false.

 |
| Logical | [choose()](/suite/help/25.3/fnc_logical_choose.html) |

Evaluates the `choice` argument at the given `index` and returns the result.

 |
| Logical | [false()](/suite/help/25.3/fnc_logical_false.html) |

Returns the Boolean value `false`.

 |
| Logical | [if()](/suite/help/25.3/fnc_logical_if.html) |

Returns `valueIfTrue` if `condition` returns `true`; returns `valueIfFalse` otherwise.

 |
| Logical | [not()](/suite/help/25.3/fnc_logical_not.html) |

Converts `true` into `false`, and `false` into `true`.

 |
| Logical | [or()](/suite/help/25.3/fnc_logical_or.html) |

Returns `true` if any inputs are `true`; returns `false` if all inputs are `false`.

 |
| Logical | [true()](/suite/help/25.3/fnc_logical_true.html) |

Returns the Boolean value `true`.

 |
| Looping | [a!forEach()](/suite/help/25.3/fnc_looping_a_foreach.html) |

Evaluates an expression for each item in a list and returns a new array of the results.

 |
| Looping | [all()](/suite/help/25.3/fnc_looping_all.html) |

Calls a rule or function that returns either true or false for each item in list, asks the question, "Do all items in this list yield true for this rule/function?", and returns true if all items in list evaluates to true.

 |
| Looping | [any()](/suite/help/25.3/fnc_looping_any.html) |

Calls a rule or function that returns either true or false for each item in list by asking the question, "Do any items in this list yield true for this rule/function?" with the intent to discover if any item(s) yield true.

 |
| Looping | [apply()](/suite/help/25.3/fnc_looping_apply.html) |

Calls a rule or function for each item in a list, and provides any contexts specified.

 |
| Looping | [filter()](/suite/help/25.3/fnc_looping_filter.html) |

Calls a predicate for each item in a list and returns any items for which the returned value is true.

 |
| Looping | [merge()](/suite/help/25.3/fnc_looping_merge.html) |

Takes a variable number of lists and merges them into a single list (or a list of lists) that is the size of the largest list provided.

 |
| Looping | [none()](/suite/help/25.3/fnc_looping_none.html) |

Calls a rule or function that returns either true or false for each item in list by asking the question, "Do all items in this list yield false for this rule/function?" with the intent to discover if no items will yield true.

 |
| Looping | [reduce()](/suite/help/25.3/fnc_looping_reduce.html) |

Calls a rule or function for each item in a list, passing the result of each call to the next one, and returns the value of the last computation.

 |
| Looping | [reject()](/suite/help/25.3/fnc_looping_reject.html) |

Calls a predicate for each item in a list, rejects any items for which the returned value is true, and returns all remaining items.

 |
| Mathematical | [abs()](/suite/help/25.3/fnc_mathematical_abs.html) |

Returns the absolute value(s) of the specified number(s).

 |
| Mathematical | [ceiling()](/suite/help/25.3/fnc_mathematical_ceiling.html) |

Rounds the number up to the nearest multiple of the specified significance.

 |
| Mathematical | [combin()](/suite/help/25.3/fnc_mathematical_combin.html) |

Calculates the number of unique ways to choose m elements from a pool of n elements.

 |
| Mathematical | [a!distanceBetween()](/suite/help/25.3/fnc_mathematical_distanceBetween.html) |

Returns the distance between the two locations (in meters) specified by the start and end coordinates. The distance is calculated by tracing a line between the two locations that follows the curvature of the Earth, and measuring the length of the resulting arc.

 |
| Mathematical | [e()](/suite/help/25.3/fnc_mathematical_e.html) |

Returns the value of e.

 |
| Mathematical | [enumerate()](/suite/help/25.3/fnc_mathematical_enumerate.html) |

Returns a list of integer numbers from 0 through n-1.

 |
| Mathematical | [even()](/suite/help/25.3/fnc_mathematical_even.html) |

Rounds positive numbers up to nearest even integer and negative numbers down to the nearest even integer.

 |
| Mathematical | [exp()](/suite/help/25.3/fnc_mathematical_exp.html) |

Returns e raised to the specified power.

 |
| Mathematical | [fact()](/suite/help/25.3/fnc_mathematical_fact.html) |

The factorial of specified number.

 |
| Mathematical | [factdouble()](/suite/help/25.3/fnc_mathematical_factdouble.html) |

The double factorial of specified number (mathematically n!!).

 |
| Mathematical | [floor()](/suite/help/25.3/fnc_mathematical_floor.html) |

Rounds the number down to the nearest multiple of the specified significance.

 |
| Mathematical | [int()](/suite/help/25.3/fnc_mathematical_int.html) |

Rounds the specified number down to the nearest integer.

 |
| Mathematical | [ln()](/suite/help/25.3/fnc_mathematical_ln.html) |

Returns the natural logarithm of the specified number, which is the power that e must be raised to in order to equal the specified number.

 |
| Mathematical | [log()](/suite/help/25.3/fnc_mathematical_log.html) |

Returns the logarithm of the number using the specified base, which is the power that base must be raised to, to equal the number.

 |
| Mathematical | [mod()](/suite/help/25.3/fnc_mathematical_mod.html) |

Returns the remainder of dividend when divided by the divisor.

 |
| Mathematical | [mround()](/suite/help/25.3/fnc_mathematical_mround.html) |

Rounds the number to the specified multiple.

 |
| Mathematical | [multinomial()](/suite/help/25.3/fnc_mathematical_multinomial.html) |

Adds the specified integers and divides the factorial of the sum by the factorial of the individual numbers.

 |
| Mathematical | [odd()](/suite/help/25.3/fnc_mathematical_odd.html) |

Rounds positive numbers up to nearest odd integer and negative numbers down to the nearest odd integer.

 |
| Mathematical | [pi()](/suite/help/25.3/fnc_mathematical_pi.html) |

Returns the value of pi.

 |
| Mathematical | [power()](/suite/help/25.3/fnc_mathematical_power.html) |

Returns the base number raised to the specified exponent.

 |
| Mathematical | [product()](/suite/help/25.3/fnc_mathematical_product.html) |

Returns the product of the specified numbers.

 |
| Mathematical | [quotient()](/suite/help/25.3/fnc_mathematical_quotient.html) |

Returns the quotient when numerator is divided by the denominator, and drops the remainder.

 |
| Mathematical | [rand()](/suite/help/25.3/fnc_mathematical_rand.html) |

Returns a random number between 0 and 1 based on an even probability distribution, which is seeded by the transaction time.

 |
| Mathematical | [round()](/suite/help/25.3/fnc_mathematical_round.html) |

Rounds off the number to the specified number of digits.

 |
| Mathematical | [rounddown()](/suite/help/25.3/fnc_mathematical_rounddown.html) |

Rounds the number down to the specified digit.

 |
| Mathematical | [roundup()](/suite/help/25.3/fnc_mathematical_roundup.html) |

Rounds the number up to the specified digit.

 |
| Mathematical | [sign()](/suite/help/25.3/fnc_mathematical_sign.html) |

Returns the number divided by its absolute value, which is 1 if the number is positive and -1 if the number is negative.

 |
| Mathematical | [sqrt()](/suite/help/25.3/fnc_mathematical_sqrt.html) |

Returns the square root(s) of the specified number(s).

 |
| Mathematical | [sqrtpi()](/suite/help/25.3/fnc_mathematical_sqrtpi.html) |

Multiplies the number by pi, then returns the square root of the product.

 |
| Mathematical | [sum()](/suite/help/25.3/fnc_mathematical_sum.html) |

Returns the sum of the specified numbers.

 |
| Mathematical | [sumsq()](/suite/help/25.3/fnc_mathematical_sumsq.html) |

Squares each number and then returns the sum of the squares.

 |
| Mathematical | [trunc()](/suite/help/25.3/fnc_mathematical_trunc.html) |

Truncates a decimal number to the specified number of places after the decimal point.

 |
| Scripting | [offsetFromGMT()](/suite/help/25.3/fnc_scripting_offsetfromgmt.html) |

Returns the offset (in minutes) from GMT of the given date and timezone.

 |
| Scripting | [property()](/suite/help/25.3/fnc_scripting_property.html) |

This function extracts a bean's property under a given key name (the `nameOfProperty` parameter).

 |
| Array | [contains()](/suite/help/25.3/fnc_set_contains.html) |

Checks whether an array contains the value.

 |
| Array | [difference()](/suite/help/25.3/fnc_set_difference.html) |

Returns the values in array1 and not in array2.

 |
| Array | [intersection()](/suite/help/25.3/fnc_set_intersection.html) |

Returns only those elements that appear in all of the given arrays.

 |
| Array | [symmetricdifference()](/suite/help/25.3/fnc_set_symmetricdifference.html) |

Returns the values from two integer arrays that are not in both arrays.

 |
| Array | [union()](/suite/help/25.3/fnc_set_union.html) |

Returns all unique elements from the given arrays.

 |
| System | [a!jsonPath()](/suite/help/25.3/fnc_system_a_jsonpath.html) |

Finds information in a JSON string. JSONPath is used to navigate through elements and attributes in a JSON string.

 |
| System | [a!map()](/suite/help/25.3/fnc_system_map.html) |

Creates a map of values (Any Type) with each value stored at the corresponding string key. Values stored in maps are not wrapped in variants.

 |
| Text | [char()](/suite/help/25.3/fnc_text_char.html) |

Converts a number into its Unicode character equivalent.

 |
| Text | [charat()](/suite/help/25.3/fnc_text_charat.html) |

Returns the character at given index within specified string.

 |
| Text | [clean()](/suite/help/25.3/fnc_text_clean.html) |

Returns the specified text, minus any characters not considered printable. Printable characters are the 95 printable ASCII characters plus three special characters: BACKSPACE (0x08), TAB (0x09), and NEWLINE (0x0a).

 |
| Text | [cleanwith()](/suite/help/25.3/fnc_text_cleanwith.html) |

Returns the specified text, minus any characters not in the list of valid characters.

 |
| Text | [code()](/suite/help/25.3/fnc_text_code.html) |

Converts the text into Unicode integers.

 |
| Text | [concat()](/suite/help/25.3/fnc_text_concat.html) |

Concatenates the specified strings into one string, without a separator.

 |
| Text | [exact()](/suite/help/25.3/fnc_text_exact.html) |

Compares two given text strings in a case-sensitive manner, returning true only if they are exactly the same.

 |
| Text | [extract()](/suite/help/25.3/fnc_text_extract.html) |

Returns the value (or values, if the text contains multiple delimited values) between the delimiters from the given text.

 |
| Text | [extractanswers()](/suite/help/25.3/fnc_text_extractanswers.html) |

Returns an array of strings that respond to the questions provided.

 |
| Text | [find()](/suite/help/25.3/fnc_text_find.html) |

Searches the text for a particular substring, returning the positional index of the first character of the first match.

 |
| Text | [fixed()](/suite/help/25.3/fnc_text_fixed.html) |

Rounds the specified number off to a certain number of decimals and returns it as text, with optional commas.

 |
| Text | [a!formatPhoneNumber()](/suite/help/25.3/fnc_text_formatphonenumber.html) |

Returns a formatted phone number based on the _outputFormat_ parameter. The _countryCode_ parameter, or any country code provided in the phone number, will verify that the phone number is valid. If the phone number does not match any provided country code, the phone number will be returned as invalid and unformatted.

 |
| Text | [initials()](/suite/help/25.3/fnc_text_initials.html) |

Returns only the uppercase characters from within the given text.

 |
| Text | [insertkey()](/suite/help/25.3/fnc_text_insertkey.html) |

Returns the provided text, wrapped with the specified delimiters.

 |
| Text | [insertkeyval()](/suite/help/25.3/fnc_text_insertkeyval.html) |

Returns the provided key-value pairs, wrapped with the specified delimiters.

 |
| Text | [insertquestions()](/suite/help/25.3/fnc_text_insertquestions.html) |

Returns an array of questions with a ==EOQ== at the end, returning a single string that can be parsed with `extractanswers()` function after it has been filled in by a user.

 |
| Text | [a!isPhoneNumber()](/suite/help/25.3/fnc_text_isphonenumber.html) |

Returns _true_ if the _phoneNumber_ parameter contains a valid phone number, otherwise returns _false_. A phone number is considered valid if its area code is valid, the length is appropriate based upon the value of the _countryCode_ parameter, and the number after the area code is not all zeroes. This function supports countries and area codes for international numbers.

 |
| Text | [keyval()](/suite/help/25.3/fnc_text_keyval.html) |

Returns the value(s) associated with the given key(s).

 |
| Text | [left()](/suite/help/25.3/fnc_text_left.html) |

Returns a specified number of characters from the text, starting from the first character.

 |
| Text | [leftb()](/suite/help/25.3/fnc_text_leftb.html) |

Returns a specified number of bytes from the text, starting from the first byte.

 |
| Text | [len()](/suite/help/25.3/fnc_text_len.html) |

Returns the length in characters of the text.

 |
| Text | [lenb()](/suite/help/25.3/fnc_text_lenb.html) |

Returns the length in bytes of the text.

 |
| Text | [like()](/suite/help/25.3/fnc_text_like.html) |

Tests whether a string of text is like a given pattern.

 |
| Text | [lower()](/suite/help/25.3/fnc_text_lower.html) |

Converts all characters in the text into lowercase (Unicode case folding).

 |
| Text | [mid()](/suite/help/25.3/fnc_text_mid.html) |

Returns a substring from the middle of the specified text.

 |
| Text | [midb()](/suite/help/25.3/fnc_text_midb.html) |

Returns a substring from the middle of the specified text.

 |
| Text | [padleft()](/suite/help/25.3/fnc_text_padleft.html) |

Pads text with spaces on the left so that it is a certain length.

 |
| Text | [padright()](/suite/help/25.3/fnc_text_padright.html) |

Pads text with spaces on the right so that it is a certain length.

 |
| Text | [proper()](/suite/help/25.3/fnc_text_proper.html) |

Converts each character in the text into proper case, meaning it will capitalize the first first letter of every word and convert the rest into lowercase.

 |
| Text | [replace()](/suite/help/25.3/fnc_text_replace.html) |

Replaces a piece of the specified text with new text.

 |
| Text | [replaceb()](/suite/help/25.3/fnc_text_replaceb.html) |

Replaces a piece of the specified text with new text.

 |
| Text | [rept()](/suite/help/25.3/fnc_text_rept.html) |

Concatenates the text to itself a specified number of times and returns the result.

 |
| Text | [resource()](/suite/help/25.3/fnc_text_resource.html) |

Retrieves a string of translated text appropriate for the current user, according to their language preference, by matching a given key with text.

 |
| Text | [right()](/suite/help/25.3/fnc_text_right.html) |

Returns a specified number of characters from the text, starting from the last character.

 |
| Text | [search()](/suite/help/25.3/fnc_text_search.html) |

Searches the text for the given, case insensitive substring. Returns the one-based positional index of the first character of the first match. Returns zero if the substring is not found.

 |
| Text | [searchb()](/suite/help/25.3/fnc_text_searchb.html) |

Searches the text for a particular substring, returning the positional index of the first byte of the first match.

 |
| Text | [soundex()](/suite/help/25.3/fnc_text_soundex.html) |

Returns the soundex code, used to render similar sounding names via phonetic similarities into identical four (4) character codes.

 |
| Text | [split()](/suite/help/25.3/fnc_text_split.html) |

Splits text into a list of text elements, delimited by the text specified in the separator.

 |
| Text | [strip()](/suite/help/25.3/fnc_text_strip.html) |

Returns the provided text, minus any characters considered printable. Printable characters are the 95 printable ASCII characters plus three special characters: BACKSPACE (0x08), TAB (0x09), and NEWLINE (0x0a).

 |
| Text | [stripHtml()](/suite/help/25.3/fnc_text_striphtml.html) |

Changes the provided HTML string into a plain text string by converting `<br>`, `<p>`, and `<div>` to line breaks, stripping all other tags, and converting escaped characters into their display values.

 |
| Text | [stripwith()](/suite/help/25.3/fnc_text_stripwith.html) |

The function returns the provided text, minus any characters on the list of invalid characters.

 |
| Text | [substitute()](/suite/help/25.3/fnc_text_substitute.html) |

Substitutes a specific part of a string with another string.

 |
| Text | [toHtml()](/suite/help/25.3/fnc_text_tohtml.html) |

Converts a string in plain text to the HTML equivalent that displays appropriately in an HTML page, by replacing reserved characters with their escaped counterparts.

 |
| Text | [trim()](/suite/help/25.3/fnc_text_trim.html) |

Removes all unnecessary spaces from the text.

 |
| Text | [upper()](/suite/help/25.3/fnc_text_upper.html) |

Converts all letters in the text into uppercase.

 |
| Text | [value()](/suite/help/25.3/fnc_text_value.html) |

Converts text representing a number into an actual number or datetime.

 |
| Trigonometry | [acos()](/suite/help/25.3/fnc_trigonometry_acos.html) |

Returns the arccosine(s) of the specified number(s) in radians.

 |
| Trigonometry | [acosh()](/suite/help/25.3/fnc_trigonometry_acosh.html) |

Returns the hyperbolic arccosine(s) of the specified number(s) in radians.

 |
| Trigonometry | [asin()](/suite/help/25.3/fnc_trigonometry_asin.html) |

Returns the arcsine(s) of the specified number(s) in radians.

 |
| Trigonometry | [asinh()](/suite/help/25.3/fnc_trigonometry_asinh.html) |

Returns the hyperbolic arcsine(s) of the specified number(s) in radians.

 |
| Trigonometry | [atan()](/suite/help/25.3/fnc_trigonometry_atan.html) |

Returns the arctangent(s) of the specified number(s) in radians.

 |
| Trigonometry | [atanh()](/suite/help/25.3/fnc_trigonometry_atanh.html) |

Returns the hyperbolic arctangent(s) of the specified number(s) in radians.

 |
| Trigonometry | [cos()](/suite/help/25.3/fnc_trigonometry_cos.html) |

Returns the cosine(s) of the specified number(s).

 |
| Trigonometry | [cosh()](/suite/help/25.3/fnc_trigonometry_cosh.html) |

Returns the hyperbolic cosine(s) of the specified number(s).

 |
| Trigonometry | [degrees()](/suite/help/25.3/fnc_trigonometry_degrees.html) |

Converts the measure(s) of the specified angle(s) from radians to degrees.

 |
| Trigonometry | [radians()](/suite/help/25.3/fnc_trigonometry_radians.html) |

Converts the measure of the specified angle from degrees to radians.

 |
| Trigonometry | [sin()](/suite/help/25.3/fnc_trigonometry_sin.html) |

Returns the sine(s) of the specified number(s).

 |
| Trigonometry | [sinh()](/suite/help/25.3/fnc_trigonometry_sinh.html) |

Returns the hyperbolic sine(s) of the specified number(s).

 |
| Trigonometry | [tan()](/suite/help/25.3/fnc_trigonometry_tan.html) |

Returns the tangent(s) of the specified number(s).

 |
| Trigonometry | [tanh()](/suite/help/25.3/fnc_trigonometry_tanh.html) |

Returns the hyperbolic tangent(s) of the specified number(s).

 |

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Compatible |

Can only be used to create a custom record field that [evaluates in real time](custom-record-fields.html#prodlink-real-time-evaluations). It cannot be used anywhere else in your application.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...