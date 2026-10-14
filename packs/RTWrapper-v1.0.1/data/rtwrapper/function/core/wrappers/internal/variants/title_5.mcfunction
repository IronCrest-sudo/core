# RTWrapper generated 5-parameter macro variant for /title.
# Parameters: targets, action, title, fade_in, stay
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$title $(targets) $(action) $(title) $(fade_in) $(stay)
