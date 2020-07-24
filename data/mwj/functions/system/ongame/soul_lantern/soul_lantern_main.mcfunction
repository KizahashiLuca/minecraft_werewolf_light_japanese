###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: beta-1.6
###############################

## Soul lantern
execute as @a[team=Player,scores={DropLantern=1..,SneakTime=1..}] at @s run function mwj:system/ongame/soul_lantern/throw_lantern
scoreboard players set @a[team=Player,scores={DropLantern=1..,SneakTime=1..}] SneakTime 0
scoreboard players remove @a[team=Player,scores={DropLantern=1..}] DropLantern 1

execute as @a[team=Player,scores={DropSoulLantern=1..,SneakTime=1..}] at @s run function mwj:system/ongame/soul_lantern/throw_soul_lantern
scoreboard players set @a[team=Player,scores={DropSoulLantern=1..,SneakTime=1..}] SneakTime 0
scoreboard players remove @a[team=Player,scores={DropSoulLantern=1..}] DropSoulLantern 1
scoreboard players reset @a[team=Player] TeleporterTemp