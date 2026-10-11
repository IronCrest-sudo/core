# Store module (`api/store/*`)

Storage-based variables, per-player values and multilingual message templates. Everything
is a **plain string or number in command storage**; nothing here builds a text component and
nothing is sent to chat. It replaces `api/placeholder/*`, which is deprecated (see the end).

All inputs go through `macroengine:store` (`in.*`), results come back in the same storage
(`out.*`) and, for `render`, also in `macroengine:output store.string`. Names are checked with
`systems/validate/safe_name` while they are still data, before they reach a macro line, so
untrusted text (chat, books, signs) cannot inject commands.

Names: 1-64 characters, letters/digits/`_`/`.`/`-`. A dot nests (`shop.price` is `g.shop.price`).
Use ASCII names; non-ASCII letters pass the check but may not work in an NBT path.

## Variables

| Function | Input (`in.`) | Output |
|---|---|---|
| `api/store/set` | `name`, `value` (any NBT) | return 1 / 0 |
| `api/store/default` | `name`, `value` (only if not set) | return 1 / 0 |
| `api/store/get` | `name` | `out.value`, return 1 / 0 |
| `api/store/has` | `name` | return 1 / 0 |
| `api/store/remove` | `name` | return 1 / 0 |
| `api/store/add` | `name`, `by` (int, default 1) | `out.value`, return = new value |

`api/store/player/*` has the same functions. They act on the executor (`execute as <player> run ...`);
the key is derived from the player's UUID. Non-player executors get return 0.

```mcfunction
data modify storage macroengine:store in set value {name:"kills",by:1}
execute as @a[tag=winner] run function macroengine:api/store/player/add
```

`add` is for counters (ints). Do not use it on string values.

## Message templates

```mcfunction
# define once (per language)
data modify storage macroengine:store in set value {name:"shop.welcome",lang:"en_us",value:"Hi %player%, you have %p:coins% coins."}
function macroengine:api/store/text/define
data modify storage macroengine:store in set value {name:"shop.welcome",lang:"tr_tr",value:"Merhaba %player%, %p:coins% paran var."}
function macroengine:api/store/text/define

# use
data modify storage macroengine:store in set value {name:"shop.welcome"}
execute as @p run function macroengine:api/store/render
# -> macroengine:store out.string  (plain string)
```

Language order: `in.lang`, the executor's own `lang` (`api/store/player/set` with name `lang`), the global
`lang` (`api/store/set`), then `en_us`.

Tokens in a template: `%name%` (from `in.args`), `%g:name%`, `%p:name%`, `%score:objective%`, `%player%`,
`%nl%`, `%%`. Unknown or unclosed tokens stay as written. Values are not parsed again. Compound and list
values are rejected (render returns 0) so raw NBT never leaks into a message.

You can also pass `in.template` instead of `in.name` to render a one-off string.

## Migrating from `api/placeholder/*`

| Old | New |
|---|---|
| `register_string`, `register_text`, `register_storage` | `api/store/set` + `%g:name%` |
| `register_score` | `%score:objective%` in the template |
| `register_alias`, `register_array`, `register_component`, `register_selector` | no direct equivalent; values are plain strings |
| `parse` | `api/store/render` (string instead of a component list) |
| `send`, `send_to`, `send_all`, `actionbar` | render, then show the string yourself, e.g. `tellraw @s {"storage":"macroengine:store","nbt":"out.string"}` |
| `to_plain` | `api/store/render` with `%player%` / `%score:...%` |

The old functions still work and print a one-time admin notice (re-show it with
`data remove storage macroengine:store dep`). `api/title/*_p` still uses the old module and is not changed here.
