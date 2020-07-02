###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Reset choice
scoreboard players operation Time AddedStick = Time PrevAddedStick
scoreboard players operation Time AddedTotem = Time PrevAddedTotem
scoreboard players operation Time AddedDeath2 = Time PrevAddedDeath2
scoreboard players operation Time AddedPearl = Time PrevAddedPearl
scoreboard players operation Time AddedHoe = Time PrevAddedHoe

scoreboard players operation Time AddedElytra = Time PrevAddedElytra
scoreboard players operation Time AddedSnowball = Time PrevAddedSnowbal
scoreboard players operation Time AddedInvis = Time PrevAddedInvis
scoreboard players operation Time AddedSpeed = Time PrevAddedSpeed
scoreboard players operation Time AddedJump = Time PrevAddedJump

scoreboard players operation Time AddedTrident = Time PrevAddedTrident
scoreboard players operation Time AddedConduit = Time PrevAddedConduit
scoreboard players operation Time AddedCrossbow = Time PrevAddedCrossbo
scoreboard players operation Time AddedHoneyBlock = Time PrevAddedHoneyBl
scoreboard players operation Time AddedLantern = Time PrevAddedLantern

## Set item addition
function mwj:system/setting/decision_item_addition_common/selected_set