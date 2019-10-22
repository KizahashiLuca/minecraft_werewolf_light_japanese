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
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:flower_banner_pattern",tag:{display:{Name:"\"\\u00A7r通常人狼モード\""}}}}] ThrowWof 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:flower_banner_pattern",tag:{display:{Name:"\"\\u00A7r村人2人生存モード\""}}}}] ThrowTwo 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:flower_banner_pattern",tag:{display:{Name:"\"\\u00A7r我々だ！人狼モード\""}}}}] ThrowExt 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowBarrier 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowWireHook 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowNetherStar 1
execute as @e[type=minecraft:item,scores={ThrowWof=1}] run function mwj:system/setting/decision_game_mode/game_mode_drop
execute as @e[type=minecraft:item,scores={ThrowTwo=1}] run function mwj:system/setting/decision_game_mode/game_mode_drop
execute as @e[type=minecraft:item,scores={ThrowExt=1}] run function mwj:system/setting/decision_game_mode/game_mode_drop
execute as @e[type=minecraft:item,scores={ThrowBarrier=1}] run function mwj:system/setting/decision_game_mode/game_mode_drop
execute as @e[type=minecraft:item,scores={ThrowWireHook=1}] run function mwj:system/setting/decision_game_mode/game_mode_drop
execute as @e[type=minecraft:item,scores={ThrowNetherStar=1}] run function mwj:system/setting/decision_game_mode/game_mode_drop

## Detect Selected Item
scoreboard players set @p[tag=host] SelectedWof 1
scoreboard players set @p[tag=host] SelectedTwo 1
scoreboard players set @p[tag=host] SelectedExt 1
scoreboard players set @p[tag=host] SelectedBarrier 1
scoreboard players set @p[tag=host] SelectedWire 1
scoreboard players set @p[tag=host] SelectedStar 1

## Declare Inventory
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:21b,id:"minecraft:flower_banner_pattern",tag:{display:{Name:"\"\\u00A7r通常人狼モード\""}}}]}] SelectedWof 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:22b,id:"minecraft:flower_banner_pattern",tag:{display:{Name:"\"\\u00A7r村人2人生存モード\""}}}]}] SelectedTwo 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:23b,id:"minecraft:flower_banner_pattern",tag:{display:{Name:"\"\\u00A7r我々だ！人狼モード\""}}}]}] SelectedExt 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedBarrier 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedWire 0
execute if score Time GameMode matches 1 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time GameMode matches 2 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time GameMode matches 3 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0

## Function Each Mode
execute if score @p[tag=host] SelectedWof matches 1 run function mwj:system/setting/decision_game_mode/selected_wolf_prior
execute if score @p[tag=host] SelectedTwo matches 1 run function mwj:system/setting/decision_game_mode/selected_two_r_alive
execute if score @p[tag=host] SelectedExt matches 1 run function mwj:system/setting/decision_game_mode/selected_extinction
execute if score @p[tag=host] SelectedBarrier matches 1 run function mwj:system/setting/decision_game_mode/selected_cancel
execute if score @p[tag=host] SelectedWire matches 1 run function mwj:system/setting/decision_game_mode/selected_ok
execute if score @p[tag=host] SelectedStar matches 1 run function mwj:system/setting/decision_game_mode/change_to_game_mode