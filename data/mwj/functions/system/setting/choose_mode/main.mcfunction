###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Process the timer system
function mwj:system/time/time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{display:{Name:'"\\u00A7r\\u00A7f役欠けなし"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:jack_o_lantern",tag:{display:{Name:'"\\u00A7r\\u00A7f役欠けあり"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone",tag:{display:{Name:'"\\u00A7r\\u00A7f潜伏時間設定"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:glowstone_dust",tag:{display:{Name:'"\\u00A7r\\u00A7f発光時間設定"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder",tag:{display:{Name:'"\\u00A7r\\u00A7f制限時間設定"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7fゲームモード(人狼勝利条件)設定"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest",tag:{display:{Name:'"\\u00A7r\\u00A7f追加特殊アイテム設定"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",tag:{display:{Name:'"\\u00A7r\\u00A7f追加役職設定"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dゲームキャンセル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7bゲームスタート"'},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/choose_mode/detect_drop

## Detect Select Item
scoreboard players set @p[tag=Host] ChosenDummyRole 1
scoreboard players set @p[tag=Host] ChosenHideTime 1
scoreboard players set @p[tag=Host] ChosenGlowTime 1
scoreboard players set @p[tag=Host] ChosenGameTime 1
scoreboard players set @p[tag=Host] ChosenGameMode 1
scoreboard players set @p[tag=Host] ChosenItemAdd 1
scoreboard players set @p[tag=Host] ChosenRoleAdd 1
scoreboard players set @p[tag=Host] SelectCancel 1
scoreboard players set @p[tag=Host] SelectOkay 1

## Declare Inventory
execute if score #MWL SetDummyRole matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:carved_pumpkin",tag:{display:{Name:'"\\u00A7r\\u00A7f役欠けなし"'}}}]}] ChosenDummyRole 0
execute if score #MWL SetDummyRole matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:jack_o_lantern",tag:{display:{Name:'"\\u00A7r\\u00A7f役欠けあり"'}}}]}] ChosenDummyRole 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:redstone",tag:{display:{Name:'"\\u00A7r\\u00A7f潜伏時間設定"'}}}]}] ChosenHideTime 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:glowstone_dust",tag:{display:{Name:'"\\u00A7r\\u00A7f発光時間設定"'}}}]}] ChosenGlowTime 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:gunpowder",tag:{display:{Name:'"\\u00A7r\\u00A7f制限時間設定"'}}}]}] ChosenGameTime 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7fゲームモード(人狼勝利条件)設定"'}}}]}] ChosenGameMode 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:chest",tag:{display:{Name:'"\\u00A7r\\u00A7f追加特殊アイテム設定"'}}}]}] ChosenItemAdd 0
execute if score #MWL AddedRoleNumber matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:armor_stand",tag:{display:{Name:'"\\u00A7r\\u00A7f追加役職設定"'}}}]}] ChosenRoleAdd 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dゲームキャンセル"'},HideFlags:39}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7bゲームスタート"'},HideFlags:39}}]}] SelectOkay 0

## Function Each Mode
execute as @p[tag=Host,scores={ChosenDummyRole=1}] run function mwj:system/setting/choose_mode/set_dummy_role
execute as @p[tag=Host,scores={ChosenHideTime=1}] run function mwj:system/setting/hide_time_decision/change_to
execute as @p[tag=Host,scores={ChosenGlowTime=1}] run function mwj:system/setting/glow_time_decision/change_to
execute as @p[tag=Host,scores={ChosenGameTime=1}] run function mwj:system/setting/game_time_decision/change_to
execute as @p[tag=Host,scores={ChosenGameMode=1}] run function mwj:system/setting/game_mode_decision/change_to
execute as @p[tag=Host,scores={ChosenItemAdd=1}] run function mwj:system/setting/item_addition_decision_common/set_inventory
execute if score #MWL AddedRoleNumber matches 1.. as @p[tag=Host,scores={ChosenRoleAdd=1}] run function mwj:system/setting/role_addition_decision_common/set_inventory
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:stop
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/exit_setting/exit_setting

## Process the system finished
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/setting/exit_setting/exit_setting