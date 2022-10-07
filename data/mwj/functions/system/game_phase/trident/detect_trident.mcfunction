####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Hit in branch
execute as @s[predicate=mwj:items/trident/summon_thunderbolt] run function mwj:system/game_phase/trident/summon_thunderbolt

## Throw
execute as @a[predicate=mwj:items/trident/trident_thrower_score] run function mwj:system/game_phase/trident/throw_trident