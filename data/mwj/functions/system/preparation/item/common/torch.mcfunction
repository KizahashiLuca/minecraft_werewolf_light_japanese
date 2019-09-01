###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

execute if score @s ROLE matches 1..4 run give @s minecraft:redstone_torch{display:{Name:"\"ただの杖\"",Lore:["\"効果のない杖\""]},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:39} 1
execute if score @s ROLE matches 5 run give @s minecraft:redstone_torch{display:{Name:"\"預言の杖\"",Lore:["\"インベントリ閉じているとき、Qキーで預言が可能\""]},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:39} 1
execute if score @s ROLE matches 6 run give @s minecraft:redstone_torch{display:{Name:"\"霊媒の杖\"",Lore:["\"インベントリ閉じているとき、Qキーで霊媒が可能\""]},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:39} 1
execute if score @s ROLE matches 7 run give @s minecraft:redstone_torch{display:{Name:"\"ただの杖\"",Lore:["\"効果のない杖\""]},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:39} 1
execute if score @s ROLE matches 8 run give @s minecraft:redstone_torch{display:{Name:"\"探偵の杖\"",Lore:["\"インベントリ閉じているとき、Qキーで探偵が可能\""]},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:39} 1
execute if score @s ROLE matches 9..10 run give @s minecraft:redstone_torch{display:{Name:"\"ただの杖\"",Lore:["\"効果のない杖\""]},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:39} 1
