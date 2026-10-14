# RTWrapper generated 2-parameter macro variant for /random.
# Parameters: action, range
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$random $(action) $(range)
