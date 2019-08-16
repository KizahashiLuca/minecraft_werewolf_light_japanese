###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Change gamerules always
gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule announceAdvancements false

## Output the title
tellraw @a ["",{"text":"\n----------------------------------\n","color":"reset"},{"text":"Minecraft Werewolf Light beta-1.3\n","bold":true,"color":"red"},{"text":"  Thank you for Downloading\n  当ゲームの必要人数は","color":"reset"},{"text":" 3 ","bold":true,"color":"red"},{"text":"人から","color":"reset"},{"text":" 14 ","bold":true,"color":"red"},{"text":"人です。\n  ゲームの詳しいルールなどは、","color":"reset"},{"text":"こちら","bold":true,"color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/KizahashiLuca/minecraft_werewolf_light_japanese/wiki"}},{"text":"をご覧ください。\n----------------------------------\n","color":"reset"}]
