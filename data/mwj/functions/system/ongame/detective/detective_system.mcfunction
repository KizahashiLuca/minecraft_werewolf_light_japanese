###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Detect Dropping Redstone Torch
execute if score @s TORCH matches 1 unless score @s DONE matches 1 run function mwj:system/ongame/detective/detective_trigger
execute if score @s TORCH matches 1 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Enable Detective Trigger
scoreboard players enable @s DETECTIVE_OBJ

## Send a Result to Detective
execute if score @s DETECTIVE_OBJ matches 1..14 if score @s DONE matches 1 run function mwj:system/ongame/message_error

## Send a Result Message to Seer
scoreboard players set @s ROLE_OF_NUM 1
execute unless score @p[scores={ROLE=8,ROLE_OF_NUM=1}] DONE matches 1 as @a if score @s NUM = @p[scores={ROLE=8,ROLE_OF_NUM=1}] DETECTIVE_OBJ run function mwj:system/ongame/detective/detective_result
scoreboard players set @s ROLE_OF_NUM 0
