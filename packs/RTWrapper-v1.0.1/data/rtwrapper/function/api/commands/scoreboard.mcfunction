# Direct named-parameter API for /scoreboard.
# Parameter order: category, action, subject, objective, value, operation, source, source_objective
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/scoreboard
data remove storage rtwrapper:runtime current.params
