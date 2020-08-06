###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Send a Common Message
tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"  予言結果","color":"white"}]

## Send a Message that Suspect is Black
execute as @s[scores={CurrentRole=1..3}] run tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is White
execute as @s[scores={CurrentRole=4..5}] run tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is Fox
execute as @s[scores={CurrentRole=10}] run tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です","color":"white"}]

## Effect Instant Damage of Fox by Seer
#### Put Tag
tag @s[scores={CurrentRole=10,DeathCount=0}] add SeeredFox
#### Store Seer Number
scoreboard players operation @s[scores={CurrentRole=10,DeathCount=0}] KilledBySeer = @p[scores={CurrentRole=25,RoleOfNum=1}] NumOfPlayers
#### Deal Instant Damage to Fox
effect give @s[scores={CurrentRole=10,DeathCount=0}] minecraft:instant_damage 1 10 true

## Send a Message that Suspect is White
execute as @s[scores={CurrentRole=11..40}] run tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Common Message
tellraw @p[scores={CurrentRole=25,RoleOfNum=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Seer Role Done
scoreboard players set @p[scores={CurrentRole=25,RoleOfNum=1}] RoleDone 1

## Reset Seer Trigger
scoreboard players reset @p[scores={CurrentRole=25,RoleOfNum=1}] TargetOfRole
