####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Reset choice
scoreboard players operation #MWL AddedRole = #MWL PrevAddedRole

scoreboard players operation #MWL AddedWolf = #MWL PrevAddedWolf
scoreboard players operation #MWL AddedClWolf = #MWL PrevAddedClWolf
scoreboard players operation #MWL AddedWhWolf = #MWL PrevAddedWhWolf
scoreboard players operation #MWL AddedMadman = #MWL PrevAddedMadman
scoreboard players operation #MWL AddedFanatic = #MWL PrevAddedFanatic

scoreboard players operation #MWL AddedFox = #MWL PrevAddedFox
scoreboard players operation #MWL AddedImmoral = #MWL PrevAddedImmoral
scoreboard players operation #MWL AddedVilla = #MWL PrevAddedVilla
scoreboard players operation #MWL AddedBakery = #MWL PrevAddedBakery
scoreboard players operation #MWL AddedMason = #MWL PrevAddedMason

scoreboard players operation #MWL AddedSeer = #MWL PrevAddedSeer
scoreboard players operation #MWL AddedFkSeer = #MWL PrevAddedFkSeer
scoreboard players operation #MWL AddedSage = #MWL PrevAddedSage
scoreboard players operation #MWL AddedMedium = #MWL PrevAddedMedium
scoreboard players operation #MWL AddedDetec = #MWL PrevAddedDetec

scoreboard players operation #MWL AddedThief = #MWL PrevAddedThief
scoreboard players operation #MWL AddedLtRed = #MWL PrevAddedLtRed
scoreboard players operation #MWL AddedCat = #MWL PrevAddedCat
# scoreboard players operation #MWL Added = #MWL PrevAdded
# scoreboard players operation #MWL Added = #MWL PrevAdded

## Set item addition
function mwj:system/setting/role_addition_decision/common/selected_set