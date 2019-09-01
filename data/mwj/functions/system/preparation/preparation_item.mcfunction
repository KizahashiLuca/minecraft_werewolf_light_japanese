###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Give Special Items
execute if score Time NUM matches 3.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/totem
execute if score Time NUM matches 3.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/potion_death2
execute if score Time NUM matches 3.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/stick
execute if score Time NUM matches 4.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/pearl
execute if score Time NUM matches 5.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/hoe
execute if score Time NUM matches 6.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/potion_speed
execute if score Time NUM matches 7.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/elytra
execute if score Time NUM matches 8.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/potion_invisible
execute if score Time NUM matches 9.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/potion_jump
execute if score Time NUM matches 10.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/crossbow
execute if score Time NUM matches 11.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/totem
execute if score Time NUM matches 12.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/potion_death2
execute if score Time NUM matches 13.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/hoe
execute if score Time NUM matches 14.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/potion_invisible

## Give Common Items
execute as @a run function mwj:system/preparation/item/common/bow
execute as @a run function mwj:system/preparation/item/common/arrow
execute as @a run function mwj:system/preparation/item/common/torch
