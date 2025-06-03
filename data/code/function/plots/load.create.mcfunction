fill ~ ~ ~ ~31 ~ ~31 grass_block
fill ~2 ~ ~2 ~29 ~ ~29 polished_andesite
fill ~3 ~ ~3 ~28 ~ ~28 stone
setblock ~2 ~1 ~2 dark_oak_sign[rotation=6]
data modify block ~2 ~1 ~2 front_text.messages[1] set value '{"text":"Plot owned by","color":"white"}'
execute if data entity @s bukkit run function code:plots/load.create.macro with entity @s bukkit
execute unless data entity @s bukkit run data modify block ~2 ~1 ~2 front_text.messages[3] set value '{"text":"non-bukkit server","color":"gray"}'