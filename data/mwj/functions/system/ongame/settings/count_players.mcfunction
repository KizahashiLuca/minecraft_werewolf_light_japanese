###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## RE-Count Players
execute as @a[team=Player] run scoreboard players add #MWL NumOfPlayers 1
## Test
execute if entity @p[tag=MWLtest] run scoreboard players set #MWL NumOfPlayers 15
## Set phase
execute if score #MWL NumOfPlayers matches ..2 run scoreboard players set #MWL Phase 0
