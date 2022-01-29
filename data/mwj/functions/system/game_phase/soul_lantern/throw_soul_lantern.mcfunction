####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect throwing soul_lantern
execute as @s run function mwj:system/game_phase/soul_lantern/compare_soul_lantern_tag
kill @e[predicate=mwj:items/lantern/detect_soul_lantern_position,sort=nearest,limit=1]
data remove storage mwj:teleporter Teleporter.Temp
data remove storage mwj:teleporter Teleporter.SoulLantern
## Set scoreboard
scoreboard players remove @s[predicate=mwj:items/lantern/detect_soul_lantern_user_score] DropSoulLantern 1
scoreboard players reset @s[predicate=mwj:items/lantern/detect_soul_lantern_user_score_error] DropSoulLantern