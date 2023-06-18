####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Store Valiable
scoreboard players set #MWL KindsTempDigit 0

## Branch ones digit
execute if score #MWL ChooseStick matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/stick
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/stick run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseTotem matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/totem_of_undying
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/totem_of_undying run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseDeathPot matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/potion_death
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/potion_death run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChoosePearl matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/ender_pearl
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/ender_pearl run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseHoe matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/diamond_hoe
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/diamond_hoe run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseElytra matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/elytra
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/elytra run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseSnowball matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/snowball
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/snowball run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseInvisPot matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/potion_invisible
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/potion_invisible run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseSpeedPot matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/potion_speed
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/potion_speed run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseJumpPot matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/potion_jump
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/potion_jump run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseTrident matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/trident
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/trident run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseConduit matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/conduit
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/conduit run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseCrossbow matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/crossbow
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/crossbow run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseHoneyBlock matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/honey_block
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/honey_block run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseLantern matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/lantern
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/lantern run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseVines matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/twisting_vines
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/twisting_vines run scoreboard players add #MWL KindsTempDigit 1

execute if score #MWL ChooseSpyglass matches 1 if score #MWL KindsOnesDigit >= #MWL KindsTempDigit as @p[team=Player,tag=!MWLitem,sort=random] run function mwj:system/game_phase/settings/give_items/special/spyglass
execute if predicate mwj:system/setting_phase/choose_item/chosen_item/spyglass run scoreboard players add #MWL KindsTempDigit 1