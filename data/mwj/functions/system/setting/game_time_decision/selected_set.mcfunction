####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Store Variables of TimeTrigger to ChangeGameTime
scoreboard players set #MWL ChangeGameTime 5
scoreboard players operation #MWL ChangeGameTime *= #MWL GameTime

## Send a Message Game Time to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  制限時間が、 ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeGameTime"},"color":"green","bold":true},{"text":"分","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to