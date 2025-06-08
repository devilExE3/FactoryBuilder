# calculate price
scoreboard players set #price math 0
function code:logic/sell.prices

# multiply price
scoreboard players operation #n numeral = @s count
function numeral:mul

function code:logic/sell.macro with entity @n[type=marker,tag=block.sell,distance=..0.01] data

kill @s
# force update surrounding items
function code:logic/item.moved