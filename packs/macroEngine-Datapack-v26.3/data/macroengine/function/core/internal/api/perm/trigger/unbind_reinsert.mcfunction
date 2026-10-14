execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine perm_triggers.$(name) append from storage macroengine:engine _pt_unbind[0]
