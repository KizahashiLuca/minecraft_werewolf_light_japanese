###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Replace Inventory
execute if score #MWL SetDummyRole matches 0 run replaceitem entity @p[tag=Host] inventory.9 minecraft:carved_pumpkin{display:{Name:'"\\u00A7r\\u00A7f役欠けなし"'}} 1
execute if score #MWL SetDummyRole matches 1 run replaceitem entity @p[tag=Host] inventory.9 minecraft:jack_o_lantern{display:{Name:'"\\u00A7r\\u00A7f役欠けあり"'}} 1

replaceitem entity @p[tag=Host] inventory.11 minecraft:redstone{display:{Name:'"\\u00A7r\\u00A7f潜伏時間設定"'}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:glowstone_dust{display:{Name:'"\\u00A7r\\u00A7f発光時間設定"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:gunpowder{display:{Name:'"\\u00A7r\\u00A7f制限時間設定"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:map{display:{Name:'"\\u00A7r\\u00A7fゲームモード(人狼勝利条件)設定"'}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:chest{display:{Name:'"\\u00A7r\\u00A7f追加特殊アイテム設定"'}} 1

execute if score #MWL AddedRoleNumber matches 1.. run replaceitem entity @p[tag=Host] inventory.17 minecraft:armor_stand{display:{Name:'"\\u00A7r\\u00A7f追加役職設定"'}} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dゲームキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7bゲームスタート"'},HideFlags:39} 1