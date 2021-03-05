
Assignment 2
============

For this assignment, we will create a fully functional parser.


Assignment Structure
--------------------

The assignments provides us with:

* [A scanner](scanner.yy)
  - Similar to Assignment 1. **Do not change**
* [A parser](grammar.y)
  - Contains the grammar rules for the parser. **Will be the focuss of the assignment**
* [A driver program](driver.c)
  - Helps in creating the final executable. **Do not change**
* [A makefile script](Makefile)
  - Helps in building the project for testing. **See instructions for Mac users**
* [Instructions](cs3323-a2)
  - Duh, instructions. Jose Highlighted some of the important stuff.
* [A directory of example code and test inputs](inputs/)
  - Super important to better understand the code. This folder contains the code for which we shall be parsing for. Notice the convention: 
    * ``` regex 
    aspect (expr|for|if|read|repeat|while|write)
    DIGIT  [0-9]
    {aspect}{DIGIT}_(pass|fail).smp
    ``` 
    which its also:
    ``` regex
    (expr|for|if|read|repeat|while|write)[0-9]_(pass|fail).smp
    ```
    * Each file contains the code that tests for each aspect (for, repeat, etc) and gives us whether the parser should accept the input program (pass or fail).