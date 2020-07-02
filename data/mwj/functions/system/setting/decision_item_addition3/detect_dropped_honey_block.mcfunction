###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Detect dropped honey_block
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:honey_block",tag:{display:{Name:'"\\u00a7r\\u00a7bスティッキー地雷"',Lore:['"\\u00a7r\\u00a7c移動速度低下 Ⅲ (**:**)"','"\\u00a7r\\u00A7f設置範囲半径4mに発効"'],Tag:"\"HoneyBlock\""}}}}] ThrowItem 1
