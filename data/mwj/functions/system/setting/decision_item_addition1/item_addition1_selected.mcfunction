###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:stick",tag:{Unbreakable:1}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:totem_of_undying"}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:lingering_potion",tag:{display:{Name:"\"\\u00A7r即死の残留ポーション\""},CustomPotionEffects:[{Id:7,Amplifier:3}],CustomPotionColor:16122102}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:ender_pearl"}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:diamond_hoe",tag:{display:{Lore:["\"\\u00A7r\\u00A77ダメージ増加 ⅭⅭ\""]},Damage:1561,Enchantments:[{id:"minecraft:sharpness",lvl:200}],HideFlags:1}}]}] SelectItem5 0

## Function Each Mode
execute if score @p[tag=Host] SelectItem1 matches 1 run function mwj:system/setting/decision_item_addition1/selected_stick
execute if score @p[tag=Host] SelectItem2 matches 1 run function mwj:system/setting/decision_item_addition1/selected_totem
execute if score @p[tag=Host] SelectItem3 matches 1 run function mwj:system/setting/decision_item_addition1/selected_death2
execute if score @p[tag=Host] SelectItem4 matches 1 run function mwj:system/setting/decision_item_addition1/selected_pearl
execute if score @p[tag=Host] SelectItem5 matches 1 run function mwj:system/setting/decision_item_addition1/selected_hoe