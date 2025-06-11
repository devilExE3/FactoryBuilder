tellraw @s {"storage": "profiling:times", "nbt": "list[0]"}
data remove storage profiling:times list[0]
execute if data storage profiling:times list[0] run function code:_print_profile_data