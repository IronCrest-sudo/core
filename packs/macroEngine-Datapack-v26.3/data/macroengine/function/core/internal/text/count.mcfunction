# macroengine:core/internal/text/count
# INPUT macroengine:text: s, needle.  RETURN number of non-overlapping occurrences.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
data modify storage macroengine:text n set value 0
return run function macroengine:core/internal/text/find
