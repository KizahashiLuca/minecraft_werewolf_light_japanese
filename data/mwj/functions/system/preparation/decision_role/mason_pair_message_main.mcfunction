###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set scoreboard
scoreboard players set Time MASON_PAIR 1
execute as @a[scores={ROLE=7}] run function mwj:system/preparation/decision_role/mason_pair_message_sub
scoreboard players set Time MASON_PAIR 0