####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Hit in branch
execute as @s[predicate=mwj:items/trident/summon_thunderbolt] run function mwj:system/game_phase/trident/summon_thunderbolt

## Throw
execute as @a[predicate=mwj:items/trident/trident_thrower_score] run function mwj:system/game_phase/trident/throw_trident