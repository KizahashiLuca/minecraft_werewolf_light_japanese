###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Store Variables of TimeTrigger to ChangeHideTime
scoreboard players set #MWL ChangeHideTime 15
scoreboard players operation #MWL ChangeHideTime *= #MWL HideTime

## Send a Message Hide Time to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  潜伏時間が、 ","color":"white"},{"score":{"name":"#MWL","objective":"ChangeHideTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to