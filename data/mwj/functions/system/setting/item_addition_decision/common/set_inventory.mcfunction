####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
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
scoreboard players set @p[tag=Host] SelectAllSet 0
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
execute if score #MWL Phase matches 80 run scoreboard players set #MWL Phase 85
execute if score #MWL Phase matches 85 run function mwj:system/setting/item_addition_decision/page_1/set_inventory
execute if score #MWL Phase matches 86 run function mwj:system/setting/item_addition_decision/page_2/set_inventory
execute if score #MWL Phase matches 87 run function mwj:system/setting/item_addition_decision/page_3/set_inventory
execute if score #MWL Phase matches 88 run function mwj:system/setting/item_addition_decision/page_4/set_inventory

## Set items
loot replace entity @p[tag=Host] inventory.9 loot mwj:setting/common/white_banner_left
loot replace entity @p[tag=Host] inventory.17 loot mwj:setting/common/white_banner_right
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/common/cancel
loot replace entity @p[tag=Host] inventory.21 loot mwj:setting/common/map
loot replace entity @p[tag=Host] inventory.23 loot mwj:setting/common/filled_map
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/common/ok

execute if score #MWL AddedItem1 matches 1 run loot replace entity @p[tag=Host] inventory.2 loot mwj:setting/common/nether_star_selected
execute if score #MWL AddedItem2 matches 1 run loot replace entity @p[tag=Host] inventory.3 loot mwj:setting/common/nether_star_selected
execute if score #MWL AddedItem3 matches 1 run loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/common/nether_star_selected
execute if score #MWL AddedItem4 matches 1 run loot replace entity @p[tag=Host] inventory.5 loot mwj:setting/common/nether_star_selected
execute if score #MWL AddedItem5 matches 1 run loot replace entity @p[tag=Host] inventory.6 loot mwj:setting/common/nether_star_selected