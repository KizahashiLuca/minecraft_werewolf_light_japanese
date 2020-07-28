###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:stick",tag:{Unbreakable:1b}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:totem_of_undying"}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:lingering_potion",tag:{display:{Name:'"\\u00A7r\\u00A7f即死の残留ポーション"'},CustomPotionEffects:[{Id:7b,Amplifier:3b}],CustomPotionColor:16122102}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:ender_pearl"}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:diamond_hoe",tag:{display:{Lore:['"\\u00A7r\\u00A77ダメージ増加 ⅭⅭ"']},Damage:1561,Enchantments:[{id:"minecraft:sharpness",lvl:200s}],HideFlags:1}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/decision_item_addition1/selected_stick
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/decision_item_addition1/selected_totem
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/decision_item_addition1/selected_death2
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/decision_item_addition1/selected_pearl
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/decision_item_addition1/selected_hoe