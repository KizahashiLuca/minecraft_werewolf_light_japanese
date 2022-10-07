####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Trident
execute as @a[predicate=mwj:items/trident/have_broken_trident] at @s run function mwj:system/game_phase/trident/clear_trident
execute as @e[predicate=mwj:items/trident/thrown_trident] at @s run function mwj:system/game_phase/trident/detect_trident
execute as @a[predicate=mwj:items/trident/kill_log] at @s run function mwj:system/game_phase/trident/kill_log_trident