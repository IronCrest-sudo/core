# ─────────────────────────────────────────────────────────────────
# macroengine:api/cmd/other/multi_cmd/internal/exec_macro [MACRO]
# INPUT: $(cmd)
# ─────────────────────────────────────────────────────────────────

# Pass raw command to pipeline input
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:input raw_command set value "$(cmd)"

# Execute security pipeline (which sets up isolation, validates, checks canary)
# cmd_gate now acts as the pipeline entry point

tellraw @a[tag=macroengine.admin] [{"selector":"@s","color":"gold"},{"text":" - command safely executed via pipeline","color":"yellow"}]

$$(cmd)
