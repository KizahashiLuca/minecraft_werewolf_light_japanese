###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.9 minecraft:red_stained_glass{display:{Name:'"\\u00A7r\\u00A7f人狼の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.10 minecraft:pink_stained_glass{display:{Name:'"\\u00A7r\\u00A7f狂人の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.11 minecraft:purple_stained_glass{display:{Name:'"\\u00A7r\\u00A7f羽衣狐の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:light_blue_stained_glass{display:{Name:'"\\u00A7r\\u00A7f預言者の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:yellow_stained_glass{display:{Name:'"\\u00A7r\\u00A7f霊媒師の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:green_stained_glass{display:{Name:'"\\u00A7r\\u00A7f共有者の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:cyan_stained_glass{display:{Name:'"\\u00A7r\\u00A7f探偵の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.16 minecraft:blue_stained_glass{display:{Name:'"\\u00A7r\\u00A7f怪盗の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.17 minecraft:orange_stained_glass{display:{Name:'"\\u00A7r\\u00A7f猫又の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.21 minecraft:map{display:{Name:'"\\u00A7r\\u00A7eリセット"'}} 1
execute if score #MWL AddedVilla matches 1.. run replaceitem entity @p[tag=Host] inventory.23 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7f残り追加可能人数"',Tag:"Villa"}} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39} 1

## Set Nether Star above Selected Role
execute if score #MWL AddedWolf matches 1.. run replaceitem entity @p[tag=Host] inventory.0 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"',Tag:"Wolf"}} 1
execute if score #MWL AddedMadman matches 1.. run replaceitem entity @p[tag=Host] inventory.1 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"',Tag:"Madman"}} 1
execute if score #MWL AddedFox matches 1.. run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"',Tag:"Fox"}} 1
execute if score #MWL AddedSeer matches 1.. run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"',Tag:"Seer"}} 1
execute if score #MWL AddedMedium matches 1.. run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"',Tag:"Medium"}} 1
execute if score #MWL AddedMason matches 1.. run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"',Tag:"Mason"}} 1
execute if score #MWL AddedDetec matches 1.. run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"',Tag:"Detec"}} 1
execute if score #MWL AddedThief matches 1.. run replaceitem entity @p[tag=Host] inventory.7 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"',Tag:"Thief"}} 1
execute if score #MWL AddedCat matches 1.. run replaceitem entity @p[tag=Host] inventory.8 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"',Tag:"Cat"}} 1

scoreboard objectives add AddedRoleTmp dummy
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedWolf
function mwj:system/setting/decision_role_addition/added_wolf
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedMadman
function mwj:system/setting/decision_role_addition/added_madman
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedFox
function mwj:system/setting/decision_role_addition/added_fox
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedVilla
function mwj:system/setting/decision_role_addition/added_villager
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedSeer
function mwj:system/setting/decision_role_addition/added_seer
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedMedium
function mwj:system/setting/decision_role_addition/added_medium
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedMason
function mwj:system/setting/decision_role_addition/added_mason
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedDetec
function mwj:system/setting/decision_role_addition/added_detective
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedThief
function mwj:system/setting/decision_role_addition/added_thief
scoreboard players operation #MWL AddedRoleTmp = #MWL AddedCat
function mwj:system/setting/decision_role_addition/added_cat
scoreboard objectives remove AddedRoleTmp