execute as @s[tag=block.conveyor] run data modify storage temp this.id set value "conveyor"
execute as @s[tag=block.chute] run data modify storage temp this.id set value "chute"
execute as @s[tag=block.elevator] run data modify storage temp this.id set value "elevator"
execute as @s[tag=block.sell] run data modify storage temp this.id set value "sell"

execute as @s[tag=block.cutter] run data modify storage temp this.id set value "cutter"
execute as @s[tag=block.furnace] run data modify storage temp this.id set value "furnace"
execute as @s[tag=block.crafter_2] run data modify storage temp this.id set value "crafter_2"
execute as @s[tag=block.crafter_3] run data modify storage temp this.id set value "crafter_3"

execute as @s[tag=block.generator] run function code:plots/save.tile.backbone.generator