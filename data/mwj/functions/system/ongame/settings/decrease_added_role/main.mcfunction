###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## If the Number is Short
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedWolf matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedMadman matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/madman
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedVilla matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/villager
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedSeer matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/seer
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedMedium matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/medium
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedImmoral matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/immoralist
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedFox matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/fox
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedMason matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/mason
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedDetec matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/detective
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedThief matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/thief
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedCat matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/cat
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedFkSeer matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/fake_seer
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedSage matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/sage
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedWhWolf matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/white_wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedFanatic matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/fanatic
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedLtRed matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/little_red
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedClWolf matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/clever_wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedBakery matches 1.. run function mwj:system/ongame/settings/decrease_added_role/roles/bakery

execute if score #MWL PrevAddedRole matches 1.. run function mwj:system/ongame/settings/decrease_added_role/main