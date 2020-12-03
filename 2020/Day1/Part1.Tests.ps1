. "$PSScriptRoot\Functions.ps1"

Describe 'Part 1 Tests' {
    Context 'should solve sample 1' {
        $entries = @(
            1721,
            979,
            366,
            299,
            675,
            1456
        )
        
        (Part1 -ExpenseReportEntries $entries -SearchingValue 2020) | Should -BeExactly 514579
    }
}