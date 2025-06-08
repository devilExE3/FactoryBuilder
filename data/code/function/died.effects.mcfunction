
data modify entity @s abilities.mayfly set value 1b

# effects
effect clear @s
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s fire_resistance infinite 0 true
attribute @s minecraft:attack_damage base set 0
attribute @s minecraft:burning_time base set 0