fill ~ ~ ~ ~15 ~ ~15 grass_block
fill ~1 ~ ~1 ~14 ~ ~14 polished_andesite
fill ~2 ~ ~2 ~13 ~ ~13 stone
setblock ~1 ~1 ~1 dark_oak_sign[rotation=6]
data modify block ~1 ~1 ~1 front_text.messages[1] set value '{"text":"Plot owned by","color":"white"}'
$data modify block ~1 ~1 ~1 front_text.messages[2] set value '{"text":"$(name)","color":"white"}'
$data modify block ~1 ~1 ~1 front_text.messages[3] set value '[{"text":"Plot ID ","color": "aqua"},{"score":{"name": "$(name)","objective": "id"},"color": "aqua","bold": true}]'