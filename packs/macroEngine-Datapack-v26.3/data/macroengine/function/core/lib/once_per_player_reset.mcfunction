# ─────────────────────────────────────────────────────────────────
# macroengine:core/lib/once_per_player_reset
# Deletes the once_per_player record — function can run again.
#  Girdi : $(player), $(key)
# ─────────────────────────────────────────────────────────────────

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data remove storage macroengine:engine once_per_player.$(player).$(key)
