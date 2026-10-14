# macroengine:core/lib/batch/internal/flush_queue_cmd [MACRO]
# INPUT: $(delay) — cmd is NBT-copied from _bfl_cur, not macro-spliced

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine queue append value {cmd:"", delay:$(delay)}
data modify storage macroengine:engine queue[-1].cmd set from storage macroengine:engine _bfl_cur.cmd
