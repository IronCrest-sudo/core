# guikit — storage-authored GUI engine

Menus are defined in `storage guikit:lib` (saved with the world, survives `/reload`),
not written as `.mcfunction` files. A chest minecart is the screen.

There is **no in-game editor anymore** — the old operator editor, the dialog-based
slot builder and the in-game "browse published menus" list have all been removed.
Author menus by writing directly to `storage guikit:lib` (see "How it is stored"
below), then point `/trigger guikit.open` at the one you want with
`storage guikit:cfg default_menu`.

Target: Minecraft Java **26.3** (`min_format` / `max_format` **121**).

**New widget kinds:**

- `indicator` — a non-clickable icon whose item/name/lore swap based on which range
  a score falls into (`states:[{matches, item, name, lore}, ...]`). Falls back to the
  widget's own item/name/lore when no state matches.
- `random` — rolls a weighted reward from `rewards:[{weight, cmd, msg}, ...]`
  (ties resolved by list order; `cmd` can be `function ns:name` to run several commands).

**Already present:**

- Ten `guikit:cond` button conditions: `biome`, `health`, `food`, `air`,
  `on_fire`, `on_ground`, `sneaking`, `sprinting`, `swimming`, and `fall_flying`.
- Page links configurable as tabs, which highlight when their target page is open.
- `/trigger guikit.last` — reopens the most recent menu you opened (survives `/reload`; cleared
  automatically if that menu gets deleted).
- `/trigger guikit.close` — closes your own open menu immediately. For map makers there is also
  `function guikit:api/close_all` to close every open menu at once.
- `dimension` and `weather` button conditions.

The cart / click / redraw engine underneath is unchanged — only the authoring layer moved.

## Install

Drop this pack in the world's `datapacks` folder and `/reload`.
On first load it seeds a published **Welcome** menu (`guikit:m1`) and points
`storage guikit:cfg default_menu` at it, so there is something to open immediately.

## Play

Anyone (no operator permission):

```
/trigger guikit.open
```

Opens whichever menu `storage guikit:cfg default_menu` names. Change it with:

```
/data modify storage guikit:cfg default_menu set value "ns:id"
```

Joining players are told once. Two more player triggers:

```
/trigger guikit.last    # reopen the most recent menu you opened
/trigger guikit.close   # close your own open menu right now
```

`guikit.last` remembers the last menu you opened. If that menu is deleted, the pointer
is cleaned up and the trigger says so instead of opening nothing.

## Author a menu

There is no in-game builder. Write the menu into `storage guikit:lib` directly — see
"How it is stored" below for the exact shape, and `data/guikit/function/runtime/seed.mcfunction`
for a complete worked example (the seeded Welcome menu).

| Widget kind | Effect |
| --- | --- |
| `tell` | Icon only, not clickable; shows a message when clicked |
| `give` | Gives an item, optional fixed cost |
| `close` | Closes the menu |
| `page` | Goes to another page |
| `tab` | Goes to a page and highlights while that page is open |
| `open` | Opens another menu |
| `toggle` | Per-player on/off |
| `add` | Per-player counter, clamped or wrapping |
| `sound` | Plays a built-in sound, only the clicking player hears it |
| `link` | Clickable `https` link in chat; the menu closes so chat is visible |
| `cmd` | Stored command, see trust model below |
| `meter` | Clickable progress bar (several cells, set a score by clicking a cell) |
| `indicator` | Non-clickable icon that swaps by score range — new, see above |
| `random` | Rolls a weighted reward — new, see above |

Cost / cooldown / confirm rules on a `cmd` widget are read from `storage guikit:btn defs`
(see `internal/btn/click.mcfunction` for the exact keys).

## Button conditions (`guikit:cond`)

Hand-written button packs (`storage guikit:btn defs`) can gate a button on a condition.
`function guikit:cond/check` reads `storage guikit:cond` and sets `#cond guikit.tmp`:

| Type | Keys | Passes when |
| --- | --- | --- |
| `score` | `obj`, `[min]`, `[max]` | the player's score is in range (unset = fail) |
| `item_count` | `item`, `[min]` | the player carries at least `min` of the item (default 1) |
| `tag` | `tag` | the player has the tag |
| `gamemode` | `mode` | survival / creative / adventure / spectator |
| `advancement` | `adv` | the advancement is done |
| `predicate` | `pred` | the datapack predicate matches |
| `level` | `[min]`, `[max]` | XP level is in range |
| `dimension` | `dim` | the player is in that dimension (any dimension id, e.g. `minecraft:the_nether`) |
| `weather` | `weather` | `clear`, `rain` or `thunder` in the player's dimension |
| `biome` | `biome` | the player's current biome (any biome id, e.g. `minecraft:plains`) |
| `health` | `[min]`, `[max]` | health points (20 = 10 hearts) |
| `food` | `[min]`, `[max]` | hunger points (0–20) |
| `air` | `[min]`, `[max]` | remaining air supply (0–300 ticks) |
| `on_fire` | — | the player is burning |
| `on_ground` | — | the player is on the ground |
| `sneaking` | — | the player is sneaking |
| `sprinting` | — | the player is sprinting |
| `swimming` | — | the player is swimming |
| `fall_flying` | — | the player is elytra-flying |
| `all` / `any` | `of:[...]` | every / at least one element passes (leaf types only) |

`not:1b` inverts any of them. Unknown types fail closed. Range bounds are optional; omitted bounds
default to the full non-negative integer range. `dimension` and `weather` were added in v5; the ten
conditions above were added in v6.

## Other players

A menu cart follows its owner. While anyone else is within 8 blocks, a `minecraft:interaction` stands on the cart (wider and taller than a chest boat or minecart) and takes the right-click. It is not ridden: a passenger sits above the cart, and an interaction's hitbox only grows upward, so it would not cover the click.

- The other player gets “That menu belongs to another player.”
- The owner, if they click while someone is that close, gets “Someone is too close…”. The lock stays up until the other player steps away.
- Taking a widget out anyway does not run the action: each icon is stamped with the owner's id and stripped from anyone else.
- This does not kick a cart that is already open. Vanilla cannot close one player's chest without closing the owner's too. Stolen icons are deleted; the menu still times out.

Container presets: chest, hopper (5 slots), barrel, ender chest, trapped chest, shulker box, copper chest.
Themed chests are still a `chest_minecart` with a different pane and title — Minecraft has no barrel entity to summon.
A hopper menu only has slots 0–4.

Timeout is how long the menu stays open (`timer` field, in ticks).

## Trust model

- Writing to `storage guikit:lib` requires operator / `/data` access — same trust level the
  old editor required, now exercised directly instead of through a dialog UI.
- **Give / message / sound / page / toggle / counter / indicator** do not run arbitrary commands.
- A **cmd** (and **random** reward) widget runs at datapack function permission (default 2),
  **as the clicking player, for any player who can open the menu**. Same trust as a command
  block behind a button. Never source `cmd` text from player input.
- Names, messages and lore must not contain `"` or `\` unescaped — they are plain SNBT/JSON
  text components, shown with `interpret:false`.
- Menu ids are whatever key you give them under `storage guikit:lib menus`. Players never type them.

Backup / inspect:

```
/data get storage guikit:lib
```

## How it is stored

```
storage guikit:lib
  order: ["m1", "m2"]
  menus.m1: {n, name, container, timer, published, pages:[{widgets:[...]}]}
```

`guikit:reg` is still rebuilt every `/reload` (that is the engine). Saved menus are
registered again from `guikit:lib` by `guikit:runtime/register`. Do not `data remove storage guikit:lib`.

`storage guikit:mem` holds small per-player memories (world save): `last.m<pid>` is the menu id
`/trigger guikit.last` reopens. Deleting a menu from `guikit:lib` and re-registering sweeps
the stale pointers on the next open attempt.

## Opening a menu from a command block

```
function guikit:play/open_id {menu:"m1"}
```

`m1` is the generated id (`/data get storage guikit:lib order`).

Closing everything at once (map reset, minigame round end):

```
function guikit:api/close_all
```

## Engine notes (advanced)

`#guikit:register`, `#guikit:fill`, `#guikit:probe`, `#guikit:clear_tags` and `#guikit:on_close`
still exist and are **not** `replace: true`, so another pack can still add a listener.
`#guikit:on_open` runs after the cart is bound and before the first redraw.

Widget helpers (`guikit:widget/*`) are what `guikit:play/draw_one` draws every widget kind with.
Drawn icons also store `own` (the opener's uid) so a stolen stack can be stripped.
A hand-written `#guikit:fill` pack still works beside `storage guikit:lib` menus;
do not clear `guikit:lib` from that pack.

Click detection is still “the widget item landed in the inventory”.
`clear` is filtered by `custom_data~{guikit:{w:1b}}` and only runs after a count.

## Limits

- Not verified in a live 26.3 client. Load the pack and read `latest.log`.
  `mecha` is not a substitute; it does not validate macro lines.
- Icons are item ids, not full stacks (no enchantments copied off the held item).
- Hopper menus: slots 5+ are not shown.
- Command widgets and links are macro-expanded. Quotes or a backslash in a name/message/command
  will fail to parse — write `storage guikit:lib` carefully (vanilla has no command separator).
- Two people editing `storage guikit:lib` at once: last write wins, same as any shared NBT.
- Donkey / mule containers are still registered by the engine and still refused (unchanged).
- `indicator`'s `matches` ranges are not validated against each other — overlapping ranges
  resolve to whichever state comes first in the list.
- `random`'s weights must be positive integers; a non-positive or missing weight is treated as 1.
- The interaction lock is not a substitute for a live 26.3 test. `F3+B` shows the guard box while someone else is within 8 blocks.
- A player who already has the chest open when the guard appears is not force-closed. Do not kill the cart to kick them; that closes the owner as well.
- Click-rule tags are only `vip`, `member`, and `staff`. There is no free-typed tag.
