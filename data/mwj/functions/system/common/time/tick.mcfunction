####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Calculate time every second
execute if score #MWL Tick matches 0 run function mwj:system/common/time/second

## Calculate time every tick
scoreboard players remove #MWL Tick 1
execute if score #MWL Tick matches ..-1 run scoreboard players set #MWL Tick 19

## Set bossbar
scoreboard players set #MWL BossbarVal 20
scoreboard players operation #MWL BossbarVal *= #MWL Second
scoreboard players operation #MWL BossbarVal += #MWL Tick
execute store result bossbar mwj:bossbar value run scoreboard players get #MWL BossbarVal