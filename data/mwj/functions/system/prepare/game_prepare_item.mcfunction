###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : Feb 11, 2019
## Version: alpha-0.1
###############################

## give special item
execute if score Time NUM matches 3.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/totem
execute if score Time NUM matches 3.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/potion_death2
execute if score Time NUM matches 3.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/stick
execute if score Time NUM matches 4.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/pearl
execute if score Time NUM matches 5.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/hoe
execute if score Time NUM matches 6.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/potion_speed
execute if score Time NUM matches 7.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/totem
execute if score Time NUM matches 8.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/potion_invisible
execute if score Time NUM matches 9.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/potion_jump
execute if score Time NUM matches 10.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/potion_death1
execute if score Time NUM matches 11.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/totem
execute if score Time NUM matches 12.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/potion_death2
execute if score Time NUM matches 13.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/hoe
execute if score Time NUM matches 14.. run execute as @r[nbt={Inventory:[]},limit=1] run function mwj:item/special/potion_invisible

## common item
function mwj:item/common/bow
function mwj:item/common/arrow
function mwj:item/common/torch
