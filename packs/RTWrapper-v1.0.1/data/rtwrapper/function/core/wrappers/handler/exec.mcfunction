# Macro dispatch. `cmd` must match an internal wrapper dispatcher file name.
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$function rtwrapper:core/wrappers/internal/$(cmd)
