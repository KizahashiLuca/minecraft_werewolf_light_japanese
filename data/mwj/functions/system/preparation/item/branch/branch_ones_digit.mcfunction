###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Store Valiable
scoreboard players set #MWL TEMP_DIGIT 0

## Branch ones digit
execute if score #MWL AddedStick matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/stick
execute if score #MWL AddedStick matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedTotem matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/totem
execute if score #MWL AddedTotem matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedDeath2 matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/potion_death2
execute if score #MWL AddedDeath2 matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedPearl matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/pearl
execute if score #MWL AddedPearl matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedHoe matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/hoe
execute if score #MWL AddedHoe matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedElytra matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/elytra
execute if score #MWL AddedElytra matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedSnowball matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/snowball
execute if score #MWL AddedSnowball matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedInvis matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/potion_invisible
execute if score #MWL AddedInvis matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedSpeed matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/potion_speed
execute if score #MWL AddedSpeed matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedJump matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/potion_jump
execute if score #MWL AddedJump matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedTrident matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/trident
execute if score #MWL AddedTrident matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedConduit matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/conduit
execute if score #MWL AddedConduit matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedCrossbow matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/crossbow
execute if score #MWL AddedCrossbow matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedHoneyBlock matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/honey_block
execute if score #MWL AddedHoneyBlock matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedLantern matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @r[nbt={Inventory:[]},team=Player] run function mwj:system/preparation/item/special/soul_lantern
execute if score #MWL AddedLantern matches 1 run scoreboard players add #MWL TEMP_DIGIT 1