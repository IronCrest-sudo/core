# macroengine:core/internal/tui/button_send [INTERNAL, MACRO]
# Sends one clickable button to @s. The ONLY macro argument is $(fn), which tui/button has already
# checked with systems/validate/function_id while it was still data. Label and hover text come from
# storage (macroengine:tui l / h) as plain strings and are never pasted into this line.
$tellraw @s ["",{"text":"[ ","color":"dark_gray"},{"storage":"macroengine:tui","nbt":"l","interpret":false,"plain":true,"color":"green","click_event":{"action":"run_command","command":"/function $(fn)"},"hover_event":{"action":"show_text","value":{"storage":"macroengine:tui","nbt":"h","interpret":false,"plain":true,"color":"gray"}}},{"text":" ]","color":"dark_gray"}]
