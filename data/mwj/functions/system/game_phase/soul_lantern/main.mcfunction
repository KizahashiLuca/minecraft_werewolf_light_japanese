####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect dropping lantern
execute as @a[predicate=mwj:items/lantern/detect_lantern_user] at @s run function mwj:system/game_phase/soul_lantern/throw_lantern

## Detect dropping soul lantern
execute as @a[predicate=mwj:items/lantern/detect_soul_lantern_user] at @s run function mwj:system/game_phase/soul_lantern/throw_soul_lantern
scoreboard players reset @a[team=Player] TeleporterTemp

## Set scoreboard
scoreboard players remove @a[predicate=mwj:items/lantern/detect_lantern_user_score] DropLantern 1
scoreboard players remove @a[predicate=mwj:items/lantern/detect_soul_lantern_user_score] DropSoulLantern 1
scoreboard players reset @a[predicate=mwj:items/lantern/detect_lantern_user_score_error] DropLantern
scoreboard players reset @a[predicate=mwj:items/lantern/detect_soul_lantern_user_score_error] DropSoulLantern