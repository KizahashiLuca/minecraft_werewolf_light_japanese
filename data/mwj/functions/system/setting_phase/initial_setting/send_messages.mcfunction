####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send titles
title @a times 5 40 15
title @a title ["",{"text":"初期設定時間 開始","color":"green","bold":true}]
title @a subtitle ["",{"text":"Setting Start","color":"white","bold":true}]

## Send messages
function mwj:system/common/message/begin
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"初期設定開始","color":"green","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","hoverEvent":{"action":"show_text","value":[{"text":"Wikiへ移動"}]},"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"},"bold":true,"color":"blue","underlined":true}]
tellraw @a [""]
tellraw @a ["",{"text":"  現在参加者は ","color":"white"},{"score":{"name":"#MWL","objective":"NumOfPlayers"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" です。","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@p[predicate=mwj:player/host]","color":"white","bold":true},{"text":" さんは、インベントリを","color":"white"}]
tellraw @a ["",{"text":"  開いて、","color":"white"},{"text":"これら","hoverEvent":{"action":"show_text","value":[{"text":"設定内容","color":"white"},{"text":"\n・潜伏時間","color":"white"},{"text":"\n・発光時間","color":"white"},{"text":"\n・制限時間","color":"white"},{"text":"\n・ゲームルール","color":"white"},{"text":"\n  ・ゲームモード(人狼勝利条件)","color":"white"},{"text":"\n  ・役欠けなし/あり","color":"white"},{"text":"\n  ・二次役職","color":"white"},{"text":"\n・特殊アイテム","color":"white"},{"text":"\n・役職数","color":"white"},{"text":"\n※推奨設定で実行する場合は、右下の「決定」を選択。","color":"white","underlined":true}]},"color":"white","underlined":true},{"text":"の設定をしてください。","color":"white"}]
function mwj:system/common/message/end

## Change to setting phase
function mwj:system/setting_phase/master/change_to