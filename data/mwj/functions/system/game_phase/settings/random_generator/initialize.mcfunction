####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Initialize a seed
scoreboard players set #MWL RandomSeed 0

execute as @a at @p[predicate=mwj:player/host] run summon minecraft:armor_stand ~ ~ ~ {Tags:["MWL_initializer_random"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute at @p[predicate=mwj:player/host] run spreadplayers ~ ~ 100 100 false @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand]

scoreboard players set @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] RandomSeed 0
execute as @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] store result score @s RandomAnswer run data get entity @s Pos[0] 1
execute as @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] run scoreboard players operation @s RandomAnswer %= #MWL Num10000
execute as @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] run scoreboard players operation @s RandomSeed += @s RandomAnswer
execute as @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] store result score @s RandomAnswer run data get entity @s Pos[1] 1
execute as @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] run scoreboard players operation @s RandomAnswer %= #MWL Num10000
execute as @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] run scoreboard players operation @s RandomSeed += @s RandomAnswer
execute as @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] store result score @s RandomAnswer run data get entity @s Pos[2] 1
execute as @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] run scoreboard players operation @s RandomAnswer %= #MWL Num10000
execute as @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] run scoreboard players operation @s RandomSeed += @s RandomAnswer

execute as @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand] run scoreboard players operation #MWL RandomSeed += @s RandomSeed

kill @e[predicate=mwj:system/game_phase/settings/random_generator/initializer_stand]