###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Set Scoreboard
scoreboard objectives add RESPAWN minecraft.custom:minecraft.time_since_death
scoreboard objectives add SPAWN_TIME_SECOND dummy
scoreboard objectives add SPAWN_TIME_TICK dummy

## Set Initial Number of Role to Zero
scoreboard players set Time ROLE_OF_NUM 0

## Repeat until ROLE_OF_NUM and FOX values ​​are the same
execute as @a[sort=random] run function mwj:system/preparation/decision_role/fox_calculation

## Set Scoreboard
scoreboard players set @a[scores={ROLE=3}] SPAWN_TIME_SECOND 0
scoreboard players set @a[scores={ROLE=3}] SPAWN_TIME_TICK 0