####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Honey block
execute as @a[predicate=mwj:items/honey_block/detect_user] at @s run function mwj:system/game_phase/honey_block/set_honey_block
execute as @e[predicate=mwj:items/honey_block/detect_position_set] at @s run function mwj:system/game_phase/honey_block/summon_area_effect_cloud

## Effect
effect clear @a[team=Player,scores={DeathCount=0}] minecraft:slowness
execute as @e[predicate=mwj:items/honey_block/detect_cloud] at @s run function mwj:system/game_phase/honey_block/effect_player

## Set scoreboard
scoreboard players remove @a[predicate=mwj:items/honey_block/detect_user_score] DropHoneyBlock 1
scoreboard players reset @a[predicate=mwj:items/honey_block/detect_user_score_error] DropHoneyBlock