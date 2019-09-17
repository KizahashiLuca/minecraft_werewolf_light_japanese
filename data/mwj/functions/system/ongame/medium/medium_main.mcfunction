###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Detect Dropping Redstone Torch
execute if score @s TORCH matches 1 unless score @s DONE matches 1 run function mwj:system/ongame/medium/medium_trigger
execute if score @s TORCH matches 1 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Enable Medium Trigger
scoreboard players enable @s MEDIUM_OBJ

## Send a Result to Medium
execute if score @s MEDIUM_OBJ matches 1..14 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Send a Result Message to Seer
scoreboard players set @s ROLE_OF_NUM 1
execute unless score @p[scores={ROLE=6,ROLE_OF_NUM=1}] DONE matches 1 as @a if score @s NUM = @p[scores={ROLE=6,ROLE_OF_NUM=1}] MEDIUM_OBJ run function mwj:system/ongame/medium/medium_result
scoreboard players set @s ROLE_OF_NUM 0