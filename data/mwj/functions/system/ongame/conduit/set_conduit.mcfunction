###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Detect conduit set
execute at @s unless score @e[type=minecraft:item,nbt={Item:{id:"minecraft:conduit",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1] NumOfPlayers matches 1.. run scoreboard players operation @e[type=minecraft:item,nbt={Item:{id:"minecraft:conduit",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1] NumOfPlayers = @s NumOfPlayers