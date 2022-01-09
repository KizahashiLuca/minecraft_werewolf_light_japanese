####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message Choose Item to All Players
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  追加アイテムは、 ","color":"white"}]
function mwj:system/common/message/set_items
tellraw @a ["",{"text":"  に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]

## Change to Choose Mode
function mwj:system/setting_phase/master/change_to