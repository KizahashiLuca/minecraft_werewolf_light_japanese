###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:redstone{display:{Name:"\"\\u00A7r\\u00A7f潜伏時間設定\""}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:glowstone_dust{display:{Name:"\"\\u00A7r\\u00A7f発光時間設定\""}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:gunpowder{display:{Name:"\"\\u00A7r\\u00A7fゲーム時間設定\""}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:map{display:{Name:"\"\\u00A7r\\u00A7fモード設定\""}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:chest{display:{Name:"\"\\u00A7r\\u00A7f追加アイテム設定\""}} 1

execute if score #MWL PrevAddedRole matches 1.. run replaceitem entity @p[tag=Host] inventory.17 minecraft:armor_stand{display:{Name:"\"\\u00A7r\\u00A7f追加役職設定\""}} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dゲームキャンセル\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7bゲームスタート\""},HideFlags:39} 1