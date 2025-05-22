scoreboard players add .last_id id 1
scoreboard players operation @s id = .last_id id

loot give @s loot code:blocks/generator/oak
loot give @s loot code:blocks/generator/oak
loot give @s loot code:blocks/conveyor
loot give @s loot code:blocks/conveyor
loot give @s loot code:blocks/sell

tellraw @s [{"text":"Thanks for checking out my silly little game","color":"green"}]
tellraw @s [{"text":"Hope you will like it, and that the number of messages aren't overwhelming owo","color":"green"}]