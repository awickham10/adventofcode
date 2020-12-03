. "$PSScriptRoot\Functions.ps1"

$entries = Get-Content -Path "$PSScriptRoot\input.txt"
$part1 = Part1 -Line $entries
Write-Host "Part 1: $($part1.Count)"

$part2 = Part2 -Line $entries
Write-Host "Part 2: $($part2.Count)"