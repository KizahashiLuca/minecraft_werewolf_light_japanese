###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Send a Message of Victim's role
execute if score @s ROLE matches 1 run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です。","color":"white"}]

execute if score @s ROLE matches 2 run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です。","color":"white"}]

execute if score @s ROLE matches 3 run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です。","color":"white"}]

execute if score @s ROLE matches 4..10 run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です。","color":"white"}]

## First Achievement
scoreboard players set @p[scores={ROLE=8,ROLE_OF_NUM=1}] DETEC_ACHIEVE1 1