###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Detect Dropping Redstone Torch
execute if score @s TORCH matches 1 unless score @s DONE matches 1 run function mwj:system/ongame/seer/seer_trigger
execute if score @s TORCH matches 1 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Enable Seer Trigger
scoreboard players enable @s SEER_OBJ

## Send an Error Message to Seer
execute if score @s SEER_OBJ matches 1..14 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Send a Result Message to Seer
scoreboard players set @s ROLE_OF_NUM 1
execute unless score @p[scores={ROLE=5,ROLE_OF_NUM=1}] DONE matches 1 as @a if score @s NUM = @p[scores={ROLE=5,ROLE_OF_NUM=1}] SEER_OBJ run function mwj:system/ongame/seer/seer_result
scoreboard players set @s ROLE_OF_NUM 0
