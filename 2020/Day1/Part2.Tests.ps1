. "$PSScriptRoot\Functions.ps1"

Describe 'Part 2 Tests' {
    Context 'should solve sample 1' {
        $entries = @(
            1721,
            979,
            366,
            299,
            675,
            1456
        )
        
        (Part2 -ExpenseReportEntries $entries -SearchingValue 2020) | Should -BeExactly 241861950
    }
}