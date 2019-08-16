###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Detect Dropping Redstone Torch
execute if score @s TORCH matches 1 unless score @s DONE matches 1 run function mwj:role/process/medium
execute if score @s TORCH matches 1 if score @s DONE matches 1 run function mwj:role/process/message

## Enable Medium Trigger
scoreboard players enable @s MEDIUM_OBJ

## Send a Result to Medium
execute if score @s MEDIUM_OBJ matches 1..14 unless score @s DONE matches 1 run function mwj:role/process/medium/branch
execute if score @s MEDIUM_OBJ matches 1..14 if score @s DONE matches 1 run function mwj:role/process/message