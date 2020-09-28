<# readme/help region
.SYNOPSIS
Returns the first repeating letter in a string. Avg time complexity : O(N)
.DESCRIPTION
Reads a parameter and adds each character to an array after checking if the character is already part of the array.
If it is, it prints the character and it's poition in the string. 
This method was chosen because we wouldn't need to loop through and fully
populate the array and then loop again to check against each character in the array. 
(I googled like a good dev for best avg time complexity.)

.PARAMETER InputString
The string you would need to input for the function ot run.

.EXAMPLE
Find-FirstRecurringLetter -InputString "sejfhyba"
Find-FirstRecurringLetter -InputString "'Please hire John, he's good and always willing to go the extra mile! Also, really wants to work with you!' -Sentient Script"

#>

Function Find-FirstRecurringLetter {

[CmdletBinding()]
param (
    [Parameter(Mandatory=$true,
                HelpMessage="Please enter a valid string.")] 
    [string]$InputString
    )

#$InputString=Read-Host "Please enter a string" 
[System.Collections.ArrayList]$chararray = @() #Makes array a system.object type which lets us add to array without getting an error about a 'fixed size array'

$i=0
While($i -lt $InputString.Length){ #can use basically any loop - for, do while, do until
    $char=$InputString[$i]
        if($null -ne ($chararray | ? {$char -match $_})){
            $pos=++$i
            Write-Host "The first repeating character in '$InputString' is: $char, at position $pos"
            break
        }
        else {
            $chararray.Add($char)
            $i++
        }
}
if ($i -eq $InputString.Length) {Write-Host "No recurring letters in '$InputString'."}
}


# Example usage:
Find-FirstRecurringLetter -InputString "sejfhyba"
Find-FirstRecurringLetter -InputString "'Please hire John, he's good, always willing to go the extra mile! Also, really wants to work with you!' -Sentient Script"


