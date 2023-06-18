####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect dropping lantern
execute as @a[predicate=mwj:items/lantern/detect_lantern_user] at @s run function mwj:system/game_phase/items/soul_lantern/throw_lantern

## Detect dropping soul lantern
execute as @a[predicate=mwj:items/lantern/detect_soul_lantern_user] at @s run function mwj:system/game_phase/items/soul_lantern/throw_soul_lantern
scoreboard players reset @a[predicate=mwj:player/player] TeleporterTemp

## Set scoreboard
scoreboard players remove @a[predicate=mwj:items/lantern/detect_lantern_user_score] DropLantern 1
scoreboard players remove @a[predicate=mwj:items/lantern/detect_soul_lantern_user_score] DropSoulLantern 1
scoreboard players reset @a[predicate=mwj:items/lantern/detect_lantern_user_score_error] DropLantern
scoreboard players reset @a[predicate=mwj:items/lantern/detect_soul_lantern_user_score_error] DropSoulLantern