####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send titles
title @a times 5 40 15
title @a title ["",{"text":"初期設定時間 開始","color":"green","bold":true}]
title @a subtitle ["",{"text":"Setting Start","color":"white","bold":true}]

## Send messages
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light v.1.5","color":"red","bold":true}]
tellraw @a ["",{"text":"  - Minecraft version 1.","color":"green","bold":true},{"score":{"name":"#MWL","objective":"Version"},"color":"green","bold":true}]
tellraw @a ["",{"text":" ","color":"white"},{"text":"Setting Start","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}}]
tellraw @a [""]

tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@p[predicate=mwj:player/host]","color":"white","bold":true},{"text":" さんは、インベントリを","color":"white"}]
tellraw @a ["",{"text":"  開いて、以下の設定をしてください。","color":"white"}]
tellraw @a ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"    ・潜伏時間","color":"white"}]
tellraw @a ["",{"text":"    ・発光時間","color":"white"}]
tellraw @a ["",{"text":"    ・制限時間","color":"white"}]
tellraw @a ["",{"text":"    ・ゲームルール","color":"white"}]
tellraw @a ["",{"text":"      ・ゲームモード(人狼勝利条件)","color":"white"}]
tellraw @a ["",{"text":"      ・役欠けなし/あり","color":"white"}]
tellraw @a ["",{"text":"      ・二次役職","color":"white"}]
tellraw @a ["",{"text":"    ・特殊アイテム","color":"white"}]
tellraw @a ["",{"text":"    ・役職数","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]

## Change to setting phase
function mwj:system/setting_phase/master/change_to