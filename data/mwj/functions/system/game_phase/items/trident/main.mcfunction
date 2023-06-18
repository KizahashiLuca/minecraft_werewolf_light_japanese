####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Trident
execute as @a[predicate=mwj:items/trident/have_broken_trident] at @s run function mwj:system/game_phase/items/trident/clear_trident
execute as @e[predicate=mwj:items/trident/thrown_trident] at @s run function mwj:system/game_phase/items/trident/detect_trident
execute as @a[predicate=mwj:items/trident/kill_log] at @s run function mwj:system/game_phase/items/trident/kill_log_trident