####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Store Valiable
scoreboard players set #MWL TEMP_DIGIT 0

## Branch ones digit
execute if score #MWL AddedStick matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/stick
execute if score #MWL AddedStick matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedTotem matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/totem_of_undying
execute if score #MWL AddedTotem matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedDeath matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/potion_death
execute if score #MWL AddedDeath matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedPearl matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/ender_pearl
execute if score #MWL AddedPearl matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedHoe matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/diamond_hoe
execute if score #MWL AddedHoe matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedElytra matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/elytra
execute if score #MWL AddedElytra matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedSnowball matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/snowball
execute if score #MWL AddedSnowball matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedInvis matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/potion_invisible
execute if score #MWL AddedInvis matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedSpeed matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/potion_speed
execute if score #MWL AddedSpeed matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedJump matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/potion_jump
execute if score #MWL AddedJump matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedTrident matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/trident
execute if score #MWL AddedTrident matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedConduit matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/conduit
execute if score #MWL AddedConduit matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedCrossbow matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/crossbow
execute if score #MWL AddedCrossbow matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedHoneyBlock matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/honey_block
execute if score #MWL AddedHoneyBlock matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedLantern matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/lantern
execute if score #MWL AddedLantern matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL AddedVines matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/twisting_vines
execute if score #MWL AddedVines matches 1 run scoreboard players add #MWL TEMP_DIGIT 1