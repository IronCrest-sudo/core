# Gate 1 - version gate (vortaforge/core).
# Called first from macroengine:setup. Declares that this pack's entry points may run.
# Every tick entry point starts with:
#   execute unless score #macroengine.version vortaforge.gate matches 1 run return 0
# so a pack that was not (re)loaded through its own load function stays inert.
# This is a safeguard against partial or mixed installs, not a sandbox: anyone
# who can edit the pack can remove the line. Real enforcement belongs in a Fabric mod.
scoreboard objectives add vortaforge.gate dummy
scoreboard players set #macroengine.version vortaforge.gate 1
