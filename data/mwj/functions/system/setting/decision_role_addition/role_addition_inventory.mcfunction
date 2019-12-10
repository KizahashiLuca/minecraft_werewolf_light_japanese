###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Replace Inventory
replaceitem entity @p[tag=host] inventory.9 minecraft:player_head{SkullOwner:"mhf_wolf",display:{Name:"\"\\u00A7r人狼の追加\""}} 1
replaceitem entity @p[tag=host] inventory.10 minecraft:player_head{SkullOwner:"mhf_herobrine",display:{Name:"\"\\u00A7r狂人の追加\""}} 1
replaceitem entity @p[tag=host] inventory.11 minecraft:player_head{SkullOwner:"mhf_fox",display:{Name:"\"\\u00A7r羽衣狐の追加\""}} 1
replaceitem entity @p[tag=host] inventory.12 minecraft:player_head{SkullOwner:"mhf_steve",display:{Name:"\"\\u00A7r預言者の追加\""}} 1
replaceitem entity @p[tag=host] inventory.13 minecraft:player_head{SkullOwner:"mhf_alex",display:{Name:"\"\\u00A7r霊媒師の追加\""}} 1
replaceitem entity @p[tag=host] inventory.14 minecraft:player_head{SkullOwner:"mhf_golem",display:{Name:"\"\\u00A7r共有者の追加\""}} 1
replaceitem entity @p[tag=host] inventory.15 minecraft:player_head{SkullOwner:"mhf_witch",display:{Name:"\"\\u00A7r探偵の追加\""}} 1
replaceitem entity @p[tag=host] inventory.16 minecraft:player_head{SkullOwner:"mhf_wskeleton",display:{Name:"\"\\u00A7r怪盗の追加\""}} 1
replaceitem entity @p[tag=host] inventory.17 minecraft:player_head{SkullOwner:"mhf_ocelot",display:{Name:"\"\\u00A7r猫又の追加\""}} 1
replaceitem entity @p[tag=host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7rキャンセル\""}} 1
replaceitem entity @p[tag=host] inventory.21 minecraft:map{display:{Name:"\"\\u00A7rリセット\""}} 1
execute if score Time AddedVilla matches 1.. run replaceitem entity @p[tag=host] inventory.23 minecraft:nether_star{display:{Name:"\"\\u00A7r残り追加可能人数\"",Taged:"Villa"}} 1
replaceitem entity @p[tag=host] inventory.25 minecraft:tripwire_hook{display:{Name:"\"\\u00A7rこれで決定\""}} 1

## Set Nether Star above Selected Role
execute if score Time AddedWolf matches 1.. run replaceitem entity @p[tag=host] inventory.0 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Wolf"}} 1
execute if score Time AddedMadman matches 1.. run replaceitem entity @p[tag=host] inventory.1 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Madman"}} 1
execute if score Time AddedFox matches 1.. run replaceitem entity @p[tag=host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Fox"}} 1
execute if score Time AddedSeer matches 1.. run replaceitem entity @p[tag=host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Seer"}} 1
execute if score Time AddedMedium matches 1.. run replaceitem entity @p[tag=host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Medium"}} 1
execute if score Time AddedMason matches 1.. run replaceitem entity @p[tag=host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Mason"}} 1
execute if score Time AddedDetec matches 1.. run replaceitem entity @p[tag=host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Detec"}} 1
execute if score Time AddedThief matches 1.. run replaceitem entity @p[tag=host] inventory.7 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Thief"}} 1
execute if score Time AddedCat matches 1.. run replaceitem entity @p[tag=host] inventory.8 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\"",Taged:"Cat"}} 1

scoreboard objectives add AddedRoleTmp dummy
scoreboard players operation Time AddedRoleTmp = Time AddedWolf
function mwj:system/setting/decision_role_addition/added_wolf
scoreboard players operation Time AddedRoleTmp = Time AddedMadman
function mwj:system/setting/decision_role_addition/added_madman
scoreboard players operation Time AddedRoleTmp = Time AddedFox
function mwj:system/setting/decision_role_addition/added_fox
scoreboard players operation Time AddedRoleTmp = Time AddedVilla
function mwj:system/setting/decision_role_addition/added_villager
scoreboard players operation Time AddedRoleTmp = Time AddedSeer
function mwj:system/setting/decision_role_addition/added_seer
scoreboard players operation Time AddedRoleTmp = Time AddedMedium
function mwj:system/setting/decision_role_addition/added_medium
scoreboard players operation Time AddedRoleTmp = Time AddedMason
function mwj:system/setting/decision_role_addition/added_mason
scoreboard players operation Time AddedRoleTmp = Time AddedDetec
function mwj:system/setting/decision_role_addition/added_detective
scoreboard players operation Time AddedRoleTmp = Time AddedThief
function mwj:system/setting/decision_role_addition/added_thief
scoreboard players operation Time AddedRoleTmp = Time AddedCat
function mwj:system/setting/decision_role_addition/added_cat
scoreboard objectives remove AddedRoleTmp