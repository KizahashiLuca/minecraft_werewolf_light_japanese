###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## He is Black
execute if score @p[scores={NUM=3}] ROLE matches 1 run tellraw @s ["",{"selector":"@p[scores={NUM=3}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"reset"}]

## He is White
execute if score @p[scores={NUM=3}] ROLE matches 2 run tellraw @s ["",{"selector":"@p[scores={NUM=3}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]

## He is White
execute if score @p[scores={NUM=3}] ROLE matches 4..10 run tellraw @s ["",{"selector":"@p[scores={NUM=3}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]

## Seer Role Done
scoreboard players set @s DONE 1