# Runtime config (`core/config/*`)

Five keys in `macroengine:engine config`. Each one changes what the engine does; there are no
informational keys.

| Key | Type | Default | Effect |
|---|---|---|---|
| `tick_rate` | int, min 1 | 1 | The engine tick (`core/tick`) runs once every N game ticks |
| `hud_rate` | int, min 1 | 2 | HUD systems run once every N engine ticks |
| `admin_rate` | int, min 1 | 4 | Admin systems run once every N engine ticks |
| `log_level` | int, 0-4 | 3 | 0 off, 1 error, 2 warn, 3 info, 4 debug (`systems/log/*`) |
| `reload_warn` | byte | 1b | Warn online players on `/reload` when data would be lost |

Values outside the range are clamped by `core/config/apply`, so a bad value cannot stop the tick.
`systems/log/set_level` writes `log_level` back into the config, so the two never disagree.

## Functions

| Function | Input | Result |
|---|---|---|
| `core/config/set` | `macroengine:engine config_in {key, value}` | applies at once; returns 1, or 0 for an unknown key |
| `core/config/get` | `config_in.key` | `macroengine:output result`; returns 1 / 0 |
| `core/config/apply` | none | copies the config to the scores the engine reads |
| `core/config/reset` | none | restores the defaults and applies them |
| `core/config/list` | none | prints the config to `@s` |
| `core/config/ensure` | none | fills and applies missing keys (called by `core/tick`) |

```mcfunction
data modify storage macroengine:engine config_in set value {key:"hud_rate",value:5}
function macroengine:core/config/set

data modify storage macroengine:engine config_in set value {key:"tick_rate"}
function macroengine:core/config/get
tellraw @s {"storage":"macroengine:output","nbt":"result","interpret":false}
```
