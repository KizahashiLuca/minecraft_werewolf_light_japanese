###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:purple_stained_glass",tag:{display:{Name:'"\\u00A7r\\u00A7f羽衣狐の追加"'}}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:green_stained_glass",tag:{display:{Name:'"\\u00A7r\\u00A7f共有者の追加"'}}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:cyan_stained_glass",tag:{display:{Name:'"\\u00A7r\\u00A7f探偵の追加"'}}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:blue_stained_glass",tag:{display:{Name:'"\\u00A7r\\u00A7f怪盗の追加"'}}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:orange_stained_glass",tag:{display:{Name:'"\\u00A7r\\u00A7f猫又の追加"'}}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/role_addition_decision_2/selected_fox
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/role_addition_decision_2/selected_mason
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/role_addition_decision_2/selected_detective
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/role_addition_decision_2/selected_thief
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/role_addition_decision_2/selected_cat