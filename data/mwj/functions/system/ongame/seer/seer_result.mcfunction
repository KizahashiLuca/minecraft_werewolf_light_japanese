###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Send a Common Message
tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"  預言結果","color":"white"}]

## Send a Message that Suspect is Black
execute as @s[scores={ROLE=1}] run tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is White
execute as @s[scores={ROLE=2}] run tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is Fox
execute as @s[scores={ROLE=3}] run tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です","color":"white"}]

## Effect Instant Damage of Fox by Seer
#### Put Tag
tag @s[scores={ROLE=3,DEATH=0}] add SeeredFox
#### Store SEER Number
scoreboard players operation @s[scores={ROLE=3,DEATH=0}] STRAY_BY_FOX = @p[scores={ROLE=5,ROLE_OF_NUM=1}] NUM
#### Deal Instant Damage to Fox
effect give @s[scores={ROLE=3,DEATH=0}] minecraft:instant_damage 1 10 true

## Send a Message that Suspect is White
execute as @s[scores={ROLE=4..10}] run tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Common Message
tellraw @p[scores={ROLE=5,ROLE_OF_NUM=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Seer Role Done
scoreboard players set @p[scores={ROLE=5,ROLE_OF_NUM=1}] DONE 1

## Reset Seer Trigger
scoreboard players set @p[scores={ROLE=5,ROLE_OF_NUM=1}] ROLE_TARGET 0

## First Achievement
scoreboard players set @p[scores={ROLE=5,ROLE_OF_NUM=1}] SEER_ACHIEVE1 1
