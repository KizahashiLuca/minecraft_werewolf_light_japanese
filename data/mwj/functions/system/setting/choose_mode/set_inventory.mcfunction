###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Replace Inventory
execute if score #MWL SetDummyRole matches 0 run loot replace entity @p[tag=Host] inventory.9 loot mwj:setting/choose_mode/carved_pumpkin
execute if score #MWL SetDummyRole matches 1 run loot replace entity @p[tag=Host] inventory.9 loot mwj:setting/choose_mode/jack_o_lantern

loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/choose_mode/redstone
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/choose_mode/glowstone_dust
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/choose_mode/gunpowder
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/choose_mode/map
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/choose_mode/chest

execute if score #MWL AddedRoleNumber matches 1.. run loot replace entity @p[tag=Host] inventory.17 loot mwj:setting/choose_mode/armor_stand
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/choose_mode/barrier
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/choose_mode/structure_void