###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Set scoreboard
scoreboard players set #MWL MasonPair 1
execute as @a[scores={CurrentRole=21}] run function mwj:system/preparation/decision_role/mason_pair_message_sub
scoreboard players set #MWL MasonPair 0