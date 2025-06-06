execute if score @s money matches ..999 store result storage temp money.int int 1 run scoreboard players get @s money
execute if score @s money matches ..999 run return run function code:update_list.macro with storage temp money

data modify storage temp money.mul set value "k"
scoreboard players operation #int math = @s money
scoreboard players operation #int math /= #100 math
scoreboard players operation #frac math = #int math
scoreboard players operation #frac math %= #10 math
scoreboard players operation #int math /= #10 math
execute if score #int math matches ..999 store result storage temp money.int int 1 run scoreboard players get #int math
execute if score #int math matches ..999 store result storage temp money.frac int 1 run scoreboard players get #frac math
execute if score #int math matches ..999 run return run function code:update_list.macro.mul with storage temp money

data modify storage temp money.mul set value "M"
scoreboard players operation #int math /= #100 math
scoreboard players operation #frac math = #int math
scoreboard players operation #frac math %= #10 math
scoreboard players operation #int math /= #10 math
execute if score #int math matches ..999 store result storage temp money.int int 1 run scoreboard players get #int math
execute if score #int math matches ..999 store result storage temp money.frac int 1 run scoreboard players get #frac math
execute if score #int math matches ..999 run return run function code:update_list.macro.mul with storage temp money

data modify storage temp money.mul set value "B"
scoreboard players operation #int math /= #100 math
scoreboard players operation #frac math = #int math
scoreboard players operation #frac math %= #10 math
scoreboard players operation #int math /= #10 math
execute store result storage temp money.int int 1 run scoreboard players get #int math
execute store result storage temp money.frac int 1 run scoreboard players get #frac math
execute run return run function code:update_list.macro.mul with storage temp money