####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Conduit
execute as @a[predicate=mwj:items/conduit/detect_user] at @s run function mwj:system/game_phase/items/conduit/set_conduit
execute as @e[predicate=mwj:items/conduit/detect_position_set] at @s if entity @p[team=Player,scores={DeathCount=0},distance=..2] run function mwj:system/game_phase/items/conduit/detect_conduit

## Set scoreboard
scoreboard players remove @a[predicate=mwj:items/conduit/detect_user_score] DropConduit 1
scoreboard players reset @a[predicate=mwj:items/conduit/detect_user_score_error] DropConduit