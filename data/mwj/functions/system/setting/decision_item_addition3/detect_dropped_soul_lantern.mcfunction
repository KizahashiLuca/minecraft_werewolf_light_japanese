###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Detect dropped soul_lantern
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:soul_lantern",tag:{display:{Name:'"\\u00a7r\\u00a7bテレポーター"',Lore:['"\\u00a7r\\u00A7fShift+Qキー同時押しで"','"\\u00a7r\\u00A7fテレポート場所指定"']},Tags:"SoulLantern"}}}] ThrowItem 1
