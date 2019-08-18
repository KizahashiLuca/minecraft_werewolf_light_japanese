###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## He is Alive
execute if score @s DEATH matches 0 run tellraw @p[scores={ROLE=8}] ["",{"selector":"@s","color":"reset"},{"text":" は行方不明です。","color":"reset"}]

## He is Dead
execute if score @s DEATH matches 1..2 run function mwj:role/process/detective_process

## Detective Role Done
scoreboard players set @p[scores={ROLE=8}] DONE 1

## Reset Detective Trigger
scoreboard players reset @p[scores={ROLE=8}] DETECTIVE_OBJ
