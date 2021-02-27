###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Summon clouds
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["TwistingVinesBegin"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}

## Not setblock twisting vines
execute unless block ~ ~ ~ minecraft:air run kill @e[type=minecraft:area_effect_cloud,tag=TwistingVinesBegin,sort=nearest,limit=1]
execute unless block ~ ~ ~ minecraft:air run loot spawn ~ ~ ~ loot mwj:item/special/twisting_vines
execute unless block ~ ~ ~ minecraft:air run kill @e[type=minecraft:item,tag=MWLitem,sort=nearest,limit=1]

## Setblock twisting vines
scoreboard players set @s TwistVinesCount 0
execute if block ~ ~ ~ minecraft:air run function mwj:system/ongame/twisting_vines/setblock_vines

## Kill item
kill @s