function Part1 {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [int[]] $ExpenseReportEntries,

        [Parameter(Mandatory)]
        [int] $SearchingValue
    )

    for ($i = 0; $i -lt $ExpenseReportEntries.Length; $i++) {
        $neededValue = $SearchingValue - $ExpenseReportEntries[$i]
        if ($ExpenseReportEntries.Contains($neededValue)) {
            return $neededValue * $ExpenseReportEntries[$i]
        }
    }
}

function Part2 {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [int[]] $ExpenseReportEntries,

        [Parameter(Mandatory)]
        [int] $SearchingValue
    )

    for ($i = 0; $i -lt $ExpenseReportEntries.Length; $i++) {
        $firstValue = $ExpenseReportEntries[$i]
        $firstMaxValue = 2020 - $firstValue

        [int[]]$firstRemainingValues = $ExpenseReportEntries | Where-Object { $_ -le $firstMaxValue }
        for ($j = 0; $j -lt $firstRemainingValues.Length; $j++) {
            $secondValue = $firstRemainingValues[$j]

            $neededValue = $firstMaxValue - $secondValue
            if ($firstRemainingValues.Contains($neededValue)) {
                return $firstValue * $secondValue * $neededValue
            }
        }
    }
}