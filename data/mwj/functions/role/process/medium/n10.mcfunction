###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : Feb 11, 2019
## Version: alpha-0.1
###############################

execute if score @p[scores={NUM=10}] DEATH matches 0 run tellraw @s ["",{"selector":"@p[scores={NUM=10}]","color":"reset"},{"text":" は 生きています","color":"reset"}]
execute if score @p[scores={NUM=10}] DEATH matches 1..2 unless score @p[scores={NUM=10}] ROLE matches 1 run tellraw @s ["",{"selector":"@p[scores={NUM=10}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]
execute if score @p[scores={NUM=10}] DEATH matches 1..2 if score @p[scores={NUM=10}] ROLE matches 1 run tellraw @s ["",{"selector":"@p[scores={NUM=10}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"reset"}]

scoreboard players set @s DONE 1