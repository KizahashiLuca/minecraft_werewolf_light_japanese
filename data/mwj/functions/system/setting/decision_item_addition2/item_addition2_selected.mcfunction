###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:elytra",tag:{Tags:"MWLitem"}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:snowball",tag:{Tags:"MWLitem"}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:potion",tag:{display:{Name:'{"extra":[{"italic":false,"color":"white","text":"透明化のポーション"}],"text":""}'},Tags:"MWLitem"}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:potion",tag:{display:{Name:'{"extra":[{"italic":false,"color":"white","text":"俊敏のポーション"}],"text":""}'},Tags:"MWLitem"}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:potion",tag:{display:{Name:'{"extra":[{"italic":false,"color":"white","text":"跳躍のポーション"}],"text":""}'},Tags:"MWLitem"}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/decision_item_addition2/selected_elytra
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/decision_item_addition2/selected_snowball
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/decision_item_addition2/selected_invis
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/decision_item_addition2/selected_speed
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/decision_item_addition2/selected_jump