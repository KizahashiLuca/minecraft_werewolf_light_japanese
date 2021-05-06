####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Common Message
tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] [""]
tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" から役職を盗んだ結果、","color":"white"}]

## Send a Message that the Stolen is dead
execute as @s[scores={DeathCount=1..2}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Wolf
execute as @s[scores={CurrentRole=1,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"人狼","color":"red","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Clever Wolf
execute as @s[scores={CurrentRole=3,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"賢狼","color":"dark_red","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is White Wolf
execute as @s[scores={CurrentRole=4,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"白狼","color":"red","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Madman
execute as @s[scores={CurrentRole=5,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"狂人","color":"light_purple","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Fanatic
execute as @s[scores={CurrentRole=6,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"狂信者","color":"light_purple","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Fox
execute as @s[scores={CurrentRole=10,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Immoralist
execute as @s[scores={CurrentRole=11,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"背徳者","color":"dark_purple","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Villager
execute as @s[scores={CurrentRole=20,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Bakery
execute as @s[scores={CurrentRole=22,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"パン屋","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Mason
execute as @s[scores={CurrentRole=24,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"共有者","color":"dark_green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Seer
execute as @s[scores={CurrentRole=25,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"予言者","color":"aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Fake Seer
execute as @s[scores={CurrentRole=26,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"予言者","color":"aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Sage
execute as @s[scores={CurrentRole=27,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"賢者","color":"aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Medium
execute as @s[scores={CurrentRole=28,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"霊媒師","color":"yellow","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Detective
execute as @s[scores={CurrentRole=31,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Thief
execute as @s[scores={CurrentRole=35,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Little Red
execute as @s[scores={CurrentRole=39,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"赤ずきん","color":"gold","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Cat
execute as @s[scores={CurrentRole=40,DeathCount=0}] run tellraw @p[scores={CurrentRole=35,RoleOfNum=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"猫又","color":"gold","bold":true},{"text":" になりました","color":"white"}]

## Put Tag
tag @p[scores={CurrentRole=35,RoleOfNum=1}] remove NonWolf
execute as @s[scores={DeathCount=1..2}] run tag @p[scores={CurrentRole=35,RoleOfNum=1}] add NonWolf
execute as @s[scores={DeathCount=0,CurrentRole=1..4}] run tag @p[scores={CurrentRole=35,RoleOfNum=1}] add WereWolf
execute as @s[scores={DeathCount=0,CurrentRole=5..9}] run tag @p[scores={CurrentRole=35,RoleOfNum=1}] add MadMan
execute as @s[scores={DeathCount=0,CurrentRole=10..39}] run tag @p[scores={CurrentRole=35,RoleOfNum=1}] add NonWolf
execute as @s[scores={DeathCount=0,CurrentRole=40}] run tag @p[scores={CurrentRole=35,RoleOfNum=1}] add Cat

tag @s[scores={DeathCount=0,CurrentRole=1..4}] remove WereWolf
tag @s[scores={DeathCount=0,CurrentRole=5..9}] remove MadMan
tag @s[scores={DeathCount=0,CurrentRole=10..39}] remove NonWolf
tag @s[scores={DeathCount=0,CurrentRole=40}] remove Cat
tag @s[scores={DeathCount=0}] add NonWolf

## Store Recent Time
scoreboard players set @s RoleStolen 1
scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] NumberOfStolen = #MWL NumberOfStolen
scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] TargetOfStolen = @s NumOfPlayers
scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] ThiefStealSecond = #MWL Second
scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] ThiefStealTick = #MWL Tick
scoreboard players add #MWL NumberOfStolen 1

## Thief Role Done
execute as @s[scores={DeathCount=0,CurrentRole=22}] run scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] CountOfBakery = @s CountOfBakery
execute as @s[scores={DeathCount=0,CurrentRole=1..34}] run scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] RoleDone = @s RoleDone
execute as @s[scores={DeathCount=0,CurrentRole=35}] run scoreboard players set @p[scores={CurrentRole=35,RoleOfNum=1}] RoleDone 0
execute as @s[scores={DeathCount=0,CurrentRole=36..40}] run scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] RoleDone = @s RoleDone
execute as @s[scores={DeathCount=1}] run scoreboard players set @p[scores={CurrentRole=35,RoleOfNum=1}] RoleDone 0

## Reset Thief Trigger
scoreboard players reset @p[scores={CurrentRole=35,RoleOfNum=1}] TargetOfRole

## Exchange Role
execute as @s[scores={DeathCount=0,CurrentRole=1..34}] run scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] CurrentRole = @s CurrentRole
execute as @s[scores={DeathCount=0,CurrentRole=35}] run scoreboard players set @p[scores={CurrentRole=35,RoleOfNum=1}] CurrentRole 20
execute as @s[scores={DeathCount=0,CurrentRole=36..40}] run scoreboard players operation @p[scores={CurrentRole=35,RoleOfNum=1}] CurrentRole = @s CurrentRole
scoreboard players set @s[scores={DeathCount=0}] CurrentRole 20
execute as @s[scores={DeathCount=1..2}] run scoreboard players set @p[scores={CurrentRole=35,RoleOfNum=1}] CurrentRole 20

## Send a Message of wolves
execute as @s[scores={DeathCount=0,PrevRole=1..4}] run tellraw @p[scores={CurrentRole=1..4,RoleOfNum=1}] ["",{"text":"    仲間は ","color":"white"},{"selector":"@a[scores={CurrentRole=1..4}]","color":"red"},{"text":" です。","color":"white"}]

## Send a Message of Fanatic
execute as @s[scores={DeathCount=0,PrevRole=6}] run tellraw @p[scores={CurrentRole=6,RoleOfNum=1}] ["",{"text":"    人狼は ","color":"white"},{"selector":"@a[scores={CurrentRole=1..4}]","color":"red"},{"text":" です。","color":"white"}]

## Send a Message of immoralists
execute as @s[scores={DeathCount=0,PrevRole=11}] run tellraw @p[scores={CurrentRole=11,RoleOfNum=1}] ["",{"text":"    羽衣狐は ","color":"white"},{"selector":"@a[scores={CurrentRole=10}]","color":"dark_purple"},{"text":" です。","color":"white"}]

## Send a Message of masons
execute as @s[scores={DeathCount=0,PrevRole=24}] run scoreboard players operation @p[scores={CurrentRole=24,RoleOfNum=1}] MasonPair = @s MasonPair
scoreboard players reset @s[scores={DeathCount=0,PrevRole=24}] MasonPair
execute as @a[scores={CurrentRole=24}] if score @s MasonPair = @p[scores={CurrentRole=24,RoleOfNum=1}] MasonPair run tag @s add MasonTag
tellraw @p[scores={CurrentRole=24,RoleOfNum=1}] ["",{"text":"    仲間は ","color":"white"},{"selector":"@a[tag=MasonTag,scores={CurrentRole=24}]","color":"dark_green"},{"text":" です。","color":"white"}]
tag @a remove MasonTag

## Send a Common Message
tellraw @p[scores={PrevRole=35,RoleOfNum=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={PrevRole=35,RoleOfNum=1}] [""]