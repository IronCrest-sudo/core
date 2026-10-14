# RTWrapper generated 2-parameter macro variant for /time.
# Parameters: action, value
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$time $(action) $(value)
