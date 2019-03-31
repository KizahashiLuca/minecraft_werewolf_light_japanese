###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 31 March 2019
## Version: beta-1.2
###############################

execute unless score @p[scores={NUM=7}] ROLE matches 1 run tellraw @s ["",{"selector":"@p[scores={NUM=7}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]
execute if score @p[scores={NUM=7}] ROLE matches 1 run tellraw @s ["",{"selector":"@p[scores={NUM=7}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"reset"}]

scoreboard players set @s DONE 1