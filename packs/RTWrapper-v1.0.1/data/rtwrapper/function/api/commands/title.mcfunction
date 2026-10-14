# Direct named-parameter API for /title.
# Parameter order: targets, action, title, fade_in, stay, fade_out
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/title
data remove storage rtwrapper:runtime current.params
