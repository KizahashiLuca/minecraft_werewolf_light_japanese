###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Set Time Limit
scoreboard players operation 残り時間 Info_wolf = Time SECOND
scoreboard players operation 残り時間 Info_madman = Time SECOND
scoreboard players operation 残り時間 Info_fox = Time SECOND
scoreboard players operation 残り時間 Info_villager = Time SECOND
scoreboard players operation 残り時間 Info_seer = Time SECOND
scoreboard players operation 残り時間 Info_medium = Time SECOND
scoreboard players operation 残り時間 Info_mason = Time SECOND
scoreboard players operation 残り時間 Info_detective = Time SECOND
scoreboard players operation 残り時間 Info_cat = Time SECOND

## Set Role
scoreboard players set あなたは人狼 Info_wolf -1
scoreboard players set あなたは狂人 Info_madman -1
scoreboard players set あなたは羽衣狐 Info_fox -1
scoreboard players set あなたは村人 Info_villager -1
scoreboard players set あなたは預言者 Info_seer -1
scoreboard players set あなたは霊媒師 Info_medium -1
scoreboard players set あなたは共有者 Info_mason -1
scoreboard players set あなたは探偵 Info_detective -1
scoreboard players set あなたは猫又 Info_cat -1

## Set Sidebar
scoreboard objectives setdisplay sidebar.team.red Info_wolf
scoreboard objectives setdisplay sidebar.team.light_purple Info_madman
scoreboard objectives setdisplay sidebar.team.dark_purple Info_fox
scoreboard objectives setdisplay sidebar.team.green Info_villager
scoreboard objectives setdisplay sidebar.team.aqua Info_seer
scoreboard objectives setdisplay sidebar.team.yellow Info_medium
scoreboard objectives setdisplay sidebar.team.dark_green Info_mason
scoreboard objectives setdisplay sidebar.team.dark_aqua Info_detective
scoreboard objectives setdisplay sidebar.team.gold Info_cat