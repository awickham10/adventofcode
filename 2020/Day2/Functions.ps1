<#

.SYNOPSIS
Returns valid passwords.

#>
function Part1 {
    param (
        [string[]] $Line
    )

    foreach ($string in $Line) {
        if ($string -match '(\d+)-(\d+) ([a-z]): (\w+)') {
            $minOccurrences = $Matches[1]
            $maxOccurrences = $Matches[2]
            $character = $Matches[3]
            $password = $Matches[4]

            $numCharacters = ([RegEx]::Matches($password, $character)).Count
            if ($numCharacters -ge $minOccurrences -and $numCharacters -le $maxOccurrences) {
                $password
            }
        }
    }
}

function Part2 {
    param (
        [string[]] $Line
    )

    foreach ($string in $Line) {
        if ($string -match '(\d+)-(\d+) ([a-z]): (\w+)') {
            $firstCharacterPosition = [int]$Matches[1]
            $secondCharacterPosition = [int]$Matches[2]
            $character = $Matches[3]
            $passwordArray = $Matches[4].ToCharArray()

            if (($passwordArray[$firstCharacterPosition - 1] -eq $character) -xor ($passwordArray[$secondCharacterPosition - 1] -eq $character)) {
                $password
            }
        }
    }
}