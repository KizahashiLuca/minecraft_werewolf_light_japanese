###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Detect conduit set
execute at @s unless score @e[type=minecraft:item,nbt={Item:{id:"minecraft:conduit",tag:{Tags:"MWLitem"}}},sort=nearest,limit=1] NUM matches 1.. run scoreboard players operation @e[type=minecraft:item,nbt={Item:{id:"minecraft:conduit",tag:{Tags:"MWLitem"}}},sort=nearest,limit=1] NUM = @s NUM