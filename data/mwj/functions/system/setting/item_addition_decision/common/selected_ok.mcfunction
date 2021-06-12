####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Prev choice
scoreboard players operation #MWL PrevAddedStick = #MWL AddedStick
scoreboard players operation #MWL PrevAddedTotem = #MWL AddedTotem
scoreboard players operation #MWL PrevAddedDeath = #MWL AddedDeath
scoreboard players operation #MWL PrevAddedPearl = #MWL AddedPearl
scoreboard players operation #MWL PrevAddedHoe = #MWL AddedHoe

scoreboard players operation #MWL PrevAddedElytra = #MWL AddedElytra
scoreboard players operation #MWL PrevAddedSnowbal = #MWL AddedSnowball
scoreboard players operation #MWL PrevAddedInvis = #MWL AddedInvis
scoreboard players operation #MWL PrevAddedSpeed = #MWL AddedSpeed
scoreboard players operation #MWL PrevAddedJump = #MWL AddedJump

scoreboard players operation #MWL PrevAddedTrident = #MWL AddedTrident
scoreboard players operation #MWL PrevAddedConduit = #MWL AddedConduit
scoreboard players operation #MWL PrevAddedCrossbo = #MWL AddedCrossbow
scoreboard players operation #MWL PrevAddedHoneyBl = #MWL AddedHoneyBlock
scoreboard players operation #MWL PrevAddedLantern = #MWL AddedLantern

scoreboard players operation #MWL PrevAddedVines = #MWL AddedVines
# scoreboard players operation #MWL PrevAdded = #MWL Added
# scoreboard players operation #MWL PrevAdded = #MWL Added
# scoreboard players operation #MWL PrevAdded = #MWL Added
# scoreboard players operation #MWL PrevAdded = #MWL Added

## Set inventory
function mwj:system/setting/item_addition_decision/common/selected_set