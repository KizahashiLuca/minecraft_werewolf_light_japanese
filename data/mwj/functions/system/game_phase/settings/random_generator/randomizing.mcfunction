####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Recount
scoreboard players remove #MWL RandomCount 1

## Randomize
scoreboard players operation #MWL RandomSeed *= #MWL RandomMultiplier
scoreboard players operation #MWL RandomSeed %= #MWL RandomModder
scoreboard players operation #MWL RandomAnswer = #MWL RandomSeed

## Loop
execute if predicate mwj:system/game_phase/settings/random_generator/count_gt_one run function mwj:system/game_phase/settings/random_generator/randomizing