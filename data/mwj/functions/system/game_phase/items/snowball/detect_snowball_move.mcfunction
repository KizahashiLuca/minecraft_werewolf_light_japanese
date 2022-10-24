####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add a tag
tag @s add DetectSnowballMove

## Set snowball number
execute as @s[predicate=mwj:items/snowball/not_set_number] run scoreboard players add #MWL NumberOfSnowball 1
scoreboard players operation @s[predicate=mwj:items/snowball/not_set_number] NumberOfSnowball = #MWL NumberOfSnowball

## Remove area_effect_cloud preview position of snowball
execute as @e[predicate=mwj:items/snowball/cloud] if score @s NumberOfSnowball = @e[predicate=mwj:items/snowball/certain_snowball,limit=1] NumberOfSnowball run kill @s

## Summon area_effect_cloud current position of snowball
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["CloudOfSnowball","JustBorn"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:20}

## Set scoreboard to area_effect_cloud by snowball score
scoreboard players operation @e[predicate=mwj:items/snowball/just_born_cloud,limit=1] NumberOfSnowball = @s NumberOfSnowball

## Remove tag
tag @e[predicate=mwj:items/snowball/just_born_cloud] remove JustBorn
tag @s remove DetectSnowballMove