execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$team modify $(team) color $(color)
$data modify storage macroengine:engine teams.$(team).color set value "$(color)"
