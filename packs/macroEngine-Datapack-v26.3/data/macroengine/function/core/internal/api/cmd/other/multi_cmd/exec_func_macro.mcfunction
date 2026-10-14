# ─────────────────────────────────────────────────────────────────
# macroengine:api/cmd/other/multi_cmd/internal/exec_func_macro [MACRO]
# INPUT: $(func)
# ─────────────────────────────────────────────────────────────────

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$function $(func)
