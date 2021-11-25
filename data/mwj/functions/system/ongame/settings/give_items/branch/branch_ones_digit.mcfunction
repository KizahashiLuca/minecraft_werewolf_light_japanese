####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Store Valiable
scoreboard players set #MWL TEMP_DIGIT 0

## Branch ones digit
execute if score #MWL ChooseStick matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/stick
execute if score #MWL ChooseStick matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseTotem matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/totem_of_undying
execute if score #MWL ChooseTotem matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseDeathPot matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/potion_death
execute if score #MWL ChooseDeathPot matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChoosePearl matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/ender_pearl
execute if score #MWL ChoosePearl matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseHoe matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/diamond_hoe
execute if score #MWL ChooseHoe matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseElytra matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/elytra
execute if score #MWL ChooseElytra matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseSnowball matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/snowball
execute if score #MWL ChooseSnowball matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseInvisPot matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/potion_invisible
execute if score #MWL ChooseInvisPot matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseSpeedPot matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/potion_speed
execute if score #MWL ChooseSpeedPot matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseJumpPot matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/potion_jump
execute if score #MWL ChooseJumpPot matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseTrident matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/trident
execute if score #MWL ChooseTrident matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseConduit matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/conduit
execute if score #MWL ChooseConduit matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseCrossbow matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/crossbow
execute if score #MWL ChooseCrossbow matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseHoneyBlock matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/honey_block
execute if score #MWL ChooseHoneyBlock matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseLantern matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/lantern
execute if score #MWL ChooseLantern matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseVines matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/twisting_vines
execute if score #MWL ChooseVines matches 1 run scoreboard players add #MWL TEMP_DIGIT 1

execute if score #MWL ChooseSpyglass matches 1 if score #MWL ONES_DIGIT >= #MWL TEMP_DIGIT as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/ongame/settings/give_items/special/spyglass
execute if score #MWL ChooseSpyglass matches 1 run scoreboard players add #MWL TEMP_DIGIT 1