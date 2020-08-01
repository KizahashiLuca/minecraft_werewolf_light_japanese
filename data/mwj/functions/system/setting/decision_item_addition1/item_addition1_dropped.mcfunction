###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",tag:{Unbreakable:1b}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:totem_of_undying"}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:lingering_potion",tag:{display:{Name:'"\\u00A7r\\u00A7f即死の残留ポーション"'},CustomPotionEffects:[{Id:7b,Amplifier:3b}],CustomPotionColor:16122102}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl"}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_hoe",tag:{display:{Lore:['"\\u00A7r\\u00A77ダメージ増加 ⅭⅭ"']},Damage:1561,Enchantments:[{id:"minecraft:sharpness",lvl:200s}],HideFlags:1}}}] ThrowItem 1