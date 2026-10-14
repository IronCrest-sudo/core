# Direct named-parameter API for /playsound.
# Parameter order: sound, source, targets, pos, volume, pitch, min_volume
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/playsound
data remove storage rtwrapper:runtime current.params
