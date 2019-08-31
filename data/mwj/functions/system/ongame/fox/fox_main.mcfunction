###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Fox Main
spawnpoint @s ~ ~ ~
scoreboard players set @s DEATH 0
give @s minecraft:bow{display:{Name:"\"弓\"",Lore:["\"一撃必殺の弓\""]},Unbreakable:1,Enchantments:[{id:"minecraft:power",lvl:199},{id:"minecraft:vanishing_curse",lvl:1},{id:"minecraft:infinity",lvl:1}],HideFlags:39} 1
give @s minecraft:arrow{display:{Name:"\"矢\""},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:39} 1
give @s minecraft:redstone_torch{display:{Name:"\"ただの杖\"",Lore:["\"効果のない杖\""]},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:39} 1
