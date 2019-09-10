###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Set Time Limit
scoreboard players operation 残り時間 Info = Time SECOND

## Set Role
scoreboard players set あなたは人狼 Info -1
scoreboard players set あなたは狂人 Info -1
scoreboard players set あなたは羽衣狐 Info -1
scoreboard players set あなたは村人 Info -1
scoreboard players set あなたは預言者 Info -1
scoreboard players set あなたは霊媒師 Info -1
scoreboard players set あなたは共有者 Info -1
scoreboard players set あなたは探偵 Info -1
scoreboard players set あなたは猫又 Info -1

## Set Sidebar
scoreboard objectives setdisplay sidebar.team.white Info