# macroengine:core/config/ensure
# Makes sure every runtime config key exists and has been applied. Cheap when nothing is missing
# (five data checks), so core/tick can call it every tick. This covers worlds that were loaded
# by an older version: the engine does not run the load pipeline again for them.
execute if data storage macroengine:engine config.reload_warn if data storage macroengine:engine config.tick_rate if data storage macroengine:engine config.hud_rate if data storage macroengine:engine config.admin_rate if data storage macroengine:engine config.log_level run return 0
function macroengine:config
function macroengine:core/config/apply
