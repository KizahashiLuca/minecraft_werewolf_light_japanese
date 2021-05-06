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
execute if score #MWL Version matches ..15 run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:20b}]}] SelectItem1 0
execute if score #MWL Version matches 16.. run function mwj:system/setting/item_addition_decision/page_4/detect_haven_twisting_vines
execute if score #MWL Version matches ..15 run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:21b}]}] SelectItem2 0
execute if score #MWL Version matches 16.. run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:21b}]}] SelectItem2 0
execute if score #MWL Version matches ..15 run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:22b}]}] SelectItem3 0
execute if score #MWL Version matches 16.. run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:22b}]}] SelectItem3 0
execute if score #MWL Version matches ..15 run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:23b}]}] SelectItem4 0
execute if score #MWL Version matches 16.. run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:23b}]}] SelectItem4 0
execute if score #MWL Version matches ..15 run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:24b}]}] SelectItem5 0
execute if score #MWL Version matches 16.. run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:24b}]}] SelectItem6 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/item_addition_decision/item/selected_twisting_vines
# execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/item_addition_decision/item/selected_
# execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/item_addition_decision/item/selected_
# execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/item_addition_decision/item/selected_
# execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/item_addition_decision/item/selected_