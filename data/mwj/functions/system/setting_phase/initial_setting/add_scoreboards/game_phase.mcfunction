####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Game phase - Rolls
## Common
scoreboard objectives add TagOfRoleWork dummy
## Common of augury
scoreboard objectives add DropTorch minecraft.dropped:minecraft.redstone_torch
scoreboard objectives add CraftTorch minecraft.crafted:minecraft.redstone_torch
scoreboard objectives add RemovedTorch dummy
scoreboard objectives add RoleDone dummy
scoreboard objectives add PageNumer dummy
scoreboard objectives add PageDenom dummy
scoreboard objectives add TurnPageNum dummy
scoreboard objectives add TurnPageMax dummy
scoreboard objectives add TargetOfRole dummy
scoreboard objectives add TurnPageRight trigger
scoreboard objectives add TurnPageLeft trigger
scoreboard objectives add RoleTrigger trigger
## Fox
scoreboard objectives add KilledBySeer dummy
scoreboard objectives add FoxSpawnSecond dummy
scoreboard objectives add FoxSpawnTick dummy
scoreboard objectives add RespawnTime minecraft.custom:minecraft.time_since_death
## Bakery
scoreboard objectives add CountOfBakery dummy
## Mason
scoreboard objectives add MasonPair dummy
scoreboard objectives add NumOfMasonPair dummy
## Thief
scoreboard objectives add RoleStolen dummy
scoreboard objectives add NumberOfStolen dummy
scoreboard objectives add FlagOfThiefLog dummy
scoreboard objectives add TargetOfStolen dummy
scoreboard objectives add ThiefStealSecond dummy
scoreboard objectives add ThiefStealTick dummy
## Little Red
scoreboard objectives add KilledByWolf dummy
## Cat
scoreboard objectives add KilledByCat dummy
## 2nd Role
scoreboard objectives add 2ndRoleDone dummy
scoreboard objectives add 2ndRoleGiven dummy
scoreboard objectives add 2ndRoleDrunk minecraft.used:minecraft.milk_bucket

## Game phase - Items
## Snowball
scoreboard objectives add NumberOfSnowball dummy
## Trident
scoreboard objectives add ThrowTrident minecraft.used:minecraft.trident
scoreboard objectives add KilledByTrident dummy
## Mines
scoreboard objectives add DropConduit minecraft.dropped:minecraft.conduit
## Honey block
scoreboard objectives add HoneyBottleCount dummy
scoreboard objectives add DropHoneyBlock minecraft.dropped:minecraft.honey_block
## Soul lantern
scoreboard objectives add TeleporterTemp dummy
scoreboard objectives add TeleporterPosX dummy
scoreboard objectives add TeleporterPosY dummy
scoreboard objectives add TeleporterPosZ dummy
scoreboard objectives add DropSoulLantern minecraft.dropped:minecraft.soul_lantern
scoreboard objectives add DropLantern minecraft.dropped:minecraft.lantern
## Twisting vines
scoreboard objectives add TwistVinesCount dummy
scoreboard objectives add DropTwistVines minecraft.dropped:minecraft.twisting_vines

## Game phase
## Kill log
scoreboard objectives add DeathCount deathCount
scoreboard objectives add NumberOfKiller dummy
scoreboard objectives add NumberOfVictim dummy
scoreboard objectives add CountOfKiller dummy
scoreboard objectives add CountOfVictim dummy
scoreboard objectives add FlagOfVictim dummy
scoreboard objectives add FlagOfKiller dummy
scoreboard objectives add NumberOfKillLog dummy
scoreboard objectives add KillLogOfFox dummy
scoreboard objectives add KillLogOfCat dummy
scoreboard objectives add KillLogOfTrident dummy