####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Put a tag
scoreboard players set @s RoleOfNum 1

## Change Spectator for the Dead
gamemode adventure @a[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}]

## Teleport
execute as @e[type=minecraft:armor_stand,tag=LittleRedGrave] if score @s NumOfPlayers = @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] NumOfPlayers run tp @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] @s

## Give an effect
effect clear @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}]
effect give @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] minecraft:resistance 1000000 100 true

## Replace items
execute as @s[tag=Cryptobiosis,nbt=!{Inventory:[{Slot:0b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:2b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:3b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:4b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:5b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:6b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:7b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:8b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:9b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:10b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:11b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:12b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:13b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:14b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:15b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:16b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:17b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:18b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:19b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:20b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:21b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:22b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:23b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:24b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:25b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:26b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:27b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:28b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:29b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:30b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:31b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:32b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:33b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:34b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:35b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}},{Slot:-106b,id:"minecraft:light_gray_stained_glass_pane",tag:{Tags:["MWLitem"]}}]}] run function mwj:system/ongame/little_red/replace_item
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_gray_stained_glass_pane"}}]

## Kill arrows
execute at @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] run kill @e[type=minecraft:arrow,distance=..2]
execute at @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] run kill @e[type=minecraft:spectral_arrow,distance=..1]

## Remove a tag
scoreboard players set @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] RoleOfNum 0