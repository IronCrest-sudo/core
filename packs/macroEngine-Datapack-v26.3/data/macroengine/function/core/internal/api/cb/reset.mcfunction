# macroengine:api/cb/internal/reset
# Scheduled 2t after exec — cleans up the temporary command block.
# Reads coordinates from transient cb_slot storage so reset targets
# the correct location even if run() was called again in the meantime.

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function macroengine:core/internal/api/cb/reset_exec with storage macroengine:engine _cb_last
