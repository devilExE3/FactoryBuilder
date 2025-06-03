# calculate plot x / y
data modify storage player player.tiles set value []
function code:storage/save
function code:plots/generate.macro with storage player player.plot

# clear old items
clear @s

# hello thing
loot give @s loot code:blocks/generator/oak
loot give @s loot code:blocks/generator/oak
loot give @s loot code:blocks/conveyor
loot give @s loot code:blocks/conveyor
loot give @s loot code:blocks/sell

tellraw @s [{"text":"Thanks for checking out my silly little game","color":"green"}]
tellraw @s [{"text":"Hope you will like it, and that the number of messages aren't overwhelming owo","color":"green"}]
tellraw @s [{"text":"If your data got reset, I'm sorry ! But there are extreme cases of my code being broken and i have to reset all player data","color":"green"}]