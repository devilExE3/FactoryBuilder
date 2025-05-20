setblock ~2 ~1 ~2 dark_oak_sign[rotation=6]
data modify block ~2 ~1 ~2 front_text.messages[1] set value '{"text":"Plot owned by","color":"white"}'
$data modify block ~2 ~1 ~2 front_text.messages[2] set value '{"text":"$(lastKnownName)","color":"white"}'
data modify block ~2 ~1 ~2 front_text.messages[3] set value '{"text":"Online","color":"green"}'