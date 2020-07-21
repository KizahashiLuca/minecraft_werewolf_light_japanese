###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Send a Common Message
tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"  予言結果","color":"white"}]

## Send a Message that Suspect is Black
execute as @s[scores={CurrentRole=1..4}] run tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is White
execute as @s[scores={CurrentRole=5}] run tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is Fox
execute as @s[scores={CurrentRole=10}] run tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です","color":"white"}]

## Effect Instant Damage of Fox by Seer
#### Put Tag
tag @s[scores={CurrentRole=10,DeathCount=0}] add SeeredFox
#### Store Seer Number
scoreboard players operation @s[scores={CurrentRole=10,DeathCount=0}] KilledBySeer = @p[scores={CurrentRole=25,RoleOfNum=1}] NUM
#### Deal Instant Damage to Fox
effect give @s[scores={CurrentRole=10,DeathCount=0}] minecraft:instant_damage 1 10 true

## Send a Message that Suspect is White
execute as @s[scores={CurrentRole=20..40}] run tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Common Message
tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Seer Role Done
scoreboard players set @p[scores={CurrentRole=25,RoleOfNum=1}] DONE 1

## Reset Seer Trigger
scoreboard players set @p[scores={CurrentRole=25,RoleOfNum=1}] RoleTarget 0
