###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Detect dropped soul_lantern
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:soul_lantern",tag:{display:{Name:"\"\\u00a7r\\u00a7bテレポーター\"",Lore:["\"\\u00a7r\\u00A7f片方のランタンを使用して、\"","\"\\u00a7r\\u00A7fもう片方のランタン設置箇所にテレポート\""],Tag:"\"SoulLantern\""}}}}] ThrowItem 1
