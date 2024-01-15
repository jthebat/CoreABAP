CLASS zcl_ti_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ti_hello_world IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( 'Hello SandBox!!' ).
* Data Objects with Built-in Types **********************************************************************
" comment/uncomment the following declarations and check the output DATA variable TYPE string.
* DATA variable TYPE i.
* DATA variable TYPE d.
* DATA variable TYPE c LENGTH 10.
* DATA variable TYPE n LENGTH 10.
* DATA variable TYPE p LENGTH 8 DECIMALS 2.
* Output **********************************************************************
*out->write( 'Result with Initial Value)' ). out->write( variable ).
*out->write( '---------' ).
*variable = '19891109'.
*out->write( 'Result with Value 19891109' ).
*out->write( variable ).
*out->write( '---------' ).

* Example 1: Local Types **********************************************************************
* Comment/Uncomment the following lines to change the type of my_var
* TYPES my_type TYPE p LENGTH 3 DECIMALS 2.
* TYPES my_type TYPE i .
* TYPES my_type TYPE string.
* TYPES my_type TYPE n length 10.
* Variable based on local type
* DATA my_variable TYPE my_type.
* out->write( `my_variable (TYPE MY_TYPE)` ).
* out->write( my_variable ).

* Example 2: Global Types **********************************************************************
* Variable based on global type .
" Place cursor on variable and press F2 or F3
*DATA airport TYPE /dmo/airport_id VALUE 'FRA'.
*out->write( `airport (TYPE /DMO/AIRPORT_ID )` ).
*out->write( airport ).

* Example 3: Constants **********************************************************************
*CONSTANTS c_text TYPE string VALUE `Hello World`.
*CONSTANTS c_number TYPE i VALUE 12345.
"Uncomment this line to see syntax error ( VALUE is mandatory)
*constants c_text2 type string.
*out->write( `c_text (TYPE STRING)` ).
*out->write( c_text ).
*out->write( '---------' ).
*out->write( `c_number (TYPE I )` ).
*out->write( c_number ).
*out->write( `---------` ).

* Example 4: Literals **********************************************************************
*out->write( '12345 ' ). "Text Literal (Type C)
*out->write( `12345 ` ). "String Literal (Type STRING)
*out->write( 12345 ).
"Number Literal (Type I) "uncomment this line to see syntax error (no number literal with digits)
*out->write( 12345.67 ).

* Example 5: Implicit Type Conversions **********************************************************************
*DATA my_int    TYPE i.
*DATA my_pack   TYPE p LENGTH 8 DECIMALS 1.
*DATA my_char10 TYPE c LENGTH 10 VALUE 'abcdefghij'.
*DATA my_char4  TYPE c LENGTH 4.
*DATA my_string TYPE string.

"Implicit type conversions
*my_int = '1234'.
*out->write( my_int ).   " C -> I
*my_pack = '-273.15'.
*out->write( my_pack ).  " C -> P
*my_char4 = my_char10.
*out->write( my_char4 ). " C -> C       Potential information loss
*my_string = 'hello    '.
*out->write( my_string ). " C -> STRING  Ignore trailing blanks

* Example 6: Resetting Variables **********************************************************************
*DATA my_var1 TYPE i.
*DATA my_var2 TYPE i VALUE 1234.
*DATA my_var3 TYPE string.
*
*my_var1 = my_var2.
*my_var3 = 'Hello World'.
*
*CLEAR my_var1.
*CLEAR my_var2.
*CLEAR my_var3.
*out->write( my_var1 ).  "Value is reset to 0.
*out->write( my_var2 ).  "Value is reset to 0.
*out->write( my_var3 ).  "String is now empty again.

* Example 7: Inline Declarations in Value Assignments **********************************************************************

"Explicit Declaration with DATA Statement
*DATA my_var1 TYPE string.
*DATA my_var2 TYPE i.
*DATA my_var3 TYPE i.
*DATA my_var4 TYPE i.
*
*my_var1 = 'hello World'.
*my_var2 = 17.
*my_var3 = my_var2.
*my_var4 = my_var2 + my_var3.

"Inline Declaration with DATA Statement
*DATA(my_var1) = 'Hello World'.
*DATA(my_var2) = 17.
*DATA(my_var3) = my_var2.
*DATA(my_var4) = my_var2 + my_var3.
*out->write( my_var1 ).
*out->write( my_var2 ).
*out->write( my_var3 ).
*out->write( my_var4 ).
DATA(my_var5) = 18.




  ENDMETHOD.
ENDCLASS.
