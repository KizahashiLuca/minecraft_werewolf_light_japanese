####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change gamerules always
gamerule maxCommandChainLength 65536
gamerule doFireTick false
gamerule doMobSpawning false

## Send Title Message
function mwj:system/common/message/begin
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  Thank you for Downloading","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"white"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}}]
tellraw @a [""]
tellraw @a ["",{"text":"  当ゲームの必要人数は","color":"white"},{"text":" 3 ","color":"red","bold":true},{"text":"人からです。","color":"white"}]
tellraw @a ["",{"text":"  以下のコマンドで、ゲームを開始。","color":"white"}]
tellraw @a ["",{"text":"      ","color":"white"},{"text":"/function #mwj:start","color":"light_purple","hoverEvent":{"action":"show_text","value":"ゲーム開始コマンドを表示"},"clickEvent":{"action":"suggest_command","value":"/function #mwj:start"}}]
function mwj:system/common/message/end