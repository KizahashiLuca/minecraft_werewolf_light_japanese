###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Minecraft 1.15
replaceitem entity @p[tag=Host] inventory.0 minecraft:honeycomb_block{Tag:"Ver"}
execute if entity @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:honeycomb_block",Count:1b,tag:{Tag:"Ver"}}]}] run scoreboard players set Time Version 15