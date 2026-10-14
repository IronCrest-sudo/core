# Convenience macro wrapper for: /give <target> <item>[components] <count>
# Required storage keys: target, item, components, count. Use components:"" when omitted.
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$give $(target) $(item)$(components) $(count)
