execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine events.$(event) append from storage macroengine:engine _uro.src[0]
