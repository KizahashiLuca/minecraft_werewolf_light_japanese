####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Spawn item
loot spawn ~ ~ ~ loot mwj:game_phase/2ndrole/ghost/dummy_item
## Merge data
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["DummyItem"]}}},sort=nearest,limit=1] PickupDelay set value 40s
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["DummyItem"]}}},sort=nearest,limit=1] Age set value 0s
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["DummyItem"]}}},sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:9b}]
## Clear item
item replace entity @s inventory.0 with minecraft:air
