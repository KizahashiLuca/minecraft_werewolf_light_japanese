###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: beta-1.6
###############################

## Title Hiding Start
title @a times 5 40 15
title @a title ["",{"text":"初期設定時間 開始","color":"green","bold":true}]
title @a subtitle ["",{"text":"Setting Start","color":"white","bold":true}]

## Send a Message Added Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light beta-1.6","color":"red","bold":true}]
tellraw @a ["",{"text":"  - Minecraft version 1.","color":"green","bold":true},{"score":{"name":"#MWL","objective":"Version"},"color":"green","bold":true}]
tellraw @a ["",{"text":" ","color":"white"},{"text":"Setting Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"\n","color":"white"}]

tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@p[tag=Host]","color":"white","bold":true},{"text":" さんは、インベントリを","color":"white"}]
tellraw @a ["",{"text":"  開いて、以下の設定をしてください。","color":"white"}]
tellraw @a ["",{"text":"    ・潜伏時間","color":"white"}]
tellraw @a ["",{"text":"    ・発光時間","color":"white"}]
tellraw @a ["",{"text":"    ・制限時間","color":"white"}]
tellraw @a ["",{"text":"    ・ゲームモード(人狼勝敗条件)","color":"white"}]
tellraw @a ["",{"text":"    ・追加アイテム","color":"white"}]
execute if score #MWL PrevAddedRole matches 1.. run tellraw @a ["",{"text":"    ・追加役職(","color":"white"},{"score":{"name":"#MWL","objective":"PrevAddedRole"},"color":"white"},{"text":"組)","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]
