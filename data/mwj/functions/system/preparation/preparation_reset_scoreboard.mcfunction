###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Add Variables for Roles
#### Seer/Medium/Detective
scoreboard objectives add DropTorch minecraft.dropped:minecraft.redstone_torch
scoreboard objectives add RemovedTorch dummy
scoreboard objectives add DONE dummy
scoreboard objectives add 10 dummy
scoreboard objectives add PageNumer dummy
scoreboard objectives add PageDenom dummy
scoreboard objectives add TurnPageNum dummy
scoreboard objectives add TurnPageMax dummy
scoreboard objectives add RoleTarget dummy
scoreboard objectives add TurnPageRight trigger
scoreboard objectives add TurnPageLeft trigger
scoreboard objectives add RoleTrigger trigger
#### Fox
scoreboard objectives add KilledBySeer dummy
scoreboard objectives add FoxSpawnSecond dummy
scoreboard objectives add FoxSpawnTick dummy
scoreboard objectives add RESPAWN minecraft.custom:minecraft.time_since_death
#### Thief
scoreboard objectives add STEALER dummy
scoreboard objectives add STOLEN dummy
scoreboard objectives add STEAL_NUM dummy
scoreboard objectives add STEAL_FLAG dummy
scoreboard objectives add STEAL_TARGET dummy
scoreboard objectives add ThiefStealSecond dummy
scoreboard objectives add ThiefStealTick dummy
#### Cat
scoreboard objectives add KilledByCat dummy
## Add Variables for Items
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time
#### Snowball
scoreboard objectives add SNOWBALL dummy
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
scoreboard players set @a DropTorch 0
scoreboard players set @a RemovedTorch 0
scoreboard players set @a DONE 0
#### Seer/Medium/Detective
scoreboard players set #MWL 10 10
scoreboard players set @a PageNumer 0
scoreboard players set @a PageDenom 0
scoreboard players set @a TurnPageNum 0
scoreboard players set @a RoleTarget 0
scoreboard players reset @a TurnPageRight
scoreboard players reset @a TurnPageLeft
scoreboard players reset @a RoleTrigger
scoreboard players enable @a TurnPageRight
scoreboard players enable @a TurnPageLeft
scoreboard players enable @a RoleTrigger
scoreboard players set #MWL TurnPageMax 0
function mwj:system/preparation/preparation_reset_page_role
#### Fox
scoreboard players set @a[scores={CurrentRole=10}] FoxSpawnSecond 0
scoreboard players set @a[scores={CurrentRole=10}] FoxSpawnTick 0
scoreboard players set @a[scores={CurrentRole=10}] KilledBySeer 0
#### Thief
scoreboard players set @a STOLEN 0
scoreboard players set @a[scores={CurrentRole=35}] STEALER 0
scoreboard players set @a[scores={CurrentRole=35}] ThiefStealSecond 0
scoreboard players set @a[scores={CurrentRole=35}] ThiefStealTick 0
scoreboard players set @a[scores={CurrentRole=35}] STEAL_NUM 0
scoreboard players set @a[scores={CurrentRole=35}] STEAL_TARGET 0
scoreboard players set @a[scores={CurrentRole=35}] STEAL_FLAG 0
scoreboard players set #MWL STEAL_NUM 1
#### Cat
scoreboard players set @a KilledByCat 0
## Add Items
scoreboard players set @a SneakTime 0
#### Snowball
scoreboard players set #MWL SNOWBALL 0
#### Trident
scoreboard players set @a ThrowTrident 0
scoreboard players set @a KilledByTrident 0
#### Mines
scoreboard players set @a DropConduit 0
#### Honey block
scoreboard players set @a HoneyBottleCount 0
scoreboard players set @a DropHoneyBlock 0
#### Soul lantern
scoreboard players set @a TeleporterTemp 0
scoreboard players set @a TeleporterPosX 0
scoreboard players set @a TeleporterPosY 0
scoreboard players set @a TeleporterPosZ 0
scoreboard players set @a DropSoulLantern 0
scoreboard players set @a DropLantern 0

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