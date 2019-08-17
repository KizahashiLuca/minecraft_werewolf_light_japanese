###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## He is Alive
execute if score @p[scores={NUM=11}] DEATH matches 0 run tellraw @s ["",{"selector":"@p[scores={NUM=11}]","color":"reset"},{"text":" は生きています。","color":"reset"}]

## He is White
execute as @p[scores={NUM=11}] if score @s DEATH matches 1..2 run function mwj:role/process/detective/process

## Seer Role Done
scoreboard players set @s DONE 1