####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add a tag
tag @s add SetConduit

## Detect player
execute as @a[team=Player,scores={DeathCount=0},distance=..2] unless score @s NumOfPlayers = @e[predicate=mwj:items/conduit/detect_position_set,tag=SetConduit,limit=1,scores={NumOfPlayers=1..}] NumOfPlayers run tag @e[predicate=mwj:items/conduit/detect_position_set,tag=SetConduit,limit=1] add ExplodeConduit
execute as @s[predicate=mwj:items/conduit/detect_position_set,tag=ExplodeConduit] run function mwj:system/game_phase/conduit/explode_conduit

## Remove a tag
tag @s remove SetConduit
tag @e[tag=ExplodeConduit] remove ExplodeConduit