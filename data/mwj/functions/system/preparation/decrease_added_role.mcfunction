###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## If the Number is Short
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedWolf matches 1.. run function mwj:system/preparation/decrease_added_role/wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedMadman matches 1.. run function mwj:system/preparation/decrease_added_role/madman
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedVilla matches 1.. run function mwj:system/preparation/decrease_added_role/villager
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedSeer matches 1.. run function mwj:system/preparation/decrease_added_role/seer
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedMedium matches 1.. run function mwj:system/preparation/decrease_added_role/medium
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedImmoral matches 1.. run function mwj:system/preparation/decrease_added_role/immoralist
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedFox matches 1.. run function mwj:system/preparation/decrease_added_role/fox
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedMason matches 1.. run function mwj:system/preparation/decrease_added_role/mason
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedDetec matches 1.. run function mwj:system/preparation/decrease_added_role/detective
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedThief matches 1.. run function mwj:system/preparation/decrease_added_role/thief
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedCat matches 1.. run function mwj:system/preparation/decrease_added_role/cat
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedFkSeer matches 1.. run function mwj:system/preparation/decrease_added_role/fake_seer
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedSage matches 1.. run function mwj:system/preparation/decrease_added_role/sage
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedWhWolf matches 1.. run function mwj:system/preparation/decrease_added_role/white_wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedFanatic matches 1.. run function mwj:system/preparation/decrease_added_role/fanatic
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedLtRed matches 1.. run function mwj:system/preparation/decrease_added_role/little_red
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedClWolf matches 1.. run function mwj:system/preparation/decrease_added_role/clever_wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL AddedBakery matches 1.. run function mwj:system/preparation/decrease_added_role/bakery

execute if score #MWL PrevAddedRole matches 1.. run function mwj:system/preparation/decrease_added_role