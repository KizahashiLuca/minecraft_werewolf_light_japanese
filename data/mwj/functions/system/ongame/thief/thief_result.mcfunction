###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Send a Common Message
tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" から役職を盗んだ結果、","color":"white"}]

## Send a Message that the Stolen is dead
execute as @s[scores={DeathCount=1..2}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Wolf
execute as @s[scores={CurrentRole=1,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"人狼","color":"red","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Madman
execute as @s[scores={CurrentRole=5,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"狂人","color":"light_purple","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Fox
execute as @s[scores={CurrentRole=10,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Villager
execute as @s[scores={CurrentRole=20,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Mason
execute as @s[scores={CurrentRole=21,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"共有者","color":"dark_green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Seer
execute as @s[scores={CurrentRole=25,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"予言者","color":"aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Fake Seer
execute as @s[scores={CurrentRole=26,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"予言者","color":"aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Medium
execute as @s[scores={CurrentRole=28,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"霊媒師","color":"yellow","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Detective
execute as @s[scores={CurrentRole=31,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Thief
execute as @s[scores={CurrentRole=35,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Cat
execute as @s[scores={CurrentRole=40,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"猫又","color":"gold","bold":true},{"text":" になりました","color":"white"}]

## Put Tag
tag @p[scores={CurrentRole=35,RoleOfNum=1}] remove NonWolf
execute as @s[scores={DeathCount=1..2}] run tag @p[scores={CurrentRole=35,RoleOfNum=1}] add NonWolf
execute as @s[scores={DeathCount=0,CurrentRole=1..9}] run tag @p[scores={CurrentRole=35,RoleOfNum=1}] add WereWolf
execute as @s[scores={DeathCount=0,CurrentRole=10..39}] run tag @p[scores={CurrentRole=35,RoleOfNum=1}] add NonWolf
execute as @s[scores={DeathCount=0,CurrentRole=40}] run tag @p[scores={CurrentRole=35,RoleOfNum=1}] add Cat

tag @s[scores={DeathCount=0,CurrentRole=1..9}] remove WereWolf
tag @s[scores={DeathCount=0,CurrentRole=10..39}] remove NonWolf
tag @s[scores={DeathCount=0,CurrentRole=40}] remove Cat
tag @s[scores={DeathCount=0}] add NonWolf

## Store Recent Time
scoreboard players set @s STOLEN 1
scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] STEAL_NUM = #MWL STEAL_NUM
scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] STEAL_TARGET = @s NUM
scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] ThiefStealSecond = #MWL Second
scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] ThiefStealTick = #MWL Tick
scoreboard players add #MWL STEAL_NUM 1

## Thief Role Done
execute as @s[scores={DeathCount=0,CurrentRole=1..34}] run scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] DONE = @s DONE
execute as @s[scores={DeathCount=0,CurrentRole=35}] run scoreboard players set @p[scores={CurrentRole=35,RoleOfNum=1}] DONE 0
execute as @s[scores={DeathCount=0,CurrentRole=40}] run scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] DONE = @s DONE
execute as @s[scores={DeathCount=1}] run scoreboard players set @p[scores={CurrentRole=35,RoleOfNum=1}] DONE 0

## Reset Thief Trigger
scoreboard players set @p[scores={CurrentRole=35,RoleOfNum=1}] RoleTarget 0

## Exchange Role
execute as @s[scores={DeathCount=0,CurrentRole=1..34}] run scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] CurrentRole = @s CurrentRole
execute as @s[scores={DeathCount=0,CurrentRole=35}] run scoreboard players set @p[scores={CurrentRole=35,RoleOfNum=1}] CurrentRole 20
execute as @s[scores={DeathCount=0,CurrentRole=40}] run scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] CurrentRole = @s CurrentRole
scoreboard players set @s[scores={DeathCount=0}] CurrentRole 20
execute as @s[scores={DeathCount=1..2}] run scoreboard players set @p[scores={CurrentRole=35,RoleOfNum=1}] CurrentRole 20

## Send a Message of wolves
execute as @s[scores={DeathCount=0,PrevRole=1}] run tellraw @p[scores={CurrentRole=1,RoleOfNum=1}] ["",{"text":"    仲間は ","color":"white"},{"selector":"@a[scores={CurrentRole=1}]","color":"red"},{"text":" です。","color":"white"}]

## Send a Message of masons
execute as @s[scores={DeathCount=0,PrevRole=21}] run scoreboard players operation @p[scores={CurrentRole=21,RoleOfNum=1}] MASON_PAIR = @s MASON_PAIR
scoreboard players set @s[scores={DeathCount=0,PrevRole=21}] MASON_PAIR 0
execute as @a[scores={CurrentRole=21}] if score @s MASON_PAIR = @p[scores={CurrentRole=21,RoleOfNum=1}] MASON_PAIR run tag @s add MasonTag
tellraw @p[scores={CurrentRole=21,RoleOfNum=1}] ["",{"text":"    仲間は ","color":"white"},{"selector":"@a[tag=MasonTag,scores={CurrentRole=21}]","color":"dark_green"},{"text":" です。","color":"white"}]
tag @a remove MasonTag

## Send a Common Message
tellraw @p[scores={PrevRole=35,RoleOfNum=1}] ["",{"text":"----------------------------------\n","color":"white"}]