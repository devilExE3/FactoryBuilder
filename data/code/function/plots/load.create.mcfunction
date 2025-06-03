fill ~ ~ ~ ~31 ~ ~31 grass_block
fill ~2 ~ ~2 ~29 ~ ~29 polished_andesite
fill ~3 ~ ~3 ~28 ~ ~28 stone
setblock ~2 ~1 ~2 dark_oak_sign[rotation=6]
data modify block ~2 ~1 ~2 front_text.messages[1] set value '{"text":"Plot owned by","color":"white"}'
$data modify block ~2 ~1 ~2 front_text.messages[2] set value '{"text":"$(name)","color":"white"}'
$data modify block ~2 ~1 ~2 front_text.messages[3] set value '[{"text":"Plot ID ","color": "aqua"},{"score":{"name": "$(name)","objective": "id"},"color": "aqua","bold": true}]'