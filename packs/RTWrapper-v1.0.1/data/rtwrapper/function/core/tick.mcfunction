# Disabled by default. Enable with: function rtwrapper:api/autotick/on
# Autotick intentionally processes only one action per tick. Use rtwrapper:api/run
# when you explicitly want to drain the whole queue immediately.
execute unless score #rtwrapper.version vortaforge.gate matches 1 run return 0
execute if score #auto_tick rtw.config matches 1.. run function rtwrapper:core/run/run_next
