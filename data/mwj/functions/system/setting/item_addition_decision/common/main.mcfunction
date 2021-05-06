####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLitem"]}}}] ThrowItem 1

## Kill a dropped item
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/item_addition_decision/common/detect_drop

## Detect selected items
scoreboard players set @p[tag=Host] SelectItem1 1
scoreboard players set @p[tag=Host] SelectItem2 1
scoreboard players set @p[tag=Host] SelectItem3 1
scoreboard players set @p[tag=Host] SelectItem4 1
scoreboard players set @p[tag=Host] SelectItem5 1
scoreboard players set @p[tag=Host] SelectPrevPage 1
scoreboard players set @p[tag=Host] SelectNextPage 1
scoreboard players set @p[tag=Host] SelectCancel 1
scoreboard players set @p[tag=Host] SelectAllDel 1
scoreboard players set @p[tag=Host] SelectAllSet 1
scoreboard players set @p[tag=Host] SelectOkay 1
execute if score #MWL AddedItem1 matches 1 run scoreboard players set @p[tag=Host] SelectDecide1 1
execute if score #MWL AddedItem2 matches 1 run scoreboard players set @p[tag=Host] SelectDecide2 1
execute if score #MWL AddedItem3 matches 1 run scoreboard players set @p[tag=Host] SelectDecide3 1
execute if score #MWL AddedItem4 matches 1 run scoreboard players set @p[tag=Host] SelectDecide4 1
execute if score #MWL AddedItem5 matches 1 run scoreboard players set @p[tag=Host] SelectDecide5 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:white_banner",tag:{Tags:["MWLsetting","MWLleft"]}}]}] SelectPrevPage 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:white_banner",tag:{Tags:["MWLsetting","MWLright"]}}]}] SelectNextPage 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MWLsetting"]}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:30b,id:"minecraft:map",tag:{Tags:["MWLsetting"]}}]}] SelectAllDel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:32b,id:"minecraft:filled_map",tag:{Tags:["MWLsetting"]}}]}] SelectAllSet 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MWLsetting"]}}]}] SelectOkay 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide5 0

execute if score #MWL Phase matches 85 run function mwj:system/setting/item_addition_decision/page_1/main
execute if score #MWL Phase matches 86 run function mwj:system/setting/item_addition_decision/page_2/main
execute if score #MWL Phase matches 87 run function mwj:system/setting/item_addition_decision/page_3/main
execute if score #MWL Phase matches 88 run function mwj:system/setting/item_addition_decision/page_4/main

## Function Each Mode
execute as @p[tag=Host,scores={SelectPrevPage=1}] run function mwj:system/setting/item_addition_decision/common/selected_prevpage
execute as @p[tag=Host,scores={SelectNextPage=1}] run function mwj:system/setting/item_addition_decision/common/selected_nextpage
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:system/setting/item_addition_decision/common/selected_cancel
execute as @p[tag=Host,scores={SelectAllDel=1}] run function mwj:system/setting/item_addition_decision/common/selected_all_delete
execute as @p[tag=Host,scores={SelectAllSet=1}] run function mwj:system/setting/item_addition_decision/common/selected_all_set
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/item_addition_decision/common/selected_ok
execute as @p[tag=Host,scores={SelectDecide1=1}] run function mwj:system/setting/item_addition_decision/common/set_inventory
execute as @p[tag=Host,scores={SelectDecide2=1}] run function mwj:system/setting/item_addition_decision/common/set_inventory
execute as @p[tag=Host,scores={SelectDecide3=1}] run function mwj:system/setting/item_addition_decision/common/set_inventory
execute as @p[tag=Host,scores={SelectDecide4=1}] run function mwj:system/setting/item_addition_decision/common/set_inventory
execute as @p[tag=Host,scores={SelectDecide5=1}] run function mwj:system/setting/item_addition_decision/common/set_inventory