####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Spawn item
loot spawn ~ ~ ~ loot mwj:system/game_phase/common/dummy_item
## Merge data
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["DummyItem"]}}},sort=nearest,limit=1] PickupDelay set value 40s
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["DummyItem"]}}},sort=nearest,limit=1] Age set value 0s
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["DummyItem"]}}},sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:31b}]
## Clear item
item replace entity @s inventory.22 with minecraft:air
