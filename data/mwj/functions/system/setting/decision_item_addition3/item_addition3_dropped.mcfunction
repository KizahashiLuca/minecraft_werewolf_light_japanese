###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident",tag:{display:{Lore:['"\\u00A7r\\u00A77召雷"','"\\u00a7r\\u00A7f使用方法 : 投擲"','"\\u00a7r\\u00A7f効果範囲 : 半径4m"']},Damage:248,HideFlags:1}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:conduit",tag:{display:{Name:'"\\u00a7r\\u00a7bコンカッション地雷"',Lore:['"\\u00a7r\\u00a79発光 (0:10)"','"\\u00a7r\\u00a7c吐き気 Ⅱ (0:10)"','"\\u00a7r\\u00A7f設置方法 : Shift+Qキー同時押し"','"\\u00a7r\\u00A7f設置以後 : アイテム非消失・設置者回収可能"','"\\u00a7r\\u00A7f効果範囲 : 半径1.5m"']},Tags:"Mine"}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow",tag:{Damage:325,Charged:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'"\\u00A7r\\u00A7f即死の矢"'},CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'"\\u00A7r\\u00A7f即死の矢"'},CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'"\\u00A7r\\u00A7f即死の矢"'},CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}}],Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] ThrowItem 1
execute if score #MWL Version matches 15.. run function mwj:system/setting/decision_item_addition3/detect_dropped_honey_block
execute if score #MWL Version matches 16.. run function mwj:system/setting/decision_item_addition3/detect_dropped_soul_lantern