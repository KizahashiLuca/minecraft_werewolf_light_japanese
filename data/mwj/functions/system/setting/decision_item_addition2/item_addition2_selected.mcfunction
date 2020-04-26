###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:crossbow",tag:{Damage:325,Charged:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:"\"\\u00A7r即死の矢\""},CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:"\"\\u00A7r即死の矢\""},CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:"\"\\u00A7r即死の矢\""},CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}}],Enchantments:[{id:"minecraft:multishot",lvl:1}]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:snowball",tag:{display:{Name:"\"\\u00a7r\\u00a7bスタングレネード\"",Lore:["\"\\u00a7r\\u00a7c移動速度低下 Ⅶ (0:15)\"","\"\"","\"\\u00a7r\\u00a75効果:\"","\"\\u00a7r\\u00a7c移動速度上昇 -100%\"","\"\\u00a7r当てた範囲3mに発効\""]}}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r透明化のポーション\""},CustomPotionEffects:[{Id:14,Duration:600}],CustomPotionColor:16777215}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r俊敏のポーション\""},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:600}],CustomPotionColor:63217}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r跳躍のポーション\"",Lore:["\"\\u00A7r\\u00A79跳躍力上昇 Ⅹ (0:30)\""]},CustomPotionEffects:[{Id:8,Amplifier:9,Duration:600}],CustomPotionColor:3470848,HideFlags:32}}]}] SelectItem5 0

## Function Each Mode
execute if score @p[tag=Host] SelectItem1 matches 1 run function mwj:system/setting/decision_item_addition2/selected_crossbow
execute if score @p[tag=Host] SelectItem2 matches 1 run function mwj:system/setting/decision_item_addition2/selected_snowball
execute if score @p[tag=Host] SelectItem3 matches 1 run function mwj:system/setting/decision_item_addition2/selected_invis
execute if score @p[tag=Host] SelectItem4 matches 1 run function mwj:system/setting/decision_item_addition2/selected_speed
execute if score @p[tag=Host] SelectItem5 matches 1 run function mwj:system/setting/decision_item_addition2/selected_jump