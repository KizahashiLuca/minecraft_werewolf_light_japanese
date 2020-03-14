###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=host] inventory.9 minecraft:nether_star{display:{Name:"\"\\u00A7r前へ\""}} 1
replaceitem entity @p[tag=host] inventory.11 minecraft:stick{display:{Name:"\"\\u00A7r木の棒\"",Lore:["\"ゴミ。何の能力もない\""]},Unbreakable:1,HideFlags:39} 1
replaceitem entity @p[tag=host] inventory.12 minecraft:totem_of_undying{display:{Name:"\"\\u00A7r不死のトーテム\"",Lore:["\"手に持っていれば一度だけ致死ダメージを免れる\""]},HideFlags:39} 1
replaceitem entity @p[tag=host] inventory.13 minecraft:lingering_potion{display:{Name:"\"\\u00A7r即死の残留ポーション\"",Lore:["\"即死効果を一定範囲に一定時間ばらまくポーション。\""]},CustomPotionEffects:[{Id:7,Amplifier:3,Duration:600}],CustomPotionColor:16122102,HideFlags:39} 1
replaceitem entity @p[tag=host] inventory.14 minecraft:ender_pearl{display:{Name:"\"\\u00A7rエンダーパール\"",Lore:["\"投げたところに瞬間移動できる\""]},HideFlags:39} 1
replaceitem entity @p[tag=host] inventory.15 minecraft:diamond_hoe{display:{Name:"\"\\u00A7rダイヤのクワ\"",Lore:["\"一撃必殺の近接攻撃が一度だけ可能\""]},Damage:1561,Enchantments:[{id:"minecraft:sharpness",lvl:199}],HideFlags:39} 1
replaceitem entity @p[tag=host] inventory.17 minecraft:nether_star{display:{Name:"\"\\u00A7r次へ\""}} 1
replaceitem entity @p[tag=host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7rキャンセル\""}} 1
replaceitem entity @p[tag=host] inventory.22 minecraft:map{display:{Name:"\"\\u00A7rリセット\""}} 1
replaceitem entity @p[tag=host] inventory.25 minecraft:tripwire_hook{display:{Name:"\"\\u00A7rこれで決定\""}} 1

## Set Nether Star above Added Item
execute if score Time AddedStick matches 1 run replaceitem entity @p[tag=host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedTotem matches 1 run replaceitem entity @p[tag=host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedDeath2 matches 1 run replaceitem entity @p[tag=host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedPearl matches 1 run replaceitem entity @p[tag=host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedHoe matches 1 run replaceitem entity @p[tag=host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1