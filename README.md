## SYNOPSIS
Returns the first repeating letter in a string. Avg time complexity : O(N)

## DESCRIPTION
Reads a parameter and adds each character to an array after checking if the character is already part of the array.
If it is, it prints the character and it's poition in the string. 
This method was chosen because we wouldn't need to loop through and fully
populate the array and then loop again to check against each character in the array. 
(I googled like a good dev for best avg time complexity.)

## PARAMETERS 
InputString
The string you would need to input for the function ot run.

## EXAMPLES
Find-FirstRecurringLetter -InputString "sejfhyba"

Find-FirstRecurringLetter -InputString "'Please hire John, he's good and always willing to go the extra mile! Also, really wants to work with you!' -Sentient Readme File"
