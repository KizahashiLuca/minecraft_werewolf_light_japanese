####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Calculate time
scoreboard players remove #MWL Second 1
execute if score #MWL Second matches ..-1 run scoreboard players set #MWL Second 0

## Store time for bossbar
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL Second
execute if score #MWL Phase matches 10 run function mwj:system/common/time/hide_time
execute if score #MWL Phase matches 11 run function mwj:system/common/time/game_time

## Process the sound system
execute if score #MWL Second matches 4..10 as @a at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if score #MWL Second matches 1..3 as @a at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #MWL Second matches 0 as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Reset tick
execute unless score #MWL Second matches 0 run scoreboard players set #MWL Tick 19