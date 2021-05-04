####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear snow_block
clear @s minecraft:snow_block 1

## Give snowball
loot give @s loot mwj:item/special/snowball
loot give @s loot mwj:item/special/snowball
loot give @s loot mwj:item/special/snowball
loot give @s loot mwj:item/special/snowball

## Loop
execute as @s[team=Player,nbt={Inventory:[{id:"minecraft:snow_block"}]}] run function mwj:system/ongame/snowball/clear_snowball