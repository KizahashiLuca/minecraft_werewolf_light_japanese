###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Process the timer system
function mwj:system/time/time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:'"\\u00A7r\\u00A7c前へ"'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vhr,Color:14},{Pattern:br,Color:0},{Pattern:tr,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:'"\\u00A7r\\u00A7c次へ"'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vh,Color:14},{Pattern:bl,Color:0},{Pattern:tl,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7e全選択解除"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a残り追加可能人数"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},HideFlags:39}}}] ThrowItem 1

execute if score #MWL Phase matches 90 run function mwj:system/setting/decision_role_addition1/role_addition1_dropped
execute if score #MWL Phase matches 91 run function mwj:system/setting/decision_role_addition2/role_addition2_dropped
execute if score #MWL Phase matches 92 run function mwj:system/setting/decision_role_addition3/role_addition3_dropped

## Kill a dropped item
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run kill @s
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_role_addition_common/set_scoreboard

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
execute if score #MWL AddedRole matches 1.. run scoreboard players set @p[tag=Host] SelectNumber 1
scoreboard players set @p[tag=Host] SelectOkay 1

execute if score #MWL AddedItem1 matches 1.. run scoreboard players set @p[tag=Host] SelectDecide1 1
execute if score #MWL AddedItem2 matches 1.. run scoreboard players set @p[tag=Host] SelectDecide2 1
execute if score #MWL AddedItem3 matches 1.. run scoreboard players set @p[tag=Host] SelectDecide3 1
execute if score #MWL AddedItem4 matches 1.. run scoreboard players set @p[tag=Host] SelectDecide4 1
execute if score #MWL AddedItem5 matches 1.. run scoreboard players set @p[tag=Host] SelectDecide5 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:white_banner",tag:{display:{Name:'"\\u00A7r\\u00A7c前へ"'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vhr,Color:14},{Pattern:br,Color:0},{Pattern:tr,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}]}] SelectPrevPage 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:white_banner",tag:{display:{Name:'"\\u00A7r\\u00A7c次へ"'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vh,Color:14},{Pattern:bl,Color:0},{Pattern:tl,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}]}] SelectNextPage 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:30b,id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7e全選択解除"'},HideFlags:39}}]}] SelectAllDel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:32b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a残り追加可能人数"'},HideFlags:39}}]}] SelectNumber 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}]}] SelectOkay 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedItem1",HideFlags:39}}]}] SelectDecide1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedItem2",HideFlags:39}}]}] SelectDecide2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedItem3",HideFlags:39}}]}] SelectDecide3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedItem4",HideFlags:39}}]}] SelectDecide4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'},Tag:"AddedItem5",HideFlags:39}}]}] SelectDecide5 0

execute if score #MWL Phase matches 90 run function mwj:system/setting/decision_role_addition1/role_addition1_selected
execute if score #MWL Phase matches 91 run function mwj:system/setting/decision_role_addition2/role_addition2_selected
execute if score #MWL Phase matches 92 run function mwj:system/setting/decision_role_addition3/role_addition3_selected

## Function Each Mode
execute as @p[tag=Host,scores={SelectPrevPage=1}] run function mwj:system/setting/decision_role_addition_common/selected_prevpage
execute as @p[tag=Host,scores={SelectNextPage=1}] run function mwj:system/setting/decision_role_addition_common/selected_nextpage
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:system/setting/decision_role_addition_common/selected_cancel
execute as @p[tag=Host,scores={SelectAllDel=1}] run function mwj:system/setting/decision_role_addition_common/selected_all_delete
execute as @p[tag=Host,scores={SelectNumber=1}] run function mwj:system/setting/decision_role_addition_common/set_scoreboard
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/decision_role_addition_common/selected_ok
execute as @p[tag=Host,scores={SelectDecide1=1}] run function mwj:system/setting/decision_role_addition_common/set_scoreboard
execute as @p[tag=Host,scores={SelectDecide2=1}] run function mwj:system/setting/decision_role_addition_common/set_scoreboard
execute as @p[tag=Host,scores={SelectDecide3=1}] run function mwj:system/setting/decision_role_addition_common/set_scoreboard
execute as @p[tag=Host,scores={SelectDecide4=1}] run function mwj:system/setting/decision_role_addition_common/set_scoreboard
execute as @p[tag=Host,scores={SelectDecide5=1}] run function mwj:system/setting/decision_role_addition_common/set_scoreboard

## Process the system finished
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/setting/exit_setting/exit_setting