####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Calculate Rest Number of Add Roles
scoreboard players operation #MWL PrevAddedRole = #MWL AddedRole

## Set Prev choice
scoreboard players operation #MWL PrevAddedWolf = #MWL AddedWolf
scoreboard players operation #MWL PrevAddedClWolf = #MWL AddedClWolf
scoreboard players operation #MWL PrevAddedWhWolf = #MWL AddedWhWolf
scoreboard players operation #MWL PrevAddedMadman = #MWL AddedMadman
scoreboard players operation #MWL PrevAddedFanatic = #MWL AddedFanatic

scoreboard players operation #MWL PrevAddedFox = #MWL AddedFox
scoreboard players operation #MWL PrevAddedImmoral = #MWL AddedImmoral
scoreboard players operation #MWL PrevAddedVilla = #MWL AddedVilla
scoreboard players operation #MWL PrevAddedBakery = #MWL AddedBakery
scoreboard players operation #MWL PrevAddedMason = #MWL AddedMason

scoreboard players operation #MWL PrevAddedSeer = #MWL AddedSeer
scoreboard players operation #MWL PrevAddedFkSeer = #MWL AddedFkSeer
scoreboard players operation #MWL PrevAddedSage = #MWL AddedSage
scoreboard players operation #MWL PrevAddedMedium = #MWL AddedMedium
scoreboard players operation #MWL PrevAddedDetec = #MWL AddedDetec

scoreboard players operation #MWL PrevAddedThief = #MWL AddedThief
scoreboard players operation #MWL PrevAddedLtRed = #MWL AddedLtRed
scoreboard players operation #MWL PrevAddedCat = #MWL AddedCat
# scoreboard players operation #MWL PrevAdded = #MWL Added
# scoreboard players operation #MWL PrevAdded = #MWL Added

## Set inventory
function mwj:system/setting/role_addition_decision/common/selected_set