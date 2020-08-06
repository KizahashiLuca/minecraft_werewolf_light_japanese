###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Title Hiding Start
title @a times 5 40 15
title @a title ["",{"text":"初期設定時間 開始","color":"green","bold":true}]
title @a subtitle ["",{"text":"Setting Start","color":"white","bold":true}]

## Send a Message Added Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.2.1","color":"red","bold":true}]
tellraw @a ["",{"text":"  - Minecraft version 1.","color":"green","bold":true},{"score":{"name":"#MWL","objective":"Version"},"color":"green","bold":true}]
tellraw @a ["",{"text":" ","color":"white"},{"text":"Setting Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"\n","color":"white"}]

tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@p[tag=Host]","color":"white","bold":true},{"text":" さんは、インベントリを","color":"white"}]
tellraw @a ["",{"text":"  開いて、以下の設定をしてください。","color":"white"}]
tellraw @a ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"    ・役欠けなし/あり","color":"white"}]
tellraw @a ["",{"text":"    ・潜伏時間","color":"white"}]
tellraw @a ["",{"text":"    ・発光時間","color":"white"}]
tellraw @a ["",{"text":"    ・制限時間","color":"white"}]
tellraw @a ["",{"text":"    ・ゲームモード(人狼勝利条件)","color":"white"}]
tellraw @a ["",{"text":"    ・追加特殊アイテム","color":"white"}]
execute if score #MWL AddedRoleNumber matches 1.. run tellraw @a ["",{"text":"    ・追加役職(","color":"white"},{"score":{"name":"#MWL","objective":"AddedRoleNumber"},"color":"white"},{"text":"組)","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]
