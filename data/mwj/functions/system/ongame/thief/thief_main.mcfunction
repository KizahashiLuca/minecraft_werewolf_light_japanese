###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set Scoreboard
scoreboard players set @s ROLE_OF_NUM 1
scoreboard players set @s ROLE_TARGET 0

## Detect Dropping Redstone Torch
execute if score @s TORCH matches 1 if score @s DONE matches 0 run function mwj:system/ongame/thief/thief_trigger
execute if score @s TORCH matches 1 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Detect Page Role
execute if score @s ROLE_R_PAGE matches 1 if score @s DONE matches 0 run function mwj:system/ongame/thief/thief_message
execute if score @s ROLE_L_PAGE matches 1 if score @s DONE matches 0 run function mwj:system/ongame/thief/thief_message
execute if score @s ROLE_R_PAGE matches 1 if score @s DONE matches 1 run function mwj:system/ongame/message_error
execute if score @s ROLE_L_PAGE matches 1 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Send a Result to Thief
execute if score @s ROLE_BUTTON matches 1..10 if score @s DONE matches 0 run function mwj:system/ongame/thief/thief_calculation
execute if score @s ROLE_BUTTON matches 1..10 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Send a Result Message to Thief
execute if score @p[scores={ROLE=9,ROLE_OF_NUM=1}] DONE matches 0 as @a[team=Player] if score @s NUM = @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE_TARGET run function mwj:system/ongame/thief/thief_result

## Reset Scoreboard
scoreboard players set @s ROLE_OF_NUM 0

## Enable Thief Trigger
scoreboard players reset @s ROLE_R_PAGE
scoreboard players reset @s ROLE_L_PAGE
scoreboard players reset @s ROLE_BUTTON
scoreboard players enable @s ROLE_R_PAGE
scoreboard players enable @s ROLE_L_PAGE
scoreboard players enable @s ROLE_BUTTON

## Death
execute if score @s DEATH matches 1 run scoreboard players set @s DONE 1