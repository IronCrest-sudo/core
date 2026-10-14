# RTWrapper generated 3-parameter macro variant for /random.
# Parameters: action, range, sequence
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$random $(action) $(range) $(sequence)
