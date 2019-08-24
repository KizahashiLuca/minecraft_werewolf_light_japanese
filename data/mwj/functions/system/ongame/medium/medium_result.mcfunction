###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Send a Common Message
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a ["",{"text":"  霊媒結果","color":"reset"}]

## Send a Message that Suspect is Alive
execute if score @s DEATH matches 0 run tellraw @p[scores={ROLE=6}] ["",{"text":"    ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" は 生きています","color":"reset"}]

## Send a Message that Suspect is White
execute if score @s DEATH matches 1..2 unless score @s ROLE matches 1 run tellraw @p[scores={ROLE=6}] ["",{"text":"    ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]

## Send a Message that Suspect is Black
execute if score @s DEATH matches 1..2 if score @s ROLE matches 1 run tellraw @p[scores={ROLE=6}] ["",{"text":"    ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" は ","color":"reset"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"reset"}]

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Medium Role Done
scoreboard players set @p[scores={ROLE=6}] DONE 1

## Reset Medium Trigger
scoreboard players reset @p[scores={ROLE=6}] MEDIUM_OBJ
