###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Process the timer system
function mwj:system/time/time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_stained_glass",tag:{display:{Name:"\"\\u00A7r人狼の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:pink_stained_glass",tag:{display:{Name:"\"\\u00A7r狂人の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:purple_stained_glass",tag:{display:{Name:"\"\\u00A7r羽衣狐の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_blue_stained_glass",tag:{display:{Name:"\"\\u00A7r預言者の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_stained_glass",tag:{display:{Name:"\"\\u00A7r霊媒師の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:green_stained_glass",tag:{display:{Name:"\"\\u00A7r共有者の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:cyan_stained_glass",tag:{display:{Name:"\"\\u00A7r探偵の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_stained_glass",tag:{display:{Name:"\"\\u00A7r怪盗の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:orange_stained_glass",tag:{display:{Name:"\"\\u00A7r猫又の追加\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r残り追加可能人数\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_role_addition/role_addition_drop

## Detect Selected Item
scoreboard players set @p[tag=Host] SelectWolf 1
scoreboard players set @p[tag=Host] SelectMadman 1
scoreboard players set @p[tag=Host] SelectFox 1
scoreboard players set @p[tag=Host] SelectSeer 1
scoreboard players set @p[tag=Host] SelectMedium 1
scoreboard players set @p[tag=Host] SelectMason 1
scoreboard players set @p[tag=Host] SelectDetec 1
scoreboard players set @p[tag=Host] SelectThief 1
scoreboard players set @p[tag=Host] SelectCat 1
scoreboard players set @p[tag=Host] SelectCancel 1
scoreboard players set @p[tag=Host] SelectReset 1
execute if score Time AddedVilla matches 1.. run scoreboard players set @p[tag=Host] SelectVilla 1
scoreboard players set @p[tag=Host] SelectOkay 1
execute unless score Time AddedRole = Time PrevAddedRole run scoreboard players set @p[tag=Host] SelectDecide 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:red_stained_glass",tag:{display:{Name:"\"\\u00A7r人狼の追加\""}}}]}] SelectWolf 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:pink_stained_glass",tag:{display:{Name:"\"\\u00A7r狂人の追加\""}}}]}] SelectMadman 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:purple_stained_glass",tag:{display:{Name:"\"\\u00A7r羽衣狐の追加\""}}}]}] SelectFox 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:light_blue_stained_glass",tag:{display:{Name:"\"\\u00A7r預言者の追加\""}}}]}] SelectSeer 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:yellow_stained_glass",tag:{display:{Name:"\"\\u00A7r霊媒師の追加\""}}}]}] SelectMedium 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:green_stained_glass",tag:{display:{Name:"\"\\u00A7r共有者の追加\""}}}]}] SelectMason 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:cyan_stained_glass",tag:{display:{Name:"\"\\u00A7r探偵の追加\""}}}]}] SelectDetec 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,id:"minecraft:blue_stained_glass",tag:{display:{Name:"\"\\u00A7r怪盗の追加\""}}}]}] SelectThief 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:orange_stained_glass",tag:{display:{Name:"\"\\u00A7r猫又の追加\""}}}]}] SelectCat 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:30b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}]}] SelectReset 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:32b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r残り追加可能人数\""}}}]}] SelectVilla 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39}}]}] SelectOkay 0
execute if score Time AddedWolf matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectDecide 0
execute if score Time AddedMadman matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectDecide 0
execute if score Time AddedFox matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectDecide 0
execute if score Time AddedVilla matches 1.. run scoreboard players set @p[tag=Host] SelectDecide 0
execute if score Time AddedSeer matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectDecide 0
execute if score Time AddedMedium matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectDecide 0
execute if score Time AddedMason matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectDecide 0
execute if score Time AddedDetec matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectDecide 0
execute if score Time AddedThief matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:16b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectDecide 0
execute if score Time AddedCat matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:17b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectDecide 0

## Function Each Mode
execute if score @p[tag=Host] SelectWolf matches 1 run function mwj:system/setting/decision_role_addition/selected_wolf
execute if score @p[tag=Host] SelectMadman matches 1 run function mwj:system/setting/decision_role_addition/selected_madman
execute if score @p[tag=Host] SelectFox matches 1 run function mwj:system/setting/decision_role_addition/selected_fox
execute if score @p[tag=Host] SelectSeer matches 1 run function mwj:system/setting/decision_role_addition/selected_seer
execute if score @p[tag=Host] SelectMedium matches 1 run function mwj:system/setting/decision_role_addition/selected_medium
execute if score @p[tag=Host] SelectMason matches 1 run function mwj:system/setting/decision_role_addition/selected_mason
execute if score @p[tag=Host] SelectDetec matches 1 run function mwj:system/setting/decision_role_addition/selected_detective
execute if score @p[tag=Host] SelectThief matches 1 run function mwj:system/setting/decision_role_addition/selected_thief
execute if score @p[tag=Host] SelectCat matches 1 run function mwj:system/setting/decision_role_addition/selected_cat
execute if score @p[tag=Host] SelectCancel matches 1 run function mwj:system/setting/decision_role_addition/selected_cancel
execute if score @p[tag=Host] SelectReset matches 1 run function mwj:system/setting/decision_role_addition/selected_reset
execute if score @p[tag=Host] SelectVilla matches 1 run function mwj:system/setting/decision_role_addition/selected_villager
execute if score @p[tag=Host] SelectOkay matches 1 run function mwj:system/setting/decision_role_addition/selected_ok
execute if score @p[tag=Host] SelectDecide matches 1 run function mwj:system/setting/decision_role_addition/change_to_role_addition

## Process the system finished
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/setting/exit_setting/exit_setting