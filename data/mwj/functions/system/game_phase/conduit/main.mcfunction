####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Conduit
execute as @a[predicate=mwj:items/conduit/detect_user] run function mwj:system/items/conduit/set_conduit
execute as @e[predicate=mwj:items/conduit/detect_position_set] at @s if entity @p[team=Player,scores={DeathCount=0},distance=..2] run function mwj:system/items/conduit/detect_conduit