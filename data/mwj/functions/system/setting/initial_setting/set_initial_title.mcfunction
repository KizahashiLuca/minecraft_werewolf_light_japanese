###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Title Hiding Start
title @a times 5 40 15
title @a title ["",{"text":"初期設定時間開始","color":"green","bold":true}]
title @a subtitle ["",{"text":"Setting Start","color":"white","bold":true}]

## Send a Message Added Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light beta-1.5","color":"red","bold":true}]
tellraw @a ["",{"text":"                ","color":"white"},{"text":"Setting Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"\n","color":"white"}]

tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@p[tag=host]","color":"white","bold":true},{"text":" さんは、インベントリを","color":"white"}]
tellraw @a ["",{"text":"  開いて、以下の設定をしてください。","color":"white"}]
tellraw @a ["",{"text":"    ・ゲームモード(勝敗判定)","color":"white"}]
execute if score Time PrevAddedRole matches 1.. run tellraw @a ["",{"text":"    ・追加役職(","color":"white"},{"score":{"name":"Time","objective":"PrevAddedRole"},"color":"white"},{"text":"組)","color":"white"}]
tellraw @a ["",{"text":"    ・制限時間","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players set Time TICK 0
scoreboard players set Time SECOND 64