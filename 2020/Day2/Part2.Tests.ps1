. "$PSScriptRoot\Functions.ps1"

Describe 'Part 2 Tests' {
    Context 'should solve sample 1' {
        $entries = @(
            '1-3 a: abcde',
            '1-3 b: cdefg',
            '2-9 c: ccccccccc'
        )
        
        [string[]] $results = Part2 -Line $entries
        $results.Count | Should -BeExactly 1
        $results | Should -Contain 'abcde'
    }
}