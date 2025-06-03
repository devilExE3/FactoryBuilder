# tag @s add item.updatecount
# data modify block 29999999 -63 0 front_text.messages[0] set value '{"score": {"name": "@n[tag=item.updatecount]","objective": "count"}}'
# data modify entity @s CustomName set from block 29999999 -63 0 front_text.messages[0]
# tag @s remove item.updatecount
data modify entity @s CustomName set value '"-"'