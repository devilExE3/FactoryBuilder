execute if items entity @s hotbar.8 * unless items entity @s hotbar.8 nether_star run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["inventory.drop"],PickupDelay:1s}
execute if items entity @s hotbar.8 * unless items entity @s hotbar.8 nether_star run item replace entity @n[type=item,tag=inventory.drop,distance=..1] container.0 from entity @s hotbar.8
execute if items entity @s hotbar.8 * unless items entity @s hotbar.8 nether_star run data modify entity @n[type=item,tag=inventory.drop,distance=..1] Owner set from entity @s UUID
item replace entity @s hotbar.8 with nether_star[custom_name='{"text":"Shop","color":"white","italic":false}',lore=['{"text":"Hold in your hand and right click","color":"gray","italic":false}'],consumable={animation:"none",consume_seconds:0,has_consume_particles:false,sound:"minecraft:ambient.basalt_deltas.additions"}]

execute if items entity @s hotbar.7 * unless items entity @s hotbar.7 netherite_pickaxe unless items entity @s hotbar.7 barrier run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["inventory.drop"],PickupDelay:1s}
execute if items entity @s hotbar.7 * unless items entity @s hotbar.7 netherite_pickaxe unless items entity @s hotbar.7 barrier run item replace entity @n[type=item,tag=inventory.drop,distance=..1] container.0 from entity @s hotbar.7
execute if items entity @s hotbar.7 * unless items entity @s hotbar.7 netherite_pickaxe unless items entity @s hotbar.7 barrier run data modify entity @n[type=item,tag=inventory.drop,distance=..1] Owner set from entity @s UUID
execute as @s[tag=in_plot] run loot replace entity @s hotbar.7 loot code:tool
execute as @s[tag=!in_plot] run item replace entity @s hotbar.7 with barrier[custom_name='{"text":""}',lore=['{"text":"You need to be in your plot","color":"white","italic":false}','{"text":"to use the Destroy Tool","color":"white","italic":false}']]

execute if items entity @s weapon.offhand * unless items entity @s weapon.offhand netherite_pickaxe unless items entity @s weapon.offhand barrier unless items entity @s weapon.offhand nether_star run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["inventory.drop"],PickupDelay:1s}
execute if items entity @s weapon.offhand * unless items entity @s weapon.offhand netherite_pickaxe unless items entity @s weapon.offhand barrier unless items entity @s weapon.offhand nether_star run item replace entity @n[type=item,tag=inventory.drop,distance=..1] container.0 from entity @s weapon.offhand
execute if items entity @s weapon.offhand * unless items entity @s weapon.offhand netherite_pickaxe unless items entity @s weapon.offhand barrier unless items entity @s weapon.offhand nether_star run data modify entity @n[type=item,tag=inventory.drop,distance=..1] Owner set from entity @s UUID
execute if items entity @s weapon.offhand * run item replace entity @s weapon.offhand with air

kill @e[type=item,distance=..3,predicate=code:illegal]
kill @e[type=item,distance=..3,predicate=code:shop_item]
execute if items entity @s player.cursor #code:illegal run item replace entity @s player.cursor with air
execute as @s[tag=!in_plot] run clear @s netherite_pickaxe