###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Detect Dropping Redstone Torch
execute if score @s TORCH matches 1 unless score @s DONE matches 1 run function mwj:role/process/seer
execute if score @s TORCH matches 1 if score @s DONE matches 1 run function mwj:role/process/message

## Enable Seer Trigger
scoreboard players enable @s SEER_OBJ

## Send a Result to Seer
execute if score @s SEER_OBJ matches 1..14 unless score @s DONE matches 1 run function mwj:role/process/seer/branch
execute if score @s SEER_OBJ matches 1..14 if score @s DONE matches 1 run function mwj:role/process/message
