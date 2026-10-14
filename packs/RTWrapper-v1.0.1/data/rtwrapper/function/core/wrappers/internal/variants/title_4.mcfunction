# RTWrapper generated 4-parameter macro variant for /title.
# Parameters: targets, action, title, fade_in
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$title $(targets) $(action) $(title) $(fade_in)
