###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Soul lantern
execute as @a[team=Player,scores={DropLantern=1..,SneakTime=1..}] at @s run function mwj:system/ongame/soul_lantern/throw_lantern
scoreboard players set @a[team=Player,scores={DropLantern=1..,SneakTime=1..}] SneakTime 0
scoreboard players remove @a[team=Player,scores={DropLantern=1..}] DropLantern 1
scoreboard players reset @a[team=Player,scores={DropLantern=..0}] DropLantern

execute as @a[team=Player,scores={DropSoulLantern=1..,SneakTime=1..}] at @s run function mwj:system/ongame/soul_lantern/throw_soul_lantern
scoreboard players set @a[team=Player,scores={DropSoulLantern=1..,SneakTime=1..}] SneakTime 0
scoreboard players remove @a[team=Player,scores={DropSoulLantern=1..}] DropSoulLantern 1
scoreboard players reset @a[team=Player,scores={DropSoulLantern=..0}] DropSoulLantern
scoreboard players reset @a[team=Player] TeleporterTemp