###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Branch ones digit
execute if score Time ONES_DIGIT matches 0.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/stick
execute if score Time ONES_DIGIT matches 1.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/totem
execute if score Time ONES_DIGIT matches 2.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/potion_death2
execute if score Time ONES_DIGIT matches 3.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/pearl
execute if score Time ONES_DIGIT matches 4.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/hoe
execute if score Time ONES_DIGIT matches 5.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/crossbow
execute if score Time ONES_DIGIT matches 6.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/elytra
execute if score Time ONES_DIGIT matches 7.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/potion_invisible
execute if score Time ONES_DIGIT matches 8.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/potion_speed
execute if score Time ONES_DIGIT matches 9.. as @r[nbt={Inventory:[]}] run function mwj:system/preparation/item/special/potion_jump