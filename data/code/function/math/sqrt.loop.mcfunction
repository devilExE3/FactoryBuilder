# check if n @ math is < i @ math squared
scoreboard players operation #i_sq math = #i math
scoreboard players operation #i_sq math *= #i math
execute if score #n math < #i_sq math run scoreboard players operation #sqrt math = #i math
execute if score #n math >= #i_sq math run scoreboard players add #i math 1
execute if score #n math >= #i_sq math run function code:math/sqrt.loop