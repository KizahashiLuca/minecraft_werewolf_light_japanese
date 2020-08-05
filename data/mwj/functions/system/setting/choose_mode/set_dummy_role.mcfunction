###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Choose set dummy role
execute if score #MWL PrevSetDummyRole matches 0 run scoreboard players set #MWL SetDummyRole 1
execute if score #MWL PrevSetDummyRole matches 1 run scoreboard players set #MWL SetDummyRole 0
scoreboard players operation #MWL PrevSetDummyRole = #MWL SetDummyRole

## Send a Message Dummy Role to All Players
tellraw @a ["",{"text":"\n----------------------------------","color":"white"}]
execute if score #MWL SetDummyRole matches 0 run tellraw @a ["",{"text":"  役欠けが、 ","color":"white"},{"text":"なし","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
execute if score #MWL SetDummyRole matches 1 run tellraw @a ["",{"text":"  役欠けが、 ","color":"white"},{"text":"あり","color":"green","bold":true},{"text":" に設定されました。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"white"}]

## Change to Choose Mode
function mwj:system/setting/choose_mode/change_to