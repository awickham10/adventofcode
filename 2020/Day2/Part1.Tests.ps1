. "$PSScriptRoot\Functions.ps1"

Describe 'Part 1 Tests' {
    Context 'should solve sample 1' {
        $entries = @(
            '1-3 a: abcde',
            '1-3 b: cdefg',
            '2-9 c: ccccccccc'
        )
        
        (Part1 -Line $entries).Count | Should -BeExactly 2
    }
}