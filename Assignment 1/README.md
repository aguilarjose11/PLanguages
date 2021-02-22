Assignment 1
============

**Due**: March 1st, 2021

To Do:
------

1. (1.5 pts) Recognize programming arithmetic operators.
2. (2 pts) Modify T_ID rule to recognize identifiers that follow these rules:
  * First character is `@`.
  * Second character **must** be a letter.
  * Remaining Characters can be any _case-insensitive_ letter, digit, or underscore symbol.
3. (2.5 pts) Recognize floating points using a rule that returns a L_FLOAT token such that:
  * Number either has `+` or `-` or neither.
  * Integer and fractional values are separated by `.`.
  * Both integer and fractional values have at least one digit:
    - `<Integer>.<Fractional>`
4. (1.5 pts) Create rules to recognize these keywords and replace with correspontind token from tokens.h (`K_<keyword>`)
  * `integer`
  * `float`
  * `foreach`
  * `begin`
  * `end`
  * `repeat`
  * `until`
  * `while`
  * `declare`
  * `if`
  * `then`
  * `print`


### Important Notes

- Do not change Driver file nor tokens.h files.


Addenda
-------


[More](./cs3323-a1.pdf)


Jose E. Aguilar Escamilla -- The University of Oklahoma -- Spring 2021.