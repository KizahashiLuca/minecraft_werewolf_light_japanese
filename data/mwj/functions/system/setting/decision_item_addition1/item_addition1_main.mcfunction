###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Timer System
function mwj:system/setting/setting_time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r前へ\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",tag:{display:{Name:"\"\\u00A7r木の棒\"",Lore:["\"ゴミ。何の能力もない\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:totem_of_undying",tag:{display:{Name:"\"\\u00A7r不死のトーテム\"",Lore:["\"手に持っていれば一度だけ致死ダメージを免れる\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:lingering_potion",tag:{display:{Name:"\"\\u00A7r即死の残留ポーション\"",Lore:["\"即死効果を一定範囲に一定時間ばらまくポーション。\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl",tag:{display:{Name:"\"\\u00A7rエンダーパール\"",Lore:["\"投げたところに瞬間移動できる\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_hoe",tag:{display:{Name:"\"\\u00A7rダイヤのクワ\"",Lore:["\"一撃必殺の近接攻撃が一度だけ可能\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r次へ\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_item_addition1/item_addition1_drop

## Detect Selected Item
scoreboard players set @p[tag=Host] SelectedPrevPage 1
scoreboard players set @p[tag=Host] SelectedStick 1
scoreboard players set @p[tag=Host] SelectedTotem 1
scoreboard players set @p[tag=Host] SelectedDeath2 1
scoreboard players set @p[tag=Host] SelectedPearl 1
scoreboard players set @p[tag=Host] SelectedHoe 1
scoreboard players set @p[tag=Host] SelectedNextPage 1
scoreboard players set @p[tag=Host] SelectedCancel 1
scoreboard players set @p[tag=Host] SelectedReset 1
scoreboard players set @p[tag=Host] SelectedOkay 1
execute if score Time AddedStick matches 1 run scoreboard players set @p[tag=Host] SelectedDecide1 1
execute if score Time AddedTotem matches 1 run scoreboard players set @p[tag=Host] SelectedDecide2 1
execute if score Time AddedDeath2 matches 1 run scoreboard players set @p[tag=Host] SelectedDecide3 1
execute if score Time AddedPearl matches 1 run scoreboard players set @p[tag=Host] SelectedDecide4 1
execute if score Time AddedHoe matches 1 run scoreboard players set @p[tag=Host] SelectedDecide5 1


## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r前へ\""}}}]}] SelectedPrevPage 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:stick",tag:{display:{Name:"\"\\u00A7r木の棒\"",Lore:["\"ゴミ。何の能力もない\""]}}}]}] SelectedStick 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:totem_of_undying",tag:{display:{Name:"\"\\u00A7r不死のトーテム\"",Lore:["\"手に持っていれば一度だけ致死ダメージを免れる\""]}}}]}] SelectedTotem 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:lingering_potion",tag:{display:{Name:"\"\\u00A7r即死の残留ポーション\"",Lore:["\"即死効果を一定範囲に一定時間ばらまくポーション。\""]}}}]}] SelectedDeath2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:ender_pearl",tag:{display:{Name:"\"\\u00A7rエンダーパール\"",Lore:["\"投げたところに瞬間移動できる\""]}}}]}] SelectedPearl 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:diamond_hoe",tag:{display:{Name:"\"\\u00A7rダイヤのクワ\"",Lore:["\"一撃必殺の近接攻撃が一度だけ可能\""]}}}]}] SelectedHoe 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r次へ\""}}}]}] SelectedNextPage 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}]}] SelectedReset 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedOkay 0
execute if score Time AddedStick matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide1 0
execute if score Time AddedTotem matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide2 0
execute if score Time AddedDeath2 matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide3 0
execute if score Time AddedPearl matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide4 0
execute if score Time AddedHoe matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide5 0

## Function Each Mode
execute if score @p[tag=Host] SelectedPrevPage matches 1 run function mwj:system/setting/decision_item_addition1/selected_prevpage
execute if score @p[tag=Host] SelectedStick matches 1 run function mwj:system/setting/decision_item_addition1/selected_stick
execute if score @p[tag=Host] SelectedTotem matches 1 run function mwj:system/setting/decision_item_addition1/selected_totem
execute if score @p[tag=Host] SelectedDeath2 matches 1 run function mwj:system/setting/decision_item_addition1/selected_death2
execute if score @p[tag=Host] SelectedPearl matches 1 run function mwj:system/setting/decision_item_addition1/selected_pearl
execute if score @p[tag=Host] SelectedHoe matches 1 run function mwj:system/setting/decision_item_addition1/selected_hoe
execute if score @p[tag=Host] SelectedNextPage matches 1 run function mwj:system/setting/decision_item_addition1/selected_nextpage
execute if score @p[tag=Host] SelectedCancel matches 1 run function mwj:system/setting/decision_item_addition1/selected_cancel
execute if score @p[tag=Host] SelectedReset matches 1 run function mwj:system/setting/decision_item_addition1/selected_reset
execute if score @p[tag=Host] SelectedOkay matches 1 run function mwj:system/setting/decision_item_addition1/selected_ok
execute if score @p[tag=Host] SelectedDecide1 matches 1 run function mwj:system/setting/decision_item_addition1/change_to_item_addition1
execute if score @p[tag=Host] SelectedDecide2 matches 1 run function mwj:system/setting/decision_item_addition1/change_to_item_addition1
execute if score @p[tag=Host] SelectedDecide3 matches 1 run function mwj:system/setting/decision_item_addition1/change_to_item_addition1
execute if score @p[tag=Host] SelectedDecide4 matches 1 run function mwj:system/setting/decision_item_addition1/change_to_item_addition1
execute if score @p[tag=Host] SelectedDecide5 matches 1 run function mwj:system/setting/decision_item_addition1/change_to_item_addition1