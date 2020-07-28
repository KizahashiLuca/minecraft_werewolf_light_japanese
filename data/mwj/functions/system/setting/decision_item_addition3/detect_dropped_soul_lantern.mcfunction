###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Detect dropped soul_lantern
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:soul_lantern",tag:{display:{Name:'"\\u00a7r\\u00a7bテレポーター"',Lore:['"\\u00a7r\\u00A7f使用方法 : Shift+Qキー同時押し"','"\\u00a7r\\u00A7f使用以後 : テレポート先指定完了・魂のランタン配布"']},Tags:"SoulLantern"}}}] ThrowItem 1
