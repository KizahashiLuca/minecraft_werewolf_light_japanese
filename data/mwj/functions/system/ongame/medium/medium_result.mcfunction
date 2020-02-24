###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Send a Common Message
tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"  霊媒結果","color":"white"}]

## Send a Message that Victim is Alive
execute if score @s DEATH matches 0 run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は 生きています","color":"white"}]

## Send a Message that Victim is Black
execute if score @s DEATH matches 1..2 if score @s ROLE matches 1 run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute if score @s DEATH matches 1..2 if score @s ROLE matches 2 run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is Fox
execute if score @s DEATH matches 1..2 if score @s ROLE matches 3 run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute if score @s DEATH matches 1..2 if score @s ROLE matches 4..10 run tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Common Message
tellraw @p[scores={ROLE=6,ROLE_OF_NUM=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Medium Role Done
scoreboard players set @p[scores={ROLE=6,ROLE_OF_NUM=1}] DONE 1

## Reset Medium Trigger
scoreboard players set @p[scores={ROLE=6,ROLE_OF_NUM=1}] ROLE_TARGET 0

## First Achievement
scoreboard players set @p[scores={ROLE=6,ROLE_OF_NUM=1}] MEDIUM_ACHIEVE1 1
