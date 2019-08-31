###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Set Initial Number of Role to Zero
scoreboard players set Time ROLE_OF_NUM 0

## Repeat until ROLE_OF_NUM and SEER values ​​are the same
execute as @a[sort=random] run function mwj:system/preparation/decision_role/seer_calculation

## Add & Set Scoreboard of Seer
scoreboard objectives add SEER_OBJ trigger
scoreboard players reset @a[scores={ROLE=5}] SEER_OBJ
scoreboard players enable @a[scores={ROLE=5}] SEER_OBJ