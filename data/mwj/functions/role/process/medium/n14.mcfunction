###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## He is Alive
execute if score @p[scores={NUM=14}] DEATH matches 0 run tellraw @s ["",{"selector":"@p[scores={NUM=14}]","color":"reset"},{"text":" は 生きています","color":"reset"}]

## He is White
execute if score @p[scores={NUM=14}] DEATH matches 1..2 unless score @p[scores={NUM=14}] ROLE matches 1 run tellraw @s ["",{"selector":"@p[scores={NUM=14}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]

## He is Black
execute if score @p[scores={NUM=14}] DEATH matches 1..2 if score @p[scores={NUM=14}] ROLE matches 1 run tellraw @s ["",{"selector":"@p[scores={NUM=14}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"reset"}]

## Medium Role Done
scoreboard players set @s DONE 1