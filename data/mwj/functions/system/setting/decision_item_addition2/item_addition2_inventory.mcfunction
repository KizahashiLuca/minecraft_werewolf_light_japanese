###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.9 minecraft:nether_star{display:{Name:"\"\\u00A7r前へ\""}} 1
replaceitem entity @p[tag=Host] inventory.11 minecraft:crossbow{display:{Name:"\"\\u00A7rクロスボウ\"",Lore:["\"一撃必殺のクロスボウ。\"","\"1度だけ使うことができる。\"","\"拡散のエンチャント付与済。\""]},Damage:325,Charged:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}}],Enchantments:[{id:"minecraft:multishot",lvl:1}],HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:snowball{display:{Name:"\"\\u00A7rスタングレネード\"",Lore:["\"半径3mのプレイヤーの動きを15秒止める\""]}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:potion{display:{Name:"\"\\u00A7r透明化のポーション\"",Lore:["\"30秒の間、透明になるポーション\""]},CustomPotionEffects:[{Id:14,Duration:600}],CustomPotionColor:16777215,HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:potion{display:{Name:"\"\\u00A7r俊敏のポーション\"",Lore:["\"30秒の間、足が速くなるポーション\""]},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:600}],CustomPotionColor:63217,HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:potion{display:{Name:"\"\\u00A7r跳躍のポーション\"",Lore:["\"30秒の間、高く跳べるポーション\""]},CustomPotionEffects:[{Id:8,Amplifier:9,Duration:600}],CustomPotionColor:3470848,HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.17 minecraft:nether_star{display:{Name:"\"\\u00A7r次へ\""}} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7rキャンセル\""}} 1
replaceitem entity @p[tag=Host] inventory.22 minecraft:map{display:{Name:"\"\\u00A7rリセット\""}} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:tripwire_hook{display:{Name:"\"\\u00A7rこれで決定\""}} 1

## Set Nether Star above Added Item
execute if score Time AddedCrossbow matches 1 run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedSnowball matches 1 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedInvis matches 1 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedSpeed matches 1 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedJump matches 1 run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1