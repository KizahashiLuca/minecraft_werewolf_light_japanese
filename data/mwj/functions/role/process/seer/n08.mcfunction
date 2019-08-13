###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

execute if score @p[scores={NUM=8}] ROLE matches 1 run tellraw @s ["",{"selector":"@p[scores={NUM=8}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"reset"}]

execute if score @p[scores={NUM=8}] ROLE matches 2 run tellraw @s ["",{"selector":"@p[scores={NUM=8}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]

execute if score @p[scores={NUM=8}] ROLE matches 3 run tellraw @s ["",{"selector":"@p[scores={NUM=8}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"狐","color":"dark_purple","bold":true},{"text":" です","color":"reset"}]
execute if score @p[scores={NUM=8}] ROLE matches 3 as @p[scores={NUM=8}] run function mwj:role/process/seer/forfox

execute if score @p[scores={NUM=8}] ROLE matches 4..10 run tellraw @s ["",{"selector":"@p[scores={NUM=8}]","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]

scoreboard players set @s DONE 1