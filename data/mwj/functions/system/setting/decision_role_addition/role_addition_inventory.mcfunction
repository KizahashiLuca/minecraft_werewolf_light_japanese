###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Replace Inventory
replaceitem entity @a[tag=host] inventory.11 minecraft:player_head{SkullOwner:"mhf_villager",display:{Name:"\"\\u00A7r特殊役職無し\""}} 1
replaceitem entity @a[tag=host] inventory.12 minecraft:player_head{SkullOwner:"mhf_fox",display:{Name:"\"\\u00A7r妖狐の追加\""}} 1
replaceitem entity @a[tag=host] inventory.13 minecraft:player_head{SkullOwner:"mhf_golem",display:{Name:"\"\\u00A7r共有者の追加\""}} 1
replaceitem entity @a[tag=host] inventory.14 minecraft:player_head{SkullOwner:"mhf_steve",display:{Name:"\"\\u00A7r探偵の追加\""}} 1
replaceitem entity @a[tag=host] inventory.15 minecraft:player_head{SkullOwner:"mhf_ocelot",display:{Name:"\"\\u00A7r猫又の追加\""}} 1
replaceitem entity @a[tag=host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7rキャンセル\""}} 1
replaceitem entity @a[tag=host] inventory.25 minecraft:tripwire_hook{display:{Name:"\"\\u00A7rこれで決定\""}} 1

## Set Nether Star above Selected Role
execute if score Time AddedRole matches 4 run replaceitem entity @a[tag=host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedRole matches 3 run replaceitem entity @a[tag=host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedRole matches 7 run replaceitem entity @a[tag=host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedRole matches 8 run replaceitem entity @a[tag=host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time AddedRole matches 10 run replaceitem entity @a[tag=host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1