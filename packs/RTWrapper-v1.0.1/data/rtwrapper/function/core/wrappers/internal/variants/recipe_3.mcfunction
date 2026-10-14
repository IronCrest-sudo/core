# RTWrapper generated 3-parameter macro variant for /recipe.
# Parameters: action, targets, recipe
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$recipe $(action) $(targets) $(recipe)
