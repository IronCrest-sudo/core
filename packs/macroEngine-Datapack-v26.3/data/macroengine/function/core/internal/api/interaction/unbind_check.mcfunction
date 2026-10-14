execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute unless data storage macroengine:engine _ia_ucur{tag:"$(tag)",func:"$(func)"} run data modify storage macroengine:engine interaction_binds.$(list) append from storage macroengine:engine _ia_ucur
