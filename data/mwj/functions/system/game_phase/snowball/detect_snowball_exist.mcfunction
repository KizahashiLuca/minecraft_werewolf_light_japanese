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
tag @s add DetectSnowballUnexist

## Detect if not snowball hit
execute as @e[predicate=mwj:items/snowball/detect_snowball] run tag @e[predicate=mwj:items/snowball/certain_cloud] remove DetectSnowballUnexist

## If snowball hit, explode
execute as @s[predicate=mwj:items/snowball/certain_cloud] run function mwj:system/game_phase/snowball/explode_flashbang