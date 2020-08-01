###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:red_stained_glass",tag:{display:{Name:'"\\u00A7r\\u00A7f人狼の追加"'}}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:pink_stained_glass",tag:{display:{Name:'"\\u00A7r\\u00A7f狂人の追加"'}}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:lime_stained_glass",tag:{display:{Name:'"\\u00A7r\\u00A7f村人の追加"'}}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:light_blue_stained_glass",tag:{display:{Name:'"\\u00A7r\\u00A7f予言者の追加"'}}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:yellow_stained_glass",tag:{display:{Name:'"\\u00A7r\\u00A7f霊媒師の追加"'}}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/decision_role_addition1/selected_wolf
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/decision_role_addition1/selected_madman
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/decision_role_addition1/selected_villager
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/decision_role_addition1/selected_seer
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/decision_role_addition1/selected_medium