###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Add Variables for Game
scoreboard objectives add GAME dummy
## Variables for Timer
scoreboard objectives add SECOND dummy
scoreboard objectives add TICK dummy
scoreboard objectives add 20 dummy
## Add Variables for Setting
scoreboard objectives add AddedRole dummy
scoreboard objectives add LimitTime dummy
scoreboard objectives add LastAddedRole dummy
scoreboard objectives add LastLimitTime dummy
scoreboard objectives add ChangeLimitTime dummy
## Add Variables for GUI
scoreboard objectives add SelectedBarrier dummy
scoreboard objectives add SelectedWire dummy
scoreboard objectives add SelectedStar dummy
scoreboard objectives add SelectedAStand dummy
scoreboard objectives add SelectedClock dummy
scoreboard objectives add SelectedFox dummy
scoreboard objectives add SelectedVilla dummy
scoreboard objectives add SelectedMason dummy
scoreboard objectives add SelectedDetec dummy
scoreboard objectives add SelectedCat dummy
scoreboard objectives add Selected10mins dummy
scoreboard objectives add Selected15mins dummy
scoreboard objectives add Selected20mins dummy
scoreboard objectives add Selected25mins dummy
scoreboard objectives add Selected30mins dummy
## Add Variables for Throwing
scoreboard objectives add ThrowBarrier dummy
scoreboard objectives add ThrowWireHook dummy
scoreboard objectives add ThrowNetherStar dummy
scoreboard objectives add ThrowArmorStand dummy
scoreboard objectives add ThrowClock dummy
scoreboard objectives add ThrowHeadFox dummy
scoreboard objectives add ThrowHeadVilla dummy
scoreboard objectives add ThrowHeadMason dummy
scoreboard objectives add ThrowHeadDetec dummy
scoreboard objectives add ThrowHeadCat dummy
scoreboard objectives add Throw10mins dummy
scoreboard objectives add Throw15mins dummy
scoreboard objectives add Throw20mins dummy
scoreboard objectives add Throw25mins dummy
scoreboard objectives add Throw30mins dummy

## Set Variables for Timer
scoreboard players set Time SECOND 61
scoreboard players set Time TICK 0
scoreboard players set Time 20 20
## Set Variables for Setting
scoreboard players set Time AddedRole 4
scoreboard players set Time LimitTime 2
scoreboard players set Time LastAddedRole 4
scoreboard players set Time LastLimitTime 2
scoreboard players set Time ChangeLimitTime 5