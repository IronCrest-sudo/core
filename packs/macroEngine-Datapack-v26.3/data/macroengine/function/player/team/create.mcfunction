execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$team add $(team)
$data modify storage macroengine:engine teams.$(team) set value {color:"white",friendly_fire:"true",see_friendly_invisibles:"false"}
