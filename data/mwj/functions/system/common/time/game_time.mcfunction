###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Set message
bossbar set minecraft:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]

## Set bossbar style
execute if score #MWL Second > #MWL ChangeGlowTime run bossbar set minecraft:bossbar color green
execute if score #MWL Second <= #MWL ChangeGlowTime run bossbar set minecraft:bossbar color yellow
execute if score #MWL Second matches 0..10 run bossbar set minecraft:bossbar color red