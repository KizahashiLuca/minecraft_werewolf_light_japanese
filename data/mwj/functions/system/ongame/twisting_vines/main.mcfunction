####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Twisting Vines
execute as @a[team=Player,scores={DropTwistVines=1..,SneakTime=1..}] at @s run function mwj:system/ongame/twisting_vines/throw_vines
scoreboard players set @a[team=Player,scores={DropTwistVines=1..,SneakTime=1..}] SneakTime 0
scoreboard players remove @a[team=Player,scores={DropTwistVines=1..}] DropTwistVines 1
scoreboard players reset @a[team=Player,scores={DropTwistVines=..0}] DropTwistVines