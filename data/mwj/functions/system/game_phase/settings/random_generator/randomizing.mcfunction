####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Recount
scoreboard players remove #MWL RandomCount 1

## Randomize
scoreboard players operation #MWL RandomSeed *= #MWL RandomMultiplier
scoreboard players operation #MWL RandomSeed %= #MWL RandomModder
scoreboard players operation #MWL RandomAnswer = #MWL RandomSeed

## Loop
execute unless score #MWL RandomCount matches ..0 run function mwj:system/game_phase/settings/random_generator/randomizing