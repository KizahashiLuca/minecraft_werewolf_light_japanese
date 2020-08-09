###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Recount
scoreboard players remove #MWL RandomCount 1

## Randomize
scoreboard players operation #MWL RandomSeed *= #MWL RandomMultiplier
scoreboard players operation #MWL RandomSeed %= #MWL RandomModder
scoreboard players operation #MWL RandomAnswer = #MWL RandomSeed

## Loop
execute unless score #MWL RandomCount matches ..0 run function mwj:system/preparation/random_generator/randomizing