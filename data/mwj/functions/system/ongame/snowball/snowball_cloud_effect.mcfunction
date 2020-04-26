###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

execute at @s run effect give @a[gamemode=adventure,distance=0..3] minecraft:slowness 15 6 true
execute at @s run effect give @a[gamemode=adventure,distance=0..3] minecraft:jump_boost 15 128 true
kill @s