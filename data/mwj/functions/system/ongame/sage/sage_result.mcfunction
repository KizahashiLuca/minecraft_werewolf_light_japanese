###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Send a Common Message
tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"  賢者結果","color":"white"}]

## Send a Message that Suspect is Black
execute as @s[scores={CurrentRole=1}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"人狼","color":"red","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=4}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白狼","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is White
execute as @s[scores={CurrentRole=5}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"狂人","color":"light_purple","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=6}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"狂信者","color":"light_purple","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is Fox
execute as @s[scores={CurrentRole=10}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=11}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"背徳者","color":"dark_purple","bold":true},{"text":" です","color":"white"}]

## Effect Instant Damage of Fox by Seer
#### Put Tag
tag @s[scores={CurrentRole=10,DeathCount=0}] add SeeredFox
#### Store Seer Number
scoreboard players operation @s[scores={CurrentRole=10,DeathCount=0}] KilledBySeer = @p[scores={CurrentRole=27,RoleOfNum=1}] NUM
#### Deal Instant Damage to Fox
effect give @s[scores={CurrentRole=10,DeathCount=0}] minecraft:instant_damage 1 10 true

## Send a Message that Suspect is White
execute as @s[scores={CurrentRole=20}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=21}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"共有者","color":"dark_green","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=25}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"予言者","color":"aqua","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=26}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"偽予言者","color":"aqua","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=27}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"賢者","color":"aqua","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=28}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"霊媒師","color":"yellow","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=31}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=35}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"怪盗","color":"blue","bold":true},{"text":" です","color":"white"}]
execute as @s[scores={CurrentRole=40}] run tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"猫又","color":"gold","bold":true},{"text":" です","color":"white"}]

## Send a Common Message
tellraw @p[scores={CurrentRole=27,RoleOfNum=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Seer Role Done
scoreboard players set @p[scores={CurrentRole=27,RoleOfNum=1}] RoleDone 1

## Reset Seer Trigger
scoreboard players reset @p[scores={CurrentRole=27,RoleOfNum=1}] TargetOfRole
