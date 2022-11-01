####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Calculate time every second
execute if predicate mwj:system/common/time/tick/zero run function mwj:system/common/time/second

## Calculate time every tick
scoreboard players remove #MWL Tick 1
execute if predicate mwj:system/common/time/tick/minus run scoreboard players set #MWL Tick 19

## Set bossbar
scoreboard players set #MWL BossbarVal 20
scoreboard players operation #MWL BossbarVal *= #MWL Second
scoreboard players operation #MWL BossbarVal += #MWL Tick
execute store result bossbar mwj:bossbar value run scoreboard players get #MWL BossbarVal