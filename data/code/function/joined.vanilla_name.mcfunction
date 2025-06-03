summon item_display ~ ~ ~ {Tags:["playername"]}
loot replace entity @n[type=item_display,tag=playername,distance=..0.01] container.0 loot code:player_head
data modify storage storage player.name set from entity @n[type=item_display,tag=playername,distance=..0.01] item.components."minecraft:profile".name
kill @n[type=item_display,tag=playername,distance=..0.01]