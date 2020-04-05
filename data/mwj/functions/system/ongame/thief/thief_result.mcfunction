###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Send a Common Message
tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" から役職を盗んだ結果、","color":"white"}]

## Send a Message that the Stolen is dead
execute if score @s DEATH matches 1..2 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Wolf
execute if score @s ROLE matches 1 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"人狼","color":"red","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Madman
execute if score @s ROLE matches 2 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"狂人","color":"light_purple","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Fox
execute if score @s ROLE matches 3 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Villager
execute if score @s ROLE matches 4 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Seer
execute if score @s ROLE matches 5 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"預言者","color":"aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Medium
execute if score @s ROLE matches 6 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"霊媒師","color":"yellow","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Mason
execute if score @s ROLE matches 7 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"共有者","color":"dark_green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Detective
execute if score @s ROLE matches 8 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"探偵","color":"dark_aqua","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Thief
execute if score @s ROLE matches 9 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"村人","color":"green","bold":true},{"text":" になりました","color":"white"}]

## Send a Message that the Stolen is Cat
execute if score @s ROLE matches 10 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"  ","color":"white"},{"text":"あなたは ","color":"white"},{"text":"猫又","color":"gold","bold":true},{"text":" になりました","color":"white"}]

## Put Tag
tag @p[scores={ROLE=9,ROLE_OF_NUM=1}] remove NonWolf
execute if score @s DEATH matches 1 run tag @p[scores={ROLE=9,ROLE_OF_NUM=1}] add NonWolf
execute if score @s ROLE matches 1..2 if score @s DEATH matches 0 run tag @p[scores={ROLE=9,ROLE_OF_NUM=1}] add WereWolf
execute if score @s ROLE matches 3..9 if score @s DEATH matches 0 run tag @p[scores={ROLE=9,ROLE_OF_NUM=1}] add NonWolf
execute if score @s ROLE matches 10 if score @s DEATH matches 0 run tag @p[scores={ROLE=9,ROLE_OF_NUM=1}] add Cat

execute if score @s ROLE matches 1..2 if score @s DEATH matches 0 run tag @s remove WereWolf
execute if score @s ROLE matches 3..9 if score @s DEATH matches 0 run tag @s remove NonWolf
execute if score @s ROLE matches 10 if score @s DEATH matches 0 run tag @s remove Cat
execute if score @s DEATH matches 0 run tag @s add NonWolf

## Store Recent Time
scoreboard players set @s STOLEN 1
scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] STEAL_NUM = Time STEAL_NUM
scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] STEAL_TARGET = @s NUM
scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] STEAL_TIME_SEC = Time SECOND
scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] STEAL_TIME_TICK = Time TICK
scoreboard players add Time STEAL_NUM 1

## Thief Role Done
execute if score @s ROLE matches 9 if score @s DEATH matches 0 run scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] DONE 0
execute unless score @s ROLE matches 9 if score @s DEATH matches 0 run scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] DONE = @s DONE
execute if score @s DEATH matches 1 run scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] DONE 0

## Reset Thief Trigger
scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE_TARGET 0

## Exchange Role
execute if score @s ROLE matches 9 if score @s DEATH matches 0 run scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE 4
execute unless score @s ROLE matches 9 if score @s DEATH matches 0 run scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE = @s ROLE
execute if score @s DEATH matches 0 run scoreboard players set @s ROLE 4
execute if score @s DEATH matches 1 run scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE 4

## Send a Message
execute if score @s PREV_ROLE matches 1 if score @s DEATH matches 0 run tellraw @p[scores={ROLE=1,ROLE_OF_NUM=1}] ["",{"text":"    仲間は ","color":"white"},{"selector":"@a[scores={ROLE=1}]","color":"red"},{"text":" です。","color":"white"}]

## Send a Common Message
tellraw @p[scores={PREV_ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"----------------------------------\n","color":"white"}]