###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Send a Common Message
tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" から役職を盗んだ結果、","color":"white"}]

## Send a Message that the Stolen is dead
execute as @s[scores={DEATH=1..2}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Wolf
execute as @s[scores={ROLE=1,DEATH=0}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"人狼","color":"red","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Madman
execute as @s[scores={ROLE=2,DEATH=0}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"狂人","color":"light_purple","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Fox
execute as @s[scores={ROLE=3,DEATH=0}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Villager
execute as @s[scores={ROLE=4,DEATH=0}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Seer
execute as @s[scores={ROLE=5,DEATH=0}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"予言者","color":"aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Medium
execute as @s[scores={ROLE=6,DEATH=0}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"霊媒師","color":"yellow","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Mason
execute as @s[scores={ROLE=7,DEATH=0}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"共有者","color":"dark_green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Detective
execute as @s[scores={ROLE=8,DEATH=0}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Thief
execute as @s[scores={ROLE=9,DEATH=0}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Cat
execute as @s[scores={ROLE=10,DEATH=0}] run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"猫又","color":"gold","bold":true},{"text":" になりました","color":"white"}]

## Put Tag
tag @p[scores={ROLE=9,ROLE_OF_NUM=1}] remove NonWolf
execute as @s[scores={DEATH=1..2}] run tag @p[scores={ROLE=9,ROLE_OF_NUM=1}] add NonWolf
execute as @s[scores={DEATH=0,ROLE=1..2}] run tag @p[scores={ROLE=9,ROLE_OF_NUM=1}] add WereWolf
execute as @s[scores={DEATH=0,ROLE=3..9}] run tag @p[scores={ROLE=9,ROLE_OF_NUM=1}] add NonWolf
execute as @s[scores={DEATH=0,ROLE=10}] run tag @p[scores={ROLE=9,ROLE_OF_NUM=1}] add Cat

tag @s[scores={DEATH=0,ROLE=1..2}] remove WereWolf
tag @s[scores={DEATH=0,ROLE=3..9}] remove NonWolf
tag @s[scores={DEATH=0,ROLE=10}] remove Cat
tag @s[scores={DEATH=0}] add NonWolf

## Store Recent Time
scoreboard players set @s STOLEN 1
scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] STEAL_NUM = #MWL STEAL_NUM
scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] STEAL_TARGET = @s NUM
scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] ThiefStealSecond = #MWL Second
scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] ThiefStealTick = #MWL Tick
scoreboard players add #MWL STEAL_NUM 1

## Thief Role Done
execute as @s[scores={DEATH=0,ROLE=1..8}] run scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] DONE = @s DONE
execute as @s[scores={DEATH=0,ROLE=9}] run scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] DONE 0
execute as @s[scores={DEATH=0,ROLE=10}] run scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] DONE = @s DONE
execute as @s[scores={DEATH=1}] run scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] DONE 0

## Reset Thief Trigger
scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE_TARGET 0

## Exchange Role
execute as @s[scores={DEATH=0,ROLE=1..8}] run scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE = @s ROLE
execute as @s[scores={DEATH=0,ROLE=9}] run scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE 4
execute as @s[scores={DEATH=0,ROLE=10}] run scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE = @s ROLE
scoreboard players set @s[scores={DEATH=0}] ROLE 4
execute as @s[scores={DEATH=1..2}] run scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE 4

## Send a Message
execute as @s[scores={DEATH=0,PREV_ROLE=1}] run tellraw @p[scores={ROLE=1,ROLE_OF_NUM=1}] ["",{"text":"    仲間は ","color":"white"},{"selector":"@a[scores={ROLE=1}]","color":"red"},{"text":" です。","color":"white"}]

## Send a Common Message
tellraw @p[scores={PREV_ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"----------------------------------\n","color":"white"}]