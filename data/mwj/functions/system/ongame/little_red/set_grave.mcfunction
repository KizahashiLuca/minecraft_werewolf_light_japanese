####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Put a tag
execute as @s[advancements={mwj:be_killed_by_werewolf=true}] run tag @s add Cryptobiosis
execute as @s[tag=Cryptobiosis] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Small:1b,Tags:["LittleRedGrave","NotNumbered"]}
execute as @s[tag=Cryptobiosis] run scoreboard players operation @e[type=minecraft:armor_stand,tag=LittleRedGrave,tag=NotNumbered] NumOfPlayers = @s NumOfPlayers
tag @e[type=minecraft:armor_stand,tag=LittleRedGrave,tag=NotNumbered] remove NotNumbered

## Replace items
execute as @s[tag=Cryptobiosis] run function mwj:system/ongame/little_red/replace_item
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_gray_stained_glass_pane"}}]

## Give an effect
effect give @s[tag=Cryptobiosis] minecraft:resistance 1000000 100 true