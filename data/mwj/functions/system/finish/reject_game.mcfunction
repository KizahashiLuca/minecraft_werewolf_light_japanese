####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message
function mwj:system/common/message/begin
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"ゲーム開始エラー","color":"yellow","bold":true}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲーム中に、新たなゲームは開始できません。","color":"white"}]
tellraw @a ["",{"text":"  以下のコマンドで、ゲームを中断してください。","color":"white"}]
tellraw @a ["",{"text":"    ","color":"white"},{"text":"/function #mwj:stop","color":"light_purple","hoverEvent":{"action":"show_text","value":"クリックしてゲーム中断"},"clickEvent":{"action":"suggest_command","value":"/function #mwj:stop"}}]
function mwj:system/common/message/end