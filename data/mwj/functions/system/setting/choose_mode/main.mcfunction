###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Process the timer system
function mwj:system/time/time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/choose_mode/detect_drop

## Detect Select Item
scoreboard players set @p[tag=Host] ChosenCasting 1
scoreboard players set @p[tag=Host] ChosenDummyRole 1
scoreboard players set @p[tag=Host] ChosenHideTime 1
scoreboard players set @p[tag=Host] ChosenGlowTime 1
scoreboard players set @p[tag=Host] ChosenGameTime 1
scoreboard players set @p[tag=Host] ChosenGameMode 1
scoreboard players set @p[tag=Host] ChosenItemAdd 1
scoreboard players set @p[tag=Host] ChosenRoleAdd 1
scoreboard players set @p[tag=Host] ChosenCastSet 1
scoreboard players set @p[tag=Host] SelectCancel 1
execute if score #MWL GameMode matches 1 if score #MWL NumOfWhite > #MWL NumOfBlack if score #MWL NumOfWhite matches 1.. if score #MWL NumOfBlack matches 1.. run scoreboard players set @p[tag=Host] SelectOkay 1
execute if score #MWL GameMode matches 2 if score #MWL NumOfWhite matches 2.. if score #MWL NumOfBlack matches 1.. run scoreboard players set @p[tag=Host] SelectOkay 1
execute if score #MWL GameMode matches 3 if score #MWL NumOfWhite matches 1.. if score #MWL NumOfBlack matches 1.. run scoreboard players set @p[tag=Host] SelectOkay 1

## Declare Inventory
execute if score #MWL SetDummyRole matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:carved_pumpkin",tag:{Tags:["MWLsetting"]}}]}] ChosenDummyRole 0
execute if score #MWL SetDummyRole matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:jack_o_lantern",tag:{Tags:["MWLsetting"]}}]}] ChosenDummyRole 0
execute if score #MWL SetCasting matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:ender_pearl",tag:{Tags:["MWLsetting"]}}]}] ChosenCasting 0
execute if score #MWL SetCasting matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:ender_eye",tag:{Tags:["MWLsetting"]}}]}] ChosenCasting 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:redstone",tag:{Tags:["MWLsetting"]}}]}] ChosenHideTime 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:glowstone_dust",tag:{Tags:["MWLsetting"]}}]}] ChosenGlowTime 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:gunpowder",tag:{Tags:["MWLsetting"]}}]}] ChosenGameTime 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:map",tag:{Tags:["MWLsetting"]}}]}] ChosenGameMode 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:chest",tag:{Tags:["MWLsetting"]}}]}] ChosenItemAdd 0
execute if score #MWL SetCasting matches 0 if score #MWL AddedRoleNumber matches 1.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:armor_stand",tag:{Tags:["MWLsetting","RoleAddition"]}}]}] ChosenRoleAdd 0
execute if score #MWL SetCasting matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:17b,id:"minecraft:armor_stand",tag:{Tags:["MWLsetting","Casting"]}}]}] ChosenCastSet 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MWLsetting"]}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MWLsetting"]}}]}] SelectOkay 0

## Function Each Mode
execute as @p[tag=Host,scores={ChosenCasting=1}] run function mwj:system/setting/choose_mode/set_casting
execute if score #MWL SetCasting matches 0 as @p[tag=Host,scores={ChosenDummyRole=1}] run function mwj:system/setting/choose_mode/set_dummy_role_cast_off
execute if score #MWL SetCasting matches 1 as @p[tag=Host,scores={ChosenDummyRole=1}] run function mwj:system/setting/choose_mode/set_dummy_role_cast_on
execute as @p[tag=Host,scores={ChosenHideTime=1}] run function mwj:system/setting/hide_time_decision/change_to
execute as @p[tag=Host,scores={ChosenGlowTime=1}] run function mwj:system/setting/glow_time_decision/change_to
execute as @p[tag=Host,scores={ChosenGameTime=1}] run function mwj:system/setting/game_time_decision/change_to
execute as @p[tag=Host,scores={ChosenGameMode=1}] run function mwj:system/setting/game_mode_decision/change_to
execute as @p[tag=Host,scores={ChosenItemAdd=1}] run function mwj:system/setting/item_addition_decision_common/set_inventory
execute if score #MWL SetCasting matches 0 if score #MWL AddedRoleNumber matches 1.. as @p[tag=Host,scores={ChosenRoleAdd=1}] run function mwj:system/setting/role_addition_decision_common/set_inventory
execute if score #MWL SetCasting matches 1 as @p[tag=Host,scores={ChosenCastSet=1}] run function mwj:system/setting/casting_decision_common/set_inventory
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:stop
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/exit_setting/exit_setting

## Process the system finished
function mwj:system/setting/casting_decision_common/count_number_of_roles
scoreboard players set #MWL TempVariable 0
execute if score #MWL GameMode matches 1 if score #MWL NumOfWhite > #MWL NumOfBlack if score #MWL NumOfWhite matches 1.. if score #MWL NumOfBlack matches 1.. run scoreboard players set #MWL TempVariable 1
execute if score #MWL GameMode matches 2 if score #MWL NumOfWhite matches 2.. if score #MWL NumOfBlack matches 1.. run scoreboard players set #MWL TempVariable 1
execute if score #MWL GameMode matches 3 if score #MWL NumOfWhite matches 1.. if score #MWL NumOfBlack matches 1.. run scoreboard players set #MWL TempVariable 1
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 if score #MWL TempVariable matches 0 run scoreboard players set #MWL Second 600
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 if score #MWL TempVariable matches 1 run function mwj:system/setting/exit_setting/exit_setting
