###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Clear Inventory
clear @p[tag=Host]

## Set Scoreboard
scoreboard players set @p[tag=Host] SelectPrevPage 0
scoreboard players set @p[tag=Host] SelectNextPage 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectAllDel 0
scoreboard players set @p[tag=Host] SelectNumber 0
scoreboard players set @p[tag=Host] SelectOkay 0
scoreboard players set @p[tag=Host] SelectItem1 0
scoreboard players set @p[tag=Host] SelectItem2 0
scoreboard players set @p[tag=Host] SelectItem3 0
scoreboard players set @p[tag=Host] SelectItem4 0
scoreboard players set @p[tag=Host] SelectItem5 0
scoreboard players set @p[tag=Host] SelectDecide1 0
scoreboard players set @p[tag=Host] SelectDecide2 0
scoreboard players set @p[tag=Host] SelectDecide3 0
scoreboard players set @p[tag=Host] SelectDecide4 0
scoreboard players set @p[tag=Host] SelectDecide5 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Set items in mode
execute if score #MWL Phase matches 80 run scoreboard players set #MWL Phase 90
execute if score #MWL Phase matches 90 run function mwj:system/setting/decision_role_addition1/set_added
execute if score #MWL Phase matches 91 run function mwj:system/setting/decision_role_addition2/set_added
execute if score #MWL Phase matches 92 run function mwj:system/setting/decision_role_addition3/set_added
execute if score #MWL Phase matches 90 run function mwj:system/setting/decision_role_addition1/set_inventory
execute if score #MWL Phase matches 91 run function mwj:system/setting/decision_role_addition2/set_inventory
execute if score #MWL Phase matches 92 run function mwj:system/setting/decision_role_addition3/set_inventory

## Set items
replaceitem entity @p[tag=Host] inventory.9 minecraft:white_banner{display:{Name:'"\\u00A7r\\u00A7c前へ"'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vhr,Color:14},{Pattern:br,Color:0},{Pattern:tr,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.17 minecraft:white_banner{display:{Name:'"\\u00A7r\\u00A7c次へ"'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vh,Color:14},{Pattern:bl,Color:0},{Pattern:tl,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.21 minecraft:map{display:{Name:'"\\u00A7r\\u00A7e全選択解除"'},HideFlags:39} 1
execute if score #MWL AddedRole matches 1.. run replaceitem entity @p[tag=Host] inventory.23 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a残り追加可能人数"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39} 1

## Set Nether Star above Selected Role
execute if score #MWL AddedRole1 matches 1.. run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedRole1",HideFlags:39} 1
execute if score #MWL AddedRole2 matches 1.. run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedRole2",HideFlags:39} 1
execute if score #MWL AddedRole3 matches 1.. run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedRole3",HideFlags:39} 1
execute if score #MWL AddedRole4 matches 1.. run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedRole4",HideFlags:39} 1
execute if score #MWL AddedRole5 matches 1.. run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedRole5",HideFlags:39} 1

scoreboard objectives add AddedRoleTmp dummy
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole
function mwj:system/setting/decision_role_addition_common/added_rest_number
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole1
function mwj:system/setting/decision_role_addition_common/selected_role1
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole2
function mwj:system/setting/decision_role_addition_common/selected_role2
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole3
function mwj:system/setting/decision_role_addition_common/selected_role3
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole4
function mwj:system/setting/decision_role_addition_common/selected_role4
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole5
function mwj:system/setting/decision_role_addition_common/selected_role5
scoreboard objectives remove AddedRoleTmp