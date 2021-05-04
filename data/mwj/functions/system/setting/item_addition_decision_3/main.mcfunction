####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:trident",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:conduit",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:crossbow",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem3 0
execute if score #MWL Version matches ..14 run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:23b}]}] SelectItem4 0
execute if score #MWL Version matches 15.. run function mwj:system/setting/item_addition_decision_3/detect_haven_honey_block
execute if score #MWL Version matches ..15 run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:24b}]}] SelectItem5 0
execute if score #MWL Version matches 16.. run function mwj:system/setting/item_addition_decision_3/detect_haven_soul_lantern

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/item_addition_decision_3/selected_trident
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/item_addition_decision_3/selected_conduit
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/item_addition_decision_3/selected_crossbow
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/item_addition_decision_3/selected_honey_block
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/item_addition_decision_3/selected_soul_lantern