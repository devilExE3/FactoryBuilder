playerlist @s header set <gradient:#ffaa00:#ffe500><bold>Fᴀᴄᴛᴏʀʏ</gradient><gradient:#aaaaaa:#e5e5e5><bold>Bᴜɪʟᴅᴇʀ</gradient><newline><gradient:#ff5555:#ff2222><italic>Dev branch</gradient>
execute unless score @s money.3 matches 1.. run scoreboard players set @s money.3 1
tellraw @s {"text": "\u2139 You joined the DevBranch. Here you can test out farm layouts / see upcoming content.","color": "gold"}
tellraw @s {"text": "\u2139 Also beware that there may be un-announced reloads at any time.","color": "gold"}