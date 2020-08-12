###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Reset choice
scoreboard players operation #MWL AddedRole = #MWL AddedRoleNumber
scoreboard players set #MWL AddedWolf 0
scoreboard players set #MWL AddedMadman 0
scoreboard players set #MWL AddedVilla 0
scoreboard players set #MWL AddedSeer 0
scoreboard players set #MWL AddedMedium 0

scoreboard players set #MWL AddedFox 0
scoreboard players set #MWL AddedMason 0
scoreboard players set #MWL AddedDetec 0
scoreboard players set #MWL AddedThief 0
scoreboard players set #MWL AddedCat 0

scoreboard players set #MWL AddedFkSeer 0
scoreboard players set #MWL AddedSage 0
scoreboard players set #MWL AddedWhWolf 0
scoreboard players set #MWL AddedFanatic 0
scoreboard players set #MWL AddedImmoral 0

# scoreboard players set #MWL Added 0
# scoreboard players set #MWL Added 0
# scoreboard players set #MWL Added 0
# scoreboard players set #MWL Added 0
# scoreboard players set #MWL Added 0

## Set Item Addition
execute if score #MWL Phase matches 90 run function mwj:system/setting/role_addition_decision_1/set_added
execute if score #MWL Phase matches 91 run function mwj:system/setting/role_addition_decision_2/set_added
execute if score #MWL Phase matches 92 run function mwj:system/setting/role_addition_decision_3/set_added
execute if score #MWL Phase matches 93 run function mwj:system/setting/role_addition_decision_4/set_added
function mwj:system/setting/role_addition_decision_common/set_inventory