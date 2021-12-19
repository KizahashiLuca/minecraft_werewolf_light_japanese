####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set scoreboards
scoreboard players set #MWL Tick 0
scoreboard players operation #MWL Second = #MWL HideTime
scoreboard players set #MWL Phase 10
scoreboard players set #MWL BossbarMax 20
scoreboard players operation #MWL BossbarMax *= #MWL HideTime
scoreboard players set #MWL BossbarVal 20
scoreboard players operation #MWL BossbarVal *= #MWL Second