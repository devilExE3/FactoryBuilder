summon chest_minecart ~ ~ ~ {Invulnerable:true,Silent:true,NoGravity:true,CustomDisplayTile:true,DisplayState:{Name:"air"},Tags:["shop","shop.this"],CustomName:'{"text":"Shop"}',CustomNameVisible:false}
scoreboard players operation @n[type=chest_minecart,tag=shop.this,distance=..0.01] id = @s id

tag @n[type=chest_minecart,tag=shop.this,distance=..0.01] remove shop.this

tag @s add holding_shop
scoreboard players set @s shop_page 0