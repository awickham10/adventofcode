. "$PSScriptRoot\Functions.ps1"

$expenseReport = Get-Content -Path "$PSScriptRoot\input.txt"
$part1 = Part1 -ExpenseReportEntries $expenseReport -SearchingValue 2020
Write-Host "Part 1: $part1"

$part2 = Part2 -ExpenseReportEntries $expenseReport -SearchingValue 2020
Write-Host "Part 2: $part2"