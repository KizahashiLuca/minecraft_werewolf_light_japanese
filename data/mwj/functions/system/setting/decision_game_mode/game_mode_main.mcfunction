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
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7f通常人狼モード"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7f村人2人生存モード"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7f殲滅モード"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_game_mode/game_mode_drop

## Detect Selected Item
scoreboard players set @p[tag=Host] SelectNormalWolf 1
scoreboard players set @p[tag=Host] SelectTwoAlive 1
scoreboard players set @p[tag=Host] SelectAnnihilate 1
scoreboard players set @p[tag=Host] SelectCancel 1
scoreboard players set @p[tag=Host] SelectOkay 1
scoreboard players set @p[tag=Host] SelectDecide 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7f通常人狼モード"'}}}]}] SelectNormalWolf 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7f村人2人生存モード"'}}}]}] SelectTwoAlive 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7f殲滅モード"'}}}]}] SelectAnnihilate 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}]}] SelectOkay 0
execute if score #MWL GameMode matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL GameMode matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL GameMode matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectNormalWolf=1}] run function mwj:system/setting/decision_game_mode/selected_normal_wolf
execute as @p[tag=Host,scores={SelectTwoAlive=1}] run function mwj:system/setting/decision_game_mode/selected_two_alive
execute as @p[tag=Host,scores={SelectAnnihilate=1}] run function mwj:system/setting/decision_game_mode/selected_annihilation
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:system/setting/decision_game_mode/selected_cancel
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/decision_game_mode/selected_ok
execute as @p[tag=Host,scores={SelectDecide=1}] run function mwj:system/setting/decision_game_mode/change_to_game_mode

## Process the system finished
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/setting/exit_setting/exit_setting