###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Send a Common Message
tellraw @p[scores={ROLE=5}] ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @p[scores={ROLE=5}] ["",{"text":"  預言結果","color":"reset"}]

## Send a Message that Suspect is Black
execute if score @s ROLE matches 1 run tellraw @p[scores={ROLE=5}] ["",{"text":"    ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" は ","color":"reset"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"reset"}]

## Send a Message that Suspect is White
execute if score @s ROLE matches 2 run tellraw @p[scores={ROLE=5}] ["",{"text":"    ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]

## Send a Message that Suspect is White
execute if score @s ROLE matches 4..10 run tellraw @p[scores={ROLE=5}] ["",{"text":"    ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]

## Send a Common Message
tellraw @p[scores={ROLE=5}] ["",{"text":"----------------------------------\n","color":"reset"}]

## Seer Role Done
scoreboard players set @p[scores={ROLE=5}] DONE 1

## Reset Seer Trigger
scoreboard players reset @p[scores={ROLE=5}] SEER_OBJ
