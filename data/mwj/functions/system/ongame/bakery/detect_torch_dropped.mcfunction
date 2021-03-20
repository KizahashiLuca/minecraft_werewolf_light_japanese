###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Send Message
execute as @s[scores={CountOfBakery=..0}] run function mwj:system/ongame/bakery/message_error
execute as @s[scores={CountOfBakery=1..}] run function mwj:system/ongame/bakery/message_baked

## Reset Scoreboard
scoreboard players reset @s DropTorch