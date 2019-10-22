###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Timer System
function mwj:system/setting/setting_time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r羽衣狐の追加\""}}}}] ThrowHeadFox 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r特殊役職無し\""}}}}] ThrowHeadVilla 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r共有者の追加\""}}}}] ThrowHeadMason 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r探偵の追加\""}}}}] ThrowHeadDetec 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r猫又の追加\""}}}}] ThrowHeadCat 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowBarrier 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}}] ThrowMap 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowWireHook 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowNetherStar 1
execute as @e[type=minecraft:item,scores={ThrowHeadFox=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowHeadVilla=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowHeadMason=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowHeadDetec=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowHeadCat=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowBarrier=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowMap=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowWireHook=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowNetherStar=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop

## Detect Selected Item
scoreboard players set @p[tag=host] SelectedFox 1
scoreboard players set @p[tag=host] SelectedVilla 1
scoreboard players set @p[tag=host] SelectedMason 1
scoreboard players set @p[tag=host] SelectedDetec 1
scoreboard players set @p[tag=host] SelectedCat 1
scoreboard players set @p[tag=host] SelectedBarrier 1
scoreboard players set @p[tag=host] SelectedMap 1
scoreboard players set @p[tag=host] SelectedWire 1
execute unless score Time AddedRole = Time PrevAddedRole run scoreboard players set @p[tag=host] SelectedStar 1

## Declare Inventory
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:21b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r羽衣狐の追加\""}}}]}] SelectedFox 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:20b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r特殊役職無し\""}}}]}] SelectedVilla 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:22b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r共有者の追加\""}}}]}] SelectedMason 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:23b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r探偵の追加\""}}}]}] SelectedDetec 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:24b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r猫又の追加\""}}}]}] SelectedCat 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedBarrier 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}]}] SelectedMap 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedWire 0
execute if score Time AddedVilla matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time AddedFox matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time AddedMason matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time AddedDetec matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time AddedCat matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0

## Function Each Mode
execute if score @p[tag=host] SelectedFox matches 1 run function mwj:system/setting/decision_role_addition/selected_fox
execute if score @p[tag=host] SelectedVilla matches 1 run function mwj:system/setting/decision_role_addition/selected_villager
execute if score @p[tag=host] SelectedMason matches 1 run function mwj:system/setting/decision_role_addition/selected_mason
execute if score @p[tag=host] SelectedDetec matches 1 run function mwj:system/setting/decision_role_addition/selected_detective
execute if score @p[tag=host] SelectedCat matches 1 run function mwj:system/setting/decision_role_addition/selected_cat
execute if score @p[tag=host] SelectedBarrier matches 1 run function mwj:system/setting/decision_role_addition/selected_cancel
execute if score @p[tag=host] SelectedMap matches 1 run function mwj:system/setting/decision_role_addition/selected_reset
execute if score @p[tag=host] SelectedWire matches 1 run function mwj:system/setting/decision_role_addition/selected_ok
execute if score @p[tag=host] SelectedStar matches 1 run function mwj:system/setting/decision_role_addition/change_to_role_addition