###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.10 minecraft:paper{display:{Name:"\"\\u00A7rなし\""}} 1
replaceitem entity @p[tag=Host] inventory.11 minecraft:paper{display:{Name:"\"\\u00A7r1割\""}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:paper{display:{Name:"\"\\u00A7r2割\""}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:paper{display:{Name:"\"\\u00A7r3割\""}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:paper{display:{Name:"\"\\u00A7r5割\""}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:paper{display:{Name:"\"\\u00A7r8割\""}} 1
replaceitem entity @p[tag=Host] inventory.16 minecraft:paper{display:{Name:"\"\\u00A7r10割\""}} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7rキャンセル\""}} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:tripwire_hook{display:{Name:"\"\\u00A7rこれで決定\""}} 1

## Set Nether Star above Glow Time
execute if score Time GlowTime matches 0 run replaceitem entity @p[tag=Host] inventory.1 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time GlowTime matches 1 run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time GlowTime matches 2 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time GlowTime matches 3 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time GlowTime matches 5 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time GlowTime matches 8 run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time GlowTime matches 10 run replaceitem entity @p[tag=Host] inventory.7 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1