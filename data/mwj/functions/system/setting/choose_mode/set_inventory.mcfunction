####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear inventory
clear @p[tag=Host]

## Count number of roles
function mwj:system/setting/casting_decision/common/count_number_of_roles

## Replace Inventory
execute if score #MWL SetDummyRole matches 0 run loot replace entity @p[tag=Host] inventory.9 loot mwj:setting/choose_mode/carved_pumpkin
execute if score #MWL SetDummyRole matches 1 run loot replace entity @p[tag=Host] inventory.9 loot mwj:setting/choose_mode/jack_o_lantern
execute if score #MWL SetCasting matches 0 run loot replace entity @p[tag=Host] inventory.0 loot mwj:setting/choose_mode/ender_pearl
execute if score #MWL SetCasting matches 1 run loot replace entity @p[tag=Host] inventory.0 loot mwj:setting/choose_mode/ender_eye

loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/choose_mode/choose_hide_time
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/choose_mode/glowstone_dust
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/choose_mode/gunpowder
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/choose_mode/map
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/choose_mode/chest

execute if score #MWL SetCasting matches 0 if score #MWL AddedRoleNumber matches 1.. run loot replace entity @p[tag=Host] inventory.17 loot mwj:setting/choose_mode/armor_stand_role_addition
execute if score #MWL SetCasting matches 1 run loot replace entity @p[tag=Host] inventory.8 loot mwj:setting/choose_mode/armor_stand_casting
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/choose_mode/barrier

execute if score #MWL GameMode matches 1 if score #MWL NumOfWhite > #MWL NumOfBlack if score #MWL NumOfWhite matches 1.. if score #MWL NumOfBlack matches 1.. run loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/choose_mode/structure_void
execute if score #MWL GameMode matches 2 if score #MWL NumOfWhite matches 2.. if score #MWL NumOfBlack matches 1.. run loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/choose_mode/structure_void
execute if score #MWL GameMode matches 3 if score #MWL NumOfWhite matches 1.. if score #MWL NumOfBlack matches 1.. run loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/choose_mode/structure_void