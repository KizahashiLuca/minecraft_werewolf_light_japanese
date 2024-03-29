####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add a tag
tag @s add DetectSnowballUnexist

## Detect if not snowball hit
execute as @e[predicate=mwj:items/snowball/snowball] if score @s NumberOfSnowball = @e[predicate=mwj:items/snowball/certain_cloud,limit=1] NumberOfSnowball run tag @e[predicate=mwj:items/snowball/certain_cloud,limit=1] remove DetectSnowballUnexist

## If snowball hit, explode
execute as @s[predicate=mwj:items/snowball/certain_cloud] run function mwj:system/game_phase/items/snowball/explode_flashbang