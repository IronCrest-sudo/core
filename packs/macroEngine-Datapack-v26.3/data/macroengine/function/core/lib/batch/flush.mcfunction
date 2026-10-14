# ─────────────────────────────────────────────────────────────────
# macroengine:core/lib/batch/flush
# Splits batch jobs across spread_over ticks and adds them to process_queue.
# Jobs per tick: ceil(items / spread_over).
# Batch record is deleted after flush.
#
# INPUT (storage macroengine:input):
# id → batch id
# ─────────────────────────────────────────────────────────────────

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function macroengine:core/internal/core/lib/batch/flush_exec with storage macroengine:input {}
