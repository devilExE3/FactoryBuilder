execute if entity @n[type=text_display,tag=block.cutter,distance=..0.01] run function code:logic/cutter
execute if entity @n[type=marker,tag=block.furnace,distance=..0.01] run function code:logic/furnace
execute if entity @n[type=text_display,tag=block.washer,distance=..0.01] run function code:logic/washer
execute if entity @n[type=text_display,tag=block.flashbaker,distance=..0.01] run function code:logic/flashbaker
execute if entity @n[type=text_display,tag=block.sonic_zapper,distance=..0.01] run function code:logic/sonic_zapper
execute if entity @n[type=marker,tag=block.explosive_furnace,distance=..0.01] run function code:logic/explosive_furnace

execute if entity @n[type=marker,tag=block.splitter,distance=..0.01] run return run function code:logic/splitter

execute if entity @n[type=#code:block,tag=block.conveyor.n,distance=..0.01] positioned ~ ~ ~-1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return run function code:logic/item.move.n
execute if entity @n[type=#code:block,tag=block.conveyor.s,distance=..0.01] positioned ~ ~ ~1 unless entity @n[type=item_display,tag=item,distance=..0.01] run return run function code:logic/item.move.s
execute if entity @n[type=#code:block,tag=block.conveyor.e,distance=..0.01] positioned ~1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return run function code:logic/item.move.e
execute if entity @n[type=#code:block,tag=block.conveyor.w,distance=..0.01] positioned ~-1 ~ ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return run function code:logic/item.move.w
execute if entity @n[type=#code:block,tag=block.conveyor.u,distance=..0.01] positioned ~ ~1 ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return run function code:logic/item.move.u
execute if entity @n[type=#code:block,tag=block.conveyor.d,distance=..0.01] positioned ~ ~-1 ~ unless entity @n[type=item_display,tag=item,distance=..0.01] run return run function code:logic/item.move.d