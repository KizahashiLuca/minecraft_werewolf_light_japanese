###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Timer System
function mwj:system/time

## Title Count Down
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run title @a[tag=host] times 5 10 5
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run title @a[tag=host] title [{"text":"初期設定時間","color":"green","bold":true}]
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run title @a[tag=host] subtitle [{"score":{"name":"Time","objective":"SECOND"},"color":"green","bold":true}]

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r妖狐の追加\""}}}}] ThrowHeadFox 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r特殊役職無し\""}}}}] ThrowHeadVilla 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r共有者の追加\""}}}}] ThrowHeadMason 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r探偵の追加\""}}}}] ThrowHeadDetec 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r猫又の追加\""}}}}] ThrowHeadCat 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowBarrier 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowWireHook 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowNetherStar 1
execute as @e[type=minecraft:item,scores={ThrowHeadFox=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowHeadVilla=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowHeadMason=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowHeadDetec=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowHeadCat=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowBarrier=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowWireHook=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop
execute as @e[type=minecraft:item,scores={ThrowNetherStar=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop

## Detect Selected Item
scoreboard players set @a[tag=host] SelectedFox 1
scoreboard players set @a[tag=host] SelectedVilla 1
scoreboard players set @a[tag=host] SelectedMason 1
scoreboard players set @a[tag=host] SelectedDetec 1
scoreboard players set @a[tag=host] SelectedCat 1
scoreboard players set @a[tag=host] SelectedBarrier 1
scoreboard players set @a[tag=host] SelectedWire 1
scoreboard players set @a[tag=host] SelectedStar 1

## Declare Inventory
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:21b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r妖狐の追加\""}}}]}] SelectedFox 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:20b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r特殊役職無し\""}}}]}] SelectedVilla 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:22b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r共有者の追加\""}}}]}] SelectedMason 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:23b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r探偵の追加\""}}}]}] SelectedDetec 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:24b,id:"minecraft:player_head",tag:{display:{Name:"\"\\u00A7r猫又の追加\""}}}]}] SelectedCat 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedBarrier 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedWire 0
execute if score Time AddedRole matches 4 run scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time AddedRole matches 3 run scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time AddedRole matches 7 run scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time AddedRole matches 8 run scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time AddedRole matches 10 run scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0

## Function Each Mode
execute as @a[tag=host] if score @s SelectedFox matches 1 run function mwj:system/setting/decision_role_addition/selected_fox
execute as @a[tag=host] if score @s SelectedVilla matches 1 run function mwj:system/setting/decision_role_addition/selected_villager
execute as @a[tag=host] if score @s SelectedMason matches 1 run function mwj:system/setting/decision_role_addition/selected_mason
execute as @a[tag=host] if score @s SelectedDetec matches 1 run function mwj:system/setting/decision_role_addition/selected_detective
execute as @a[tag=host] if score @s SelectedCat matches 1 run function mwj:system/setting/decision_role_addition/selected_cat
execute as @a[tag=host] if score @s SelectedBarrier matches 1 run function mwj:system/setting/decision_role_addition/selected_cancel
execute as @a[tag=host] if score @s SelectedWire matches 1 run function mwj:system/setting/decision_role_addition/selected_ok
execute as @a[tag=host] if score @s SelectedStar matches 1 run function mwj:system/setting/decision_role_addition/change_to_role_addition