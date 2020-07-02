###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set Prev choice
scoreboard players operation Time PrevAddedStick = Time AddedStick
scoreboard players operation Time PrevAddedTotem = Time AddedTotem
scoreboard players operation Time PrevAddedDeath2 = Time AddedDeath2
scoreboard players operation Time PrevAddedPearl = Time AddedPearl
scoreboard players operation Time PrevAddedHoe = Time AddedHoe

scoreboard players operation Time PrevAddedElytra = Time AddedElytra
scoreboard players operation Time PrevAddedSnowbal = Time AddedSnowball
scoreboard players operation Time PrevAddedInvis = Time AddedInvis
scoreboard players operation Time PrevAddedSpeed = Time AddedSpeed
scoreboard players operation Time PrevAddedJump = Time AddedJump

scoreboard players operation Time PrevAddedTrident = Time AddedTrident
scoreboard players operation Time PrevAddedConduit = Time AddedConduit
scoreboard players operation Time PrevAddedCrossbo = Time AddedCrossbow
scoreboard players operation Time PrevAddedHoneyBl = Time AddedHoneyBlock
scoreboard players operation Time PrevAddedLantern = Time AddedLantern

## Set inventory
function mwj:system/setting/decision_item_addition_common/selected_set