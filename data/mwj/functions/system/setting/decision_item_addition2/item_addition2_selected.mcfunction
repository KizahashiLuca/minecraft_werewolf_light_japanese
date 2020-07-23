###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:elytra",tag:{Unbreakable:1b}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:snowball",tag:{display:{Name:'"\\u00a7r\\u00a7bフラッシュバン"',Lore:['"\\u00a7r\\u00a7c盲目 (0:20)"','"\\u00a7r\\u00A7f使用方法 : 投擲"','"\\u00a7r\\u00A7f効果範囲 : 半径3m"']}}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:potion",tag:{display:{Name:'"\\u00A7r\\u00A7f透明化のポーション"'},CustomPotionEffects:[{Id:14b,Duration:600}],CustomPotionColor:16777215}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:potion",tag:{display:{Name:'"\\u00A7r\\u00A7f俊敏のポーション"'},CustomPotionEffects:[{Id:1b,Amplifier:2b,Duration:600}],CustomPotionColor:63217}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:potion",tag:{display:{Name:'"\\u00A7r\\u00A7f跳躍のポーション"',Lore:['"\\u00A7r\\u00A79跳躍力上昇 Ⅹ (0:30)"']},CustomPotionEffects:[{Id:8b,Amplifier:9b,Duration:600}],CustomPotionColor:3470848,HideFlags:32}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/decision_item_addition2/selected_elytra
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/decision_item_addition2/selected_snowball
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/decision_item_addition2/selected_invis
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/decision_item_addition2/selected_speed
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/decision_item_addition2/selected_jump