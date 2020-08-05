###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Put a Tag
tag @a[scores={CurrentRole=1..9}] add WereWolf
tag @a[scores={CurrentRole=10..39}] add NonWolf
tag @a[scores={CurrentRole=40}] add Cat

## Remove Effect
team modify Player friendlyFire true
effect clear @a[team=Player]

## Add Variables for Roles
#### Seer/Medium/Detective
scoreboard objectives add DropTorch minecraft.dropped:minecraft.redstone_torch
scoreboard objectives add RemovedTorch dummy
scoreboard objectives add RoleDone dummy
scoreboard objectives add 10 dummy
scoreboard objectives add PageNumer dummy
scoreboard objectives add PageDenom dummy
scoreboard objectives add TurnPageNum dummy
scoreboard objectives add TurnPageMax dummy
scoreboard objectives add TargetOfRole dummy
scoreboard objectives add TurnPageRight trigger
scoreboard objectives add TurnPageLeft trigger
scoreboard objectives add RoleTrigger trigger
#### Fox
scoreboard objectives add KilledBySeer dummy
scoreboard objectives add FoxSpawnSecond dummy
scoreboard objectives add FoxSpawnTick dummy
scoreboard objectives add RespawnTime minecraft.custom:minecraft.time_since_death
#### Thief
scoreboard objectives add RoleStolen dummy
scoreboard objectives add NumberOfStolen dummy
scoreboard objectives add FlagOfThiefLog dummy
scoreboard objectives add TargetOfStolen dummy
scoreboard objectives add ThiefStealSecond dummy
scoreboard objectives add ThiefStealTick dummy
#### Cat
scoreboard objectives add KilledByCat dummy
## Add Variables for Items
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time
#### Snowball
scoreboard objectives add NumberOfSnowball dummy
#### Trident
scoreboard objectives add ThrowTrident minecraft.used:minecraft.trident
scoreboard objectives add KilledByTrident dummy
#### Mines
scoreboard objectives add DropConduit minecraft.dropped:minecraft.conduit
#### Honey block
execute if score #MWL Version matches 15.. run function mwj:system/preparation/scoreboard/add_honey_block
#### Soul lantern
execute if score #MWL Version matches 16.. run function mwj:system/preparation/scoreboard/add_soul_lantern

## Set Variables for Role
execute as @a run scoreboard players operation @s PrevRole = @s CurrentRole
#### Set Variables for Redstone Torch
scoreboard players reset @a DropTorch
scoreboard players reset @a RemovedTorch
scoreboard players set @a RoleDone 0
#### Seer/Medium/Detective
scoreboard players set #MWL 10 10
scoreboard players reset @a PageNumer
scoreboard players reset @a PageDenom
scoreboard players set @a TurnPageNum 0
scoreboard players reset @a TargetOfRole
scoreboard players reset @a TurnPageRight
scoreboard players reset @a TurnPageLeft
scoreboard players reset @a RoleTrigger
scoreboard players enable @a TurnPageRight
scoreboard players enable @a TurnPageLeft
scoreboard players enable @a RoleTrigger
#### Number the Members
scoreboard players operation #MWL TurnPageMax = #MWL NUM
scoreboard players remove #MWL TurnPageMax 1
scoreboard players operation #MWL TurnPageMax /= #MWL 10
#### Fox
scoreboard players reset @a FoxSpawnSecond
scoreboard players reset @a FoxSpawnTick
scoreboard players reset @a KilledBySeer
#### Mason
scoreboard players reset @a[scores={CurrentRole=0..20}] MasonPair
scoreboard players reset @a[scores={CurrentRole=22..40}] MasonPair
#### Thief
scoreboard players reset @a RoleStolen
scoreboard players reset @a ThiefStealSecond
scoreboard players reset @a ThiefStealTick
scoreboard players reset @a NumberOfStolen
scoreboard players reset @a TargetOfStolen
scoreboard players reset @a FlagOfThiefLog
scoreboard players set #MWL NumberOfStolen 1
#### Cat
scoreboard players reset @a KilledByCat
## Add Items
scoreboard players reset @a SneakTime
#### Snowball
scoreboard players set #MWL NumberOfSnowball 0
#### Trident
scoreboard players reset @a ThrowTrident
scoreboard players reset @a KilledByTrident
#### Mines
scoreboard players reset @a DropConduit
#### Honey block
scoreboard players reset @a HoneyBottleCount
scoreboard players reset @a DropHoneyBlock
#### Soul lantern
scoreboard players reset @a TeleporterTemp
scoreboard players reset @a TeleporterPosX
scoreboard players reset @a TeleporterPosY
scoreboard players reset @a TeleporterPosZ
scoreboard players reset @a DropSoulLantern
scoreboard players reset @a DropLantern

## Set the Game Time
## Reset Scoreboard
scoreboard players set #MWL Tick 0
scoreboard players set #MWL Second 60
scoreboard players operation #MWL Second *= #MWL ChangeGameTime
scoreboard players operation #MWL ChangeGameTime = #MWL Second
## Set Variables for Game
execute as @a[scores={CurrentRole=1..4}] run scoreboard players add #MWL BLACK 1
execute as @a[scores={CurrentRole=10}] run scoreboard players add #MWL PURPLE 1
execute as @a[scores={CurrentRole=20..40}] run scoreboard players add #MWL WHITE 1
## Set bossbar
bossbar set minecraft:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #MWL ChangeGameTime
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL Second

## Game Start
scoreboard players set #MWL Phase 11