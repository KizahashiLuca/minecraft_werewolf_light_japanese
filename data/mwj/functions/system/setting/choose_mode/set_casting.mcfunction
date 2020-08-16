###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Choose set dummy role
execute if score #MWL PrevSetCasting matches 0 run scoreboard players set #MWL SetCasting 1
execute if score #MWL PrevSetCasting matches 1 run scoreboard players set #MWL SetCasting 0
scoreboard players operation #MWL PrevSetCasting = #MWL SetCasting

execute if score #MWL SetCasting matches 0 run function mwj:system/setting/choose_mode/set_cast_off
execute if score #MWL SetCasting matches 1 run function mwj:system/setting/choose_mode/set_cast_on

## Send a Message Casting to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
execute if score #MWL SetCasting matches 0 run tellraw @a ["",{"text":"  配役設定が、 ","color":"white"},{"text":"手動","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL SetCasting matches 1 run tellraw @a ["",{"text":"  役欠けが、 ","color":"white"},{"text":"自動","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to