###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Change gamerules always
gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule announceAdvancements false

## Send Title Message
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a ["",{"text":"Minecraft Werewolf Light beta-1.5","bold":true,"color":"red"}]
tellraw @a ["",{"text":"  Thank you for Downloading","color":"reset"}]
tellraw @a ["",{"text":"  当ゲームの必要人数は","color":"reset"},{"text":" 3 ","bold":true,"color":"red"},{"text":"人から","color":"reset"},{"text":" 1/0 ","bold":true,"color":"red"},{"text":"人です。","color":"reset"}]
tellraw @a ["",{"text":"  ゲームの詳しいルールなどは、","color":"reset"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"をご覧ください。","color":"reset"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]
