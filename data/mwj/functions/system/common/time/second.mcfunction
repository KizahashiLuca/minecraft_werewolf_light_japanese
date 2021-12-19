####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Calculate time
scoreboard players remove #MWL Second 1
execute if score #MWL Second matches ..-1 run scoreboard players set #MWL Second 59

## Store time for bossbar
execute if predicate mwj:phase/hide_phase run function mwj:system/common/time/hide_time
execute if predicate mwj:phase/game_phase run function mwj:system/common/time/game_time

## Process the sound system
execute if score #MWL Second matches 3..9 as @a at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if score #MWL Second matches 0..2 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1