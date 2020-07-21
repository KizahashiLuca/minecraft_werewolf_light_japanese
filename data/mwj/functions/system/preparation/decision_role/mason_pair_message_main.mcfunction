###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Set scoreboard
scoreboard players set #MWL MASON_PAIR 1
execute as @a[scores={CurrentRole=21}] run function mwj:system/preparation/decision_role/mason_pair_message_sub
scoreboard players set #MWL MASON_PAIR 0