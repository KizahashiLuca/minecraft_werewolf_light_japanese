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
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r人狼の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r狂人の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r羽衣狐の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r村人の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r預言者の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r霊媒師の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r共有者の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r探偵の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r猫又の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop

## Detect Selected Item
scoreboard players set @p[tag=host] SelectedWolf 1
scoreboard players set @p[tag=host] SelectedMadman 1
scoreboard players set @p[tag=host] SelectedFox 1
scoreboard players set @p[tag=host] SelectedVilla 1
scoreboard players set @p[tag=host] SelectedSeer 1
scoreboard players set @p[tag=host] SelectedMedium 1
scoreboard players set @p[tag=host] SelectedMason 1
scoreboard players set @p[tag=host] SelectedDetec 1
scoreboard players set @p[tag=host] SelectedCat 1
scoreboard players set @p[tag=host] SelectedCancel 1
scoreboard players set @p[tag=host] SelectedReset 1
scoreboard players set @p[tag=host] SelectedOkay 1
execute unless score Time AddedRole = Time PrevAddedRole run scoreboard players set @p[tag=host] SelectedDecide 1

## Declare Inventory
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:18b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r人狼の追加\""}}}]}] SelectedWolf 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:19b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r狂人の追加\""}}}]}] SelectedMadman 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:20b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r羽衣狐の追加\""}}}]}] SelectedFox 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:21b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r村人の追加\""}}}]}] SelectedVilla 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:22b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r預言者の追加\""}}}]}] SelectedSeer 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:23b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r霊媒師の追加\""}}}]}] SelectedMedium 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:24b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r共有者の追加\""}}}]}] SelectedMason 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:25b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r探偵の追加\""}}}]}] SelectedDetec 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:26b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r猫又の追加\""}}}]}] SelectedCat 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedCancel 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}]}] SelectedReset 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedOkay 0
execute if score Time AddedWolf matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:9b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedMadman matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:10b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedFox matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedVilla matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedSeer matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedMedium matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedMason matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedDetec matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:16b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time AddedCat matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:17b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0

## Function Each Mode
execute if score @p[tag=host] SelectedWolf matches 1 run function mwj:system/setting/decision_role_addition/selected_wolf
execute if score @p[tag=host] SelectedMadman matches 1 run function mwj:system/setting/decision_role_addition/selected_madman
execute if score @p[tag=host] SelectedFox matches 1 run function mwj:system/setting/decision_role_addition/selected_fox
execute if score @p[tag=host] SelectedVilla matches 1 run function mwj:system/setting/decision_role_addition/selected_villager
execute if score @p[tag=host] SelectedSeer matches 1 run function mwj:system/setting/decision_role_addition/selected_seer
execute if score @p[tag=host] SelectedMedium matches 1 run function mwj:system/setting/decision_role_addition/selected_medium
execute if score @p[tag=host] SelectedMason matches 1 run function mwj:system/setting/decision_role_addition/selected_mason
execute if score @p[tag=host] SelectedDetec matches 1 run function mwj:system/setting/decision_role_addition/selected_detective
execute if score @p[tag=host] SelectedCat matches 1 run function mwj:system/setting/decision_role_addition/selected_cat
execute if score @p[tag=host] SelectedCancel matches 1 run function mwj:system/setting/decision_role_addition/selected_cancel
execute if score @p[tag=host] SelectedReset matches 1 run function mwj:system/setting/decision_role_addition/selected_reset
execute if score @p[tag=host] SelectedOkay matches 1 run function mwj:system/setting/decision_role_addition/selected_ok
execute if score @p[tag=host] SelectedDecide matches 1 run function mwj:system/setting/decision_role_addition/change_to_role_addition