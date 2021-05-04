####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

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
execute if score #MWL Phase matches 90 run function mwj:system/setting/role_addition_decision_1/set_added
execute if score #MWL Phase matches 91 run function mwj:system/setting/role_addition_decision_2/set_added
execute if score #MWL Phase matches 92 run function mwj:system/setting/role_addition_decision_3/set_added
execute if score #MWL Phase matches 93 run function mwj:system/setting/role_addition_decision_4/set_added
execute if score #MWL Phase matches 90 run function mwj:system/setting/role_addition_decision_1/set_inventory
execute if score #MWL Phase matches 91 run function mwj:system/setting/role_addition_decision_2/set_inventory
execute if score #MWL Phase matches 92 run function mwj:system/setting/role_addition_decision_3/set_inventory
execute if score #MWL Phase matches 93 run function mwj:system/setting/role_addition_decision_4/set_inventory

## Set items
loot replace entity @p[tag=Host] inventory.9 loot mwj:setting/common/white_banner_left
loot replace entity @p[tag=Host] inventory.17 loot mwj:setting/common/white_banner_right
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/common/barrier
loot replace entity @p[tag=Host] inventory.21 loot mwj:setting/common/map
execute if score #MWL AddedRole matches 1.. run loot replace entity @p[tag=Host] inventory.23 loot mwj:setting/role_addition/nether_star_rest
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/common/structure_void

## Set Nether Star above Selected Role
execute if score #MWL AddedRole1 matches 1.. run loot replace entity @p[tag=Host] inventory.2 loot mwj:setting/role_addition/nether_star_role1
execute if score #MWL AddedRole2 matches 1.. run loot replace entity @p[tag=Host] inventory.3 loot mwj:setting/role_addition/nether_star_role2
execute if score #MWL AddedRole3 matches 1.. run loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/role_addition/nether_star_role3
execute if score #MWL AddedRole4 matches 1.. run loot replace entity @p[tag=Host] inventory.5 loot mwj:setting/role_addition/nether_star_role4
execute if score #MWL AddedRole5 matches 1.. run loot replace entity @p[tag=Host] inventory.6 loot mwj:setting/role_addition/nether_star_role5

scoreboard objectives add AddedRoleTmp dummy
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole
function mwj:system/setting/role_addition_decision_common/added_rest_number
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole1
function mwj:system/setting/role_addition_decision_common/selected_role1
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole2
function mwj:system/setting/role_addition_decision_common/selected_role2
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole3
function mwj:system/setting/role_addition_decision_common/selected_role3
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole4
function mwj:system/setting/role_addition_decision_common/selected_role4
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedRole5
function mwj:system/setting/role_addition_decision_common/selected_role5
scoreboard objectives remove AddedRoleTmp