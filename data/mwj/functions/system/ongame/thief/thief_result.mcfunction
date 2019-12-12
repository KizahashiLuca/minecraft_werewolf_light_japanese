###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
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

## Effect Instant Damage of Fox by Seer
#### Put Tag
#execute if score @s ROLE matches 3 if score @s DEATH matches 0 run tag @s add SeeredFox
#### Store SEER Number
#execute if score @s ROLE matches 3 if score @s DEATH matches 0 run scoreboard players operation @s STRAY_BY_FOX = @p[scores={ROLE=5,ROLE_OF_NUM=1}] NUM
#### Deal Instant Damage to Fox
#execute if score @s ROLE matches 3 if score @s DEATH matches 0 run effect give @s minecraft:instant_damage 1 10 true

## Send a Common Message
tellraw @p[scores={ROLE=9,ROLE_OF_NUM=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Thief Role Done
scoreboard players operation @p[scores={ROLE=9,ROLE_OF_NUM=1}] DONE = @s DONE

## Reset Thief Trigger
scoreboard players set @p[scores={ROLE=9,ROLE_OF_NUM=1}] ROLE_TARGET 0
