####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

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