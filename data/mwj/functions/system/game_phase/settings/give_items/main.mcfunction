####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Give Common Items
execute as @a[team=Player] run loot replace entity @s hotbar.0 3 loot mwj:item/common

## Set KindOfItems (Kind of Items)
scoreboard players set #MWL KindOfItems 0
execute if predicate mwj:setting_phase/choose_item/chosen_item/stick run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/totem_of_undying run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/potion_death run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/ender_pearl run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/diamond_hoe run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/elytra run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/snowball run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/potion_invisible run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/potion_speed run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/potion_jump run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/trident run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/conduit run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/crossbow run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/honey_block run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/lantern run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/twisting_vines run scoreboard players add #MWL KindOfItems 1
execute if predicate mwj:setting_phase/choose_item/chosen_item/spyglass run scoreboard players add #MWL KindOfItems 1
## Calculate ones digit
scoreboard players operation #MWL KindsOnesDigit = #MWL NumOfPlayers
scoreboard players remove #MWL KindsOnesDigit 1
scoreboard players operation #MWL KindsOnesDigit %= #MWL KindOfItems
## Calculate tens digit
scoreboard players operation #MWL KindsTensDigit = #MWL NumOfPlayers
scoreboard players remove #MWL KindsTensDigit 1
scoreboard players operation #MWL KindsTensDigit /= #MWL KindOfItems

## Give Special Items
execute if score #MWL KindsTensDigit matches 1.. as @a[team=Player] run function mwj:system/game_phase/settings/give_items/branch/branch_tens_digit
execute if score #MWL KindsTensDigit matches 0 run function mwj:system/game_phase/settings/give_items/branch/branch_ones_digit

## Remove tag
tag @a remove MWLitem