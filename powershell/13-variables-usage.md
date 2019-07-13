# Using Variables in PowerShell

## Variables can dynamically change
    $stringVar = '1'  # actual string variable
    $stringVar =  1   # now an integer variable

## Variables are automatically created on first use
    $numVar = 1

## Variables can contain multi-line strings
    $blockVar = @"
    Here's some text

    And here is some text
    @"

## Casting Variables
    $numVar = '1'  # String variable
    [int]$numVar   # Integer variable

