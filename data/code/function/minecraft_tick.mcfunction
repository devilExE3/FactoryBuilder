# calculate tps
execute store result score #MSPT math run worldborder get
scoreboard players remove #MSPT math 59998000
# average out mspt
scoreboard players operation #avg_MSPT math += #MSPT math
scoreboard players add #avg_COUNT math 1
worldborder set 59998000 0
worldborder set 59999000 1

# scoreboard animations
# TODO