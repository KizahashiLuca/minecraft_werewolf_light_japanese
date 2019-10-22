###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Detect the Number of Players is not Enough
execute if score Time NUM matches ..2 run scoreboard players set Time GAME 0

## Detect the Number of Players is increment/decrement
scoreboard players operation Time DENOMINATOR = Time PrevAddedRole
scoreboard players operation Time PrevAddedRole -= Time AddedRole
execute if score Time PrevAddedRole matches 1.. run scoreboard players operation Time DENOMINATOR -= Time PrevAddedRole
execute if score Time PrevAddedRole matches 1.. run function mwj:system/preparation/preparation_added_role_minus

## Set Added Role Number
scoreboard players operation Time PrevAddedRole = Time DENOMINATOR
scoreboard players operation Time VILLAGER -= Time AddedFox
scoreboard players operation Time VILLAGER -= Time AddedFox
scoreboard players operation Time VILLAGER -= Time AddedMason
scoreboard players operation Time VILLAGER -= Time AddedMason
scoreboard players operation Time VILLAGER -= Time AddedDetec
scoreboard players operation Time VILLAGER -= Time AddedCat
scoreboard players operation Time FOX = Time AddedFox
scoreboard players operation Time SEER += Time AddedFox
scoreboard players operation Time MASON = Time AddedMason
scoreboard players operation Time MASON += Time AddedMason
scoreboard players operation Time DETECTIVE = Time AddedDetec
scoreboard players operation Time CAT = Time AddedCat