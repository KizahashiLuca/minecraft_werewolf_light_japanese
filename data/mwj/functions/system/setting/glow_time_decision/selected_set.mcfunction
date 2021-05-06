####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message Glow Time to All Players
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  発光時間が、制限時間の ","color":"white"},{"score":{"name":"#MWL","objective":"GlowTime"},"color":"green","bold":true},{"text":"割","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to