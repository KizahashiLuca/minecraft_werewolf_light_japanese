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
scoreboard players operation #MWL AddedStick = #MWL PrevAddedStick
scoreboard players operation #MWL AddedTotem = #MWL PrevAddedTotem
scoreboard players operation #MWL AddedDeath = #MWL PrevAddedDeath
scoreboard players operation #MWL AddedPearl = #MWL PrevAddedPearl
scoreboard players operation #MWL AddedHoe = #MWL PrevAddedHoe

scoreboard players operation #MWL AddedElytra = #MWL PrevAddedElytra
scoreboard players operation #MWL AddedSnowball = #MWL PrevAddedSnowbal
scoreboard players operation #MWL AddedInvis = #MWL PrevAddedInvis
scoreboard players operation #MWL AddedSpeed = #MWL PrevAddedSpeed
scoreboard players operation #MWL AddedJump = #MWL PrevAddedJump

scoreboard players operation #MWL AddedTrident = #MWL PrevAddedTrident
scoreboard players operation #MWL AddedConduit = #MWL PrevAddedConduit
scoreboard players operation #MWL AddedCrossbow = #MWL PrevAddedCrossbo
scoreboard players operation #MWL AddedHoneyBlock = #MWL PrevAddedHoneyBl
scoreboard players operation #MWL AddedLantern = #MWL PrevAddedLantern

scoreboard players operation #MWL AddedVines = #MWL PrevAddedVines
# scoreboard players operation #MWL Added = #MWL PrevAdded
# scoreboard players operation #MWL Added = #MWL PrevAdded
# scoreboard players operation #MWL Added = #MWL PrevAdded
# scoreboard players operation #MWL Added = #MWL PrevAdded

## Set item addition
function mwj:system/setting/item_addition_decision_common/selected_set