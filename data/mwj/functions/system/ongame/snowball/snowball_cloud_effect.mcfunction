###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

execute at @s run effect give @a[gamemode=adventure,distance=0..3] minecraft:slowness 15 255 true
execute at @s run effect give @a[gamemode=adventure,distance=0..3] minecraft:jump_boost 15 128 true
kill @s