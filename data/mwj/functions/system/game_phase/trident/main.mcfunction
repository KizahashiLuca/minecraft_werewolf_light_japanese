####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Trident
execute as @a[predicate=mwj:items/trident/have_broken_trident] at @s run function mwj:system/game_phase/trident/clear_trident
execute as @e[predicate=mwj:items/trident/thrown_trident] at @s run function mwj:system/game_phase/trident/detect_trident
execute as @a[predicate=mwj:items/trident/kill_log] at @s run function mwj:system/game_phase/trident/kill_log_trident