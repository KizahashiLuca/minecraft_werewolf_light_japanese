###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Timer System
function mwj:system/setting/setting_time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r前へ\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow",tag:{display:{Name:"\"\\u00A7rクロスボウ\"",Lore:["\"一撃必殺のクロスボウ。\"","\"1度だけ使うことができる。\"","\"拡散のエンチャント付与済。\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball",tag:{display:{Name:"\"\\u00A7rスタングレネード\"",Lore:["\"半径3mのプレイヤーの動きを15秒止める\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r透明化のポーション\"",Lore:["\"30秒の間、透明になるポーション\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r俊敏のポーション\"",Lore:["\"30秒の間、足が速くなるポーション\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r跳躍のポーション\"",Lore:["\"30秒の間、高く跳べるポーション\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r次へ\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_item_addition2/item_addition2_drop

## Detect Selected Item
scoreboard players set @p[tag=host] SelectedPrevPage 1
scoreboard players set @p[tag=host] SelectedCrossbow 1
scoreboard players set @p[tag=host] SelectedSnowball 1
scoreboard players set @p[tag=host] SelectedInvis 1
scoreboard players set @p[tag=host] SelectedSpeed 1
scoreboard players set @p[tag=host] SelectedJump 1
scoreboard players set @p[tag=host] SelectedNextPage 1
scoreboard players set @p[tag=host] SelectedCancel 1
scoreboard players set @p[tag=host] SelectedReset 1
scoreboard players set @p[tag=host] SelectedOkay 1
execute if score Time AddedCrossbow matches 1 run scoreboard players set @p[tag=host] SelectedDecide 1
execute if score Time AddedSnowball matches 1 run scoreboard players set @p[tag=host] SelectedDecide 1
execute if score Time AddedInvis matches 1 run scoreboard players set @p[tag=host] SelectedDecide 1
execute if score Time AddedSpeed matches 1 run scoreboard players set @p[tag=host] SelectedDecide 1
execute if score Time AddedJump matches 1 run scoreboard players set @p[tag=host] SelectedDecide 1

## Declare Inventory
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:18b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r前へ\""}}}]}] SelectedPrevPage 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:20b,id:"minecraft:crossbow",tag:{display:{Name:"\"\\u00A7rクロスボウ\"",Lore:["\"一撃必殺のクロスボウ。\"","\"1度だけ使うことができる。\"","\"拡散のエンチャント付与済。\""]}}}]}] SelectedCrossbow 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:21b,id:"minecraft:snowball",tag:{display:{Name:"\"\\u00A7rスタングレネード\"",Lore:["\"半径3mのプレイヤーの動きを15秒止める\""]}}}]}] SelectedSnowball 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:22b,id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r透明化のポーション\"",Lore:["\"30秒の間、透明になるポーション\""]}}}]}] SelectedInvis 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:23b,id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r俊敏のポーション\"",Lore:["\"30秒の間、足が速くなるポーション\""]}}}]}] SelectedSpeed 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:24b,id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r跳躍のポーション\"",Lore:["\"30秒の間、高く跳べるポーション\""]}}}]}] SelectedJump 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:26b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r次へ\""}}}]}] SelectedNextPage 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedCancel 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}]}] SelectedReset 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedOkay 0
execute if score Time AddedCrossbow matches 1 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedSnowball matches 1 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedInvis matches 1 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedSpeed matches 1 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedJump matches 1 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0

## Function Each Mode
execute if score @p[tag=host] SelectedPrevPage matches 1 run function mwj:system/setting/decision_item_addition2/selected_prevpage
execute if score @p[tag=host] SelectedCrossbow matches 1 run function mwj:system/setting/decision_item_addition2/selected_crossbow
execute if score @p[tag=host] SelectedSnowball matches 1 run function mwj:system/setting/decision_item_addition2/selected_snowball
execute if score @p[tag=host] SelectedInvis matches 1 run function mwj:system/setting/decision_item_addition2/selected_invis
execute if score @p[tag=host] SelectedSpeed matches 1 run function mwj:system/setting/decision_item_addition2/selected_speed
execute if score @p[tag=host] SelectedJump matches 1 run function mwj:system/setting/decision_item_addition2/selected_jump
execute if score @p[tag=host] SelectedNextPage matches 1 run function mwj:system/setting/decision_item_addition2/selected_nextpage
execute if score @p[tag=host] SelectedCancel matches 1 run function mwj:system/setting/decision_item_addition2/selected_cancel
execute if score @p[tag=host] SelectedReset matches 1 run function mwj:system/setting/decision_item_addition2/selected_reset
execute if score @p[tag=host] SelectedOkay matches 1 run function mwj:system/setting/decision_item_addition2/selected_ok
execute if score @p[tag=host] SelectedDecide matches 1 run function mwj:system/setting/decision_item_addition2/change_to_item_addition2