###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

## Winner FOX
execute if entity @p[scores={ROLE=3,DEATH=0}] if score Time BLACK matches 0 if score Time WHITE matches 0 run function mwj:system/finish/win_fox
execute if entity @p[scores={ROLE=3,DEATH=0}] if score Time BLACK matches 0 unless score Time WHITE matches 0 run function mwj:system/finish/win_fox
execute if entity @p[scores={ROLE=3,DEATH=0}] if score Time WHITE matches 1 run function mwj:system/finish/win_fox

## Winner BLACK
execute unless entity @p[scores={ROLE=3,DEATH=0}] if score Time BLACK matches 0 if score Time WHITE matches 0 run function mwj:system/finish/win_draw
execute unless entity @p[scores={ROLE=3,DEATH=0}] if score Time BLACK matches 0 unless score Time WHITE matches 0..1 run function mwj:system/finish/win_white
execute unless entity @p[scores={ROLE=3,DEATH=0}] unless score Time BLACK matches 0 if score Time WHITE matches 1 run function mwj:system/finish/win_black

## time is up
execute if score Time Limit matches 0 run function mwj:system/finish/win_draw