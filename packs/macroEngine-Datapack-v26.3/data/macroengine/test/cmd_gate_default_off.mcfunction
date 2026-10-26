# Ward test (CI only, see packs/DailyBonus/data/dailybonus/test/
# load_registers_constant.mcfunction). Not valid vanilla syntax: `assert`
# and `await` come from the Ward mod, so Mecha lint skips this folder.
# @max_ticks 40

# The pack starts closed (gate 2); an operator approval opens it and runs
# the load pipeline, which must apply the config defaults - including
# dynamic commands being OFF until an operator enables them.
function macroengine:gate/approve
await score #dynamic_cmd macroengine.tick_flags matches 0
