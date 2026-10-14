# ─────────────────────────────────────────────────────────────────
# macroengine:core/lib/batch/cancel
# Cancels a batch that has not been flushed.
# Items already flushed and queued cannot be cancelled
# (pulling from process_queue is not supported — macroengine design constraint).
#
# INPUT (storage macroengine:input):
# id → batch id
# ─────────────────────────────────────────────────────────────────

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function macroengine:core/internal/core/lib/batch/cancel_exec with storage macroengine:input {}
