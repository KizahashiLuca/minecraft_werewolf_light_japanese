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

execute as @a at @p[tag=Host] run summon minecraft:armor_stand ~ ~ ~ {Tags:["MWLrandom"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute at @p[tag=Host] run spreadplayers ~ ~ 100 100 false @e[type=minecraft:armor_stand,tag=MWLrandom]

scoreboard players set #MWL TempVariable 10000
scoreboard players set @e[type=minecraft:armor_stand,tag=MWLrandom] RandomSeed 0
execute as @e[type=minecraft:armor_stand,tag=MWLrandom] store result score @s RandomAnswer run data get entity @s Pos[0] 1
execute as @e[type=minecraft:armor_stand,tag=MWLrandom] run scoreboard players operation @s RandomAnswer %= #MWL TempVariable
execute as @e[type=minecraft:armor_stand,tag=MWLrandom] run scoreboard players operation @s RandomSeed += @s RandomAnswer
execute as @e[type=minecraft:armor_stand,tag=MWLrandom] store result score @s RandomAnswer run data get entity @s Pos[1] 1
execute as @e[type=minecraft:armor_stand,tag=MWLrandom] run scoreboard players operation @s RandomAnswer %= #MWL TempVariable
execute as @e[type=minecraft:armor_stand,tag=MWLrandom] run scoreboard players operation @s RandomSeed += @s RandomAnswer
execute as @e[type=minecraft:armor_stand,tag=MWLrandom] store result score @s RandomAnswer run data get entity @s Pos[2] 1
execute as @e[type=minecraft:armor_stand,tag=MWLrandom] run scoreboard players operation @s RandomAnswer %= #MWL TempVariable
execute as @e[type=minecraft:armor_stand,tag=MWLrandom] run scoreboard players operation @s RandomSeed += @s RandomAnswer

execute as @e[type=minecraft:armor_stand,tag=MWLrandom] run scoreboard players operation #MWL RandomSeed += @s RandomSeed

kill @e[type=minecraft:armor_stand,tag=MWLrandom]