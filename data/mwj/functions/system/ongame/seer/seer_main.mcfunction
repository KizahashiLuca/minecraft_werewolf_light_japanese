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
execute if score @s TORCH matches 1 if score @s DONE matches 0 run function mwj:system/ongame/seer/seer_trigger
execute if score @s TORCH matches 1 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Detect Page Role
execute if score @s ROLE_R_PAGE matches 1 if score @s DONE matches 0 run function mwj:system/ongame/seer/seer_message
execute if score @s ROLE_L_PAGE matches 1 if score @s DONE matches 0 run function mwj:system/ongame/seer/seer_message
execute if score @s ROLE_R_PAGE matches 1 if score @s DONE matches 1 run function mwj:system/ongame/message_error
execute if score @s ROLE_L_PAGE matches 1 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Send a Result to Seer
execute if score @s ROLE_BUTTON matches 1..10 if score @s DONE matches 0 run function mwj:system/ongame/seer_calculation
execute if score @s ROLE_BUTTON matches 1..10 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Send a Result Message to Seer
execute if score @p[scores={ROLE=5,ROLE_OF_NUM=1}] DONE matches 0 as @a[team=Player] if score @s NUM = @p[scores={ROLE=5,ROLE_OF_NUM=1}] ROLE_TARGET run function mwj:system/ongame/seer/seer_result

## Reset Scoreboard
scoreboard players set @s ROLE_OF_NUM 0

## Enable Seer Trigger
scoreboard players reset @s ROLE_R_PAGE
scoreboard players reset @s ROLE_L_PAGE
scoreboard players reset @s ROLE_BUTTON
scoreboard players enable @s ROLE_R_PAGE
scoreboard players enable @s ROLE_L_PAGE
scoreboard players enable @s ROLE_BUTTON
