###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Fox Dead
execute as @s[scores={DEATH=1},advancements={mwj:be_killed_by_wolf=true}] run function mwj:system/ongame/fox/fox_dead
execute as @s[scores={DEATH=1},advancements={mwj:be_killed_by_nonwolf=true}] run scoreboard players set @s ROLE_OF_NUM 2
execute as @s[scores={DEATH=1},advancements={mwj:be_killed_by_cat=true}] run scoreboard players set @s ROLE_OF_NUM 2

## Detect Respawn
execute if score @s ROLE_OF_NUM matches 1 if score @s SPAWN_TIME_SECOND = Time Limit if score @s SPAWN_TIME_TICK = Time TIME as @s run function mwj:system/ongame/fox/fox_respawn

## Hit by NonWolf
execute if score @s ROLE_OF_NUM matches 2 as @s run scoreboard players reset @s SPAWN_TIME_SECOND
execute if score @s ROLE_OF_NUM matches 2 as @s run scoreboard players reset @s SPAWN_TIME_TICK
execute if score @s ROLE_OF_NUM matches 2 as @s run scoreboard players set @s ROLE_OF_NUM 0