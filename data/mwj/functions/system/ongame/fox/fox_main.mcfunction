###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Fox Dead
execute as @s[scores={DEATH=1},advancements={mwj:be_killed_by_wolf=true}] run function mwj:system/ongame/fox/fox_dead
execute as @s[scores={DEATH=1},advancements={mwj:be_killed_by_nonwolf=true}] run scoreboard players set @s ROLE_OF_NUM 2
execute as @s[scores={DEATH=1},advancements={mwj:be_killed_by_cat=true}] run scoreboard players set @s ROLE_OF_NUM 2

## Detect Respawn
execute if score @s[scores={ROLE_OF_NUM=1}] SPAWN_TIME_SEC = Time SECOND if score @s[scores={ROLE_OF_NUM=1}] SPAWN_TIME_TICK = Time TICK run function mwj:system/ongame/fox/fox_respawn

## Give Effect
effect give @s[scores={ROLE_OF_NUM=1}] minecraft:invisibility 10 1 true
effect clear @s[scores={ROLE_OF_NUM=2}]

## Hit by NonWolf
scoreboard players reset @s[scores={ROLE_OF_NUM=2}] SPAWN_TIME_SEC
scoreboard players reset @s[scores={ROLE_OF_NUM=2}] SPAWN_TIME_TICK
scoreboard players set @s[scores={ROLE_OF_NUM=2}] ROLE_OF_NUM 0

## Detect Death
execute as @s[scores={DEATH=1,ROLE_OF_NUM=0}] run scoreboard players remove Time PURPLE 1