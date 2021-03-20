###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Minecraft 1.14
replaceitem entity @p[tag=Host] inventory.0 minecraft:lantern{Tags:"Ver"}
execute if entity @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:lantern",Count:1b,tag:{Tags:"Ver"}}]}] run scoreboard players set #MWL Version 14