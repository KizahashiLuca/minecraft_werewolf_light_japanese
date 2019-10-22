###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Fox Dead
execute as @s[scores={DEATH=1},advancements={mwj:be_killed_by_wolf=true}] run function mwj:system/ongame/fox/fox_dead
execute as @s[scores={DEATH=1},advancements={mwj:be_killed_by_nonwolf=true}] run scoreboard players set @s ROLE_OF_NUM 2
execute as @s[scores={DEATH=1},advancements={mwj:be_killed_by_cat=true}] run scoreboard players set @s ROLE_OF_NUM 2

## Detect Respawn
execute if score @s ROLE_OF_NUM matches 1 if score @s SPAWN_TIME_SEC = Time SECOND if score @s SPAWN_TIME_TICK = Time TICK run function mwj:system/ongame/fox/fox_respawn

## Give Effect
execute if score @s ROLE_OF_NUM matches 1 run effect give @s minecraft:invisibility 10 1 true
execute if score @s ROLE_OF_NUM matches 2 run effect clear @s

## Hit by NonWolf
execute if score @s ROLE_OF_NUM matches 2 as @s run scoreboard players reset @s SPAWN_TIME_SEC
execute if score @s ROLE_OF_NUM matches 2 as @s run scoreboard players reset @s SPAWN_TIME_TICK
execute if score @s ROLE_OF_NUM matches 2 as @s run scoreboard players set @s ROLE_OF_NUM 0

## Detect Death
execute if score @s DEATH matches 1 run scoreboard players remove Time PURPLE 1