# from n @ data -> x @ data, y @ data
function code:math/sqrt
scoreboard players operation nhat math = sqrt math
scoreboard players operation sqrt math %= .2 math
execute if score sqrt math matches 1 run scoreboard players remove nhat math 1
scoreboard players operation nhat_sq math = nhat math
scoreboard players operation nhat_sq math *= nhat math
scoreboard players operation nhat_sq+nhat math = nhat_sq math
scoreboard players operation nhat_sq+nhat math += nhat math
execute if score nhat_sq math <= n math if score n math <= nhat_sq+nhat math run function code:math/id_to_coords.1
execute if score nhat_sq math <= n math if score n math <= nhat_sq+nhat math run return 0
scoreboard players operation arg1 math = nhat_sq math
scoreboard players operation arg1 math += nhat math
scoreboard players operation arg1 math += nhat math
scoreboard players add arg1 math 1
execute if score nhat_sq+nhat math < n math if score n math <= arg1 math run function code:math/id_to_coords.2
execute if score nhat_sq+nhat math < n math if score n math <= arg1 math run return 0
scoreboard players operation arg2 math = arg1 math
scoreboard players operation arg2 math += nhat math
scoreboard players add arg2 math 1
execute if score arg1 math < n math if score n math <= arg2 math run function code:math/id_to_coords.3
execute if score arg1 math < n math if score n math <= arg2 math run return 0
scoreboard players set x math 0
scoreboard players operation x math -= nath math
scoreboard players operation x math /= .2 math
scoreboard players remove x math 1
scoreboard players operation y math = x math
scoreboard players operation y math += n math
scoreboard players operation y math -= arg2 math