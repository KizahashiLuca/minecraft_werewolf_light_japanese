###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Store Variables of TimeTrigger to ChangeHideTime
scoreboard players set Time ChangeHideTime 15
scoreboard players operation Time ChangeHideTime *= Time HideTime

## Send a Message Hide Time to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  潜伏時間が、 ","color":"white"},{"score":{"name":"Time","objective":"ChangeHideTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to_choose_mode