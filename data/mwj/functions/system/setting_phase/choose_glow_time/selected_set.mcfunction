####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send messages
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  発光時間が、","color":"white"},{"text":"潜伏時間の残り ","color":"white"},{"score":{"name":"#MWL","objective":"GlowTime"},"color":"green","bold":true},{"text":"%","color":"green","bold":true},{"text":" の時に","color":"white"}]
tellraw @a ["",{"text":"  設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]

## Change to choose mode
function mwj:system/setting_phase/master/change_to