execute as @s[tag=block.conveyor] run data modify storage temp this.id set value "conveyor"
execute as @s[tag=block.chute] run data modify storage temp this.id set value "chute"
execute as @s[tag=block.elevator] run data modify storage temp this.id set value "elevator"
execute as @s[tag=block.sell] run data modify storage temp this.id set value "sell"

execute as @s[tag=block.cutter] run data modify storage temp this.id set value "cutter"
execute as @s[tag=block.furnace] run data modify storage temp this.id set value "furnace"
execute as @s[tag=block.crafter_2] run data modify storage temp this.id set value "crafter_2"
execute as @s[tag=block.crafter_3] run data modify storage temp this.id set value "crafter_3"
execute as @s[tag=block.washer] run data modify storage temp this.id set value "washer"
execute as @s[tag=block.flashbaker] run data modify storage temp this.id set value "flashbaker"
execute as @s[tag=block.sonic_zapper] run data modify storage temp this.id set value "sonic_zapper"
execute as @s[tag=block.crusher] run data modify storage temp this.id set value "crusher"
execute as @s[tag=block.enchanter] run data modify storage temp this.id set value "enchanter"
execute as @s[tag=block.limiter] run data modify storage temp this.id set value "limiter"
execute as @s[tag=block.splitter] run data modify storage temp this.id set value "splitter"
execute as @s[tag=block.air_conveyor] run data modify storage temp this.id set value "air_conveyor"
execute as @s[tag=block.air_sell] run data modify storage temp this.id set value "air_sell"
execute as @s[tag=block.explosive_furnace] run data modify storage temp this.id set value "explosive_furnace"
execute as @s[tag=block.crafter_5] run data modify storage temp this.id set value "crafter_5"

execute as @s[tag=block.generator] run function code:plots/save.tile.backbone.generator