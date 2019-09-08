###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Remove Variables for Game
scoreboard objectives remove GAME
scoreboard objectives remove NUM
scoreboard objectives remove ROLE
scoreboard objectives remove WHITE
scoreboard objectives remove BLACK
scoreboard objectives remove PURPLE
## Remove Variables for Timer
scoreboard objectives remove SECOND
scoreboard objectives remove TICK
scoreboard objectives remove 20
## Variables for Info
scoreboard objectives remove Info_wolf
scoreboard objectives remove Info_madman
scoreboard objectives remove Info_fox
scoreboard objectives remove Info_villager
scoreboard objectives remove Info_seer
scoreboard objectives remove Info_medium
scoreboard objectives remove Info_mason
scoreboard objectives remove Info_detective
scoreboard objectives remove Info_cat
## Remove Variables for Seer/Medium/Detective/Cat
scoreboard objectives remove DONE
scoreboard objectives remove ROLE_OF_NUM
scoreboard objectives remove STRAY_BY_CAT
scoreboard objectives remove SEER_OBJ
scoreboard objectives remove MEDIUM_OBJ
scoreboard objectives remove DETECTIVE_OBJ
## Remove Variables for Fox
scoreboard objectives remove RESPAWN
scoreboard objectives remove SPAWN_TIME_SEC
scoreboard objectives remove SPAWN_TIME_TICK
## Remove Variables for Redstone Torch
scoreboard objectives remove doNotDrop
scoreboard objectives remove TORCH
## Remove Variables for Kill Log
scoreboard objectives remove DEATH
scoreboard objectives remove KILLER
scoreboard objectives remove VICTIM
scoreboard objectives remove KILLER_NUM
scoreboard objectives remove VICTIM_NUM
scoreboard objectives remove VICTIM_LOG_TEMP
scoreboard objectives remove KILLER_LOG_TEMP
## Remove Players
scoreboard players reset @a
scoreboard players reset Time
scoreboard players reset 残り時間
scoreboard players reset あなたは人狼
scoreboard players reset あなたは狂人
scoreboard players reset あなたは羽衣狐
scoreboard players reset あなたは村人
scoreboard players reset あなたは預言者
scoreboard players reset あなたは霊媒師
scoreboard players reset あなたは共有者
scoreboard players reset あなたは探偵
scoreboard players reset あなたは猫又

## Kill Entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:area_effect_cloud]
effect clear @a
clear @a

## Remove Tags
tag @a remove host
tag @a remove WereWolf
tag @a remove NonWolf
tag @a remove Cat
tag @a remove StrayBullet

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_wolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player

## Remove a Team
team remove Wolf
team remove Madman
team remove Fox
team remove Villager
team remove Seer
team remove Medium
team remove Mason
team remove Detective
team remove Cat

## Change Gamerules
gamemode creative @a
gamerule showDeathMessages true
gamerule sendCommandFeedback true
