###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=host] inventory.11 minecraft:cobweb{display:{Name:"\"\\u00A7r潜伏時間設定\""}} 1
replaceitem entity @p[tag=host] inventory.12 minecraft:clock{display:{Name:"\"\\u00A7rゲーム時間設定\""}} 1
execute if score Time PrevAddedRole matches 1.. run replaceitem entity @p[tag=host] inventory.13 minecraft:armor_stand{display:{Name:"\"\\u00A7r追加役職設定\""}} 1
replaceitem entity @p[tag=host] inventory.14 minecraft:diamond_sword{display:{Name:"\"\\u00A7r追加アイテム設定\""}} 1
replaceitem entity @p[tag=host] inventory.15 minecraft:map{display:{Name:"\"\\u00A7rモード設定\""}} 1
replaceitem entity @p[tag=host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7rゲームキャンセル\""}} 1
replaceitem entity @p[tag=host] inventory.25 minecraft:tripwire_hook{display:{Name:"\"\\u00A7rゲームスタート\""}} 1