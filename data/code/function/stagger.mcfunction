execute store result storage temp stagger.tick int 1 run scoreboard players get #tick stagger
function code:stagger.macro with storage temp stagger
scoreboard players add #tick stagger 1
execute if score #tick stagger matches ..19 run schedule function code:stagger 1t replace
execute if score #tick stagger matches 20.. run scoreboard players set #tick stagger 0