###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 April 2019
## Version: beta-1.2.1
###############################

execute unless score @p[scores={NUM=8}] ROLE matches 1 run tellraw @s ["",{"selector":"@p[scores={NUM=8}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]
execute if score @p[scores={NUM=8}] ROLE matches 1 run tellraw @s ["",{"selector":"@p[scores={NUM=8}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"reset"}]

scoreboard players set @s DONE 1