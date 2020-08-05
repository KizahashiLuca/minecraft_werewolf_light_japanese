###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:light_blue_concrete",tag:{display:{Name:'"\\u00A7r\\u00A7f偽予言者の追加"'}}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:blue_concrete",tag:{display:{Name:'"\\u00A7r\\u00A7f賢者の追加"'}}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:red_concrete",tag:{display:{Name:'"\\u00A7r\\u00A7f白狼の追加"'}}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:pink_concrete",tag:{display:{Name:'"\\u00A7r\\u00A7f狂信者の追加"'}}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:purple_concrete",tag:{display:{Name:'"\\u00A7r\\u00A7f背徳者の追加"'}}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/role_addition_decision_3/selected_fake_seer
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/role_addition_decision_3/selected_sage
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/role_addition_decision_3/selected_white_wolf
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/role_addition_decision_3/selected_fanatic
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/role_addition_decision_3/selected_immoralist