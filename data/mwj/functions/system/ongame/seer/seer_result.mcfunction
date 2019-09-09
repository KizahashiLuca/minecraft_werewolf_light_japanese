###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Send a Common Message
tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"  預言結果","color":"reset"}]

## Send a Message that Suspect is Black
execute if score @s ROLE matches 1 run tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" は ","color":"reset"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"reset"}]

## Send a Message that Suspect is White
execute if score @s ROLE matches 2 run tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]

## Send a Message that Suspect is Fox
execute if score @s ROLE matches 3 run tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" は ","color":"reset"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です","color":"reset"}]

## Effect Instant Damage of Fox by Seer
#### Put Tag
execute if score @s ROLE matches 3 run tag @s add SeeredFox
#### Store SEER Number
scoreboard players operation @s STRAY_BY_FOX = @p[scores={ROLE=5,ROLE_OF_NUM=1}] NUM
#### Deal Instant Damage to Fox
effect give @s minecraft:instant_damage 1 10 true

## Send a Message that Suspect is White
execute if score @s ROLE matches 4..10 run tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" は ","color":"reset"},{"text":"白","color":"green","bold":true},{"text":" です","color":"reset"}]

## Send a Common Message
tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"----------------------------------\n","color":"reset"}]

## Seer Role Done
scoreboard players set @p[scores={ROLE=5,ROLE_OF_NUM=1}] DONE 1

## Reset Seer Trigger
scoreboard players reset @p[scores={ROLE=5,ROLE_OF_NUM=1}] SEER_OBJ
