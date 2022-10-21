####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Summon clouds
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["TwistingVinesBegin"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}

## Not setblock twisting vines
execute unless block ~ ~ ~ minecraft:air run kill @e[predicate=mwj:items/twisting_vines/detect_cloud,sort=nearest,limit=1]
execute unless block ~ ~ ~ minecraft:air run loot spawn ~ ~ ~ loot mwj:item/special/twisting_vines

## Setblock twisting vines
scoreboard players set @s TwistVinesCount 0
execute if block ~ ~ ~ minecraft:air run function mwj:system/game_phase/items/twisting_vines/setblock_vines

## Kill item
kill @s