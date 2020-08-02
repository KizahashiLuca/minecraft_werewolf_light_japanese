###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Add Variables for Game
scoreboard objectives add PrevRole dummy
scoreboard objectives add WINNER dummy
scoreboard objectives add WHITE dummy
scoreboard objectives add BLACK dummy
scoreboard objectives add PURPLE dummy
## Add Variables for Role
scoreboard objectives add RoleOfNum dummy
## Add Variables for Kill Log
scoreboard objectives add DeathCount deathCount
scoreboard objectives add KILLER dummy
scoreboard objectives add VICTIM dummy
scoreboard objectives add KILLER_NUM dummy
scoreboard objectives add VICTIM_NUM dummy
scoreboard objectives add VICTIM_FLAG dummy
scoreboard objectives add KILLER_FLAG dummy
scoreboard objectives add KILLLOG_NUM dummy
scoreboard objectives add KillLogOfFox dummy
scoreboard objectives add KillLogOfCat dummy
scoreboard objectives add KillLogOfTrident dummy
## Add Variables for Mason Number
scoreboard objectives add MASON_PAIR dummy
scoreboard objectives add MASON_PAIR_NUM dummy
## Add Variables for Item
scoreboard objectives add TENS_DIGIT dummy
scoreboard objectives add ONES_DIGIT dummy
scoreboard objectives add TEMP_DIGIT dummy

## CurrentRole - breakdown
##   1 : Wolf 人狼
##   4 : White Wolf 白狼
##   5 : Madman 狂人
##   6 : Fanatic 狂信者
##   10 : Fox 羽衣狐
##   11 : Immoralist 背徳者
##   20 : Villager 村人
##   21 : Mason 共有者
##   25 : Seer 予言者
##   26 : Fake Seer 偽予言者
##   27 : Sage 賢者
##   28 : Medium 霊媒師
##   31 : Detective 探偵
##   35 : Thief 怪盗
##   40 : Cat 猫又

## Set Variables for Game
scoreboard players set @a CurrentRole 0
scoreboard players set @a[team=Player] NUM 1
scoreboard players set #MWL CurrentRole 1
scoreboard players set #MWL NUM 0
scoreboard players set #MWL WINNER 0
scoreboard players set #MWL WHITE 0
scoreboard players set #MWL BLACK 0
scoreboard players set #MWL PURPLE 0
## Set Variables for Timer of Kill Log
scoreboard players set @a Second 0
scoreboard players set @a Tick 0
## Set Variables for Seer/Medium/Detective/Cat
scoreboard players set @a RoleOfNum 0
scoreboard players set #MWL RoleOfNum 0 
## Set Variables for Kill Log
scoreboard players set @a DeathCount 0
scoreboard players set @a KILLER 0
scoreboard players set @a VICTIM 0
scoreboard players set @a VICTIM_FLAG 0
scoreboard players set @a KILLER_FLAG 0
scoreboard players set @a KillLogOfFox 0
scoreboard players set @a KillLogOfCat 0
scoreboard players set @a KillLogOfTrident 0
scoreboard players set #MWL KILLER_NUM 0
scoreboard players set #MWL VICTIM_NUM 0
scoreboard players set #MWL KILLLOG_NUM 1
## Set Variables for Mason Number
scoreboard players set @a MASON_PAIR 0
scoreboard players set #MWL MASON_PAIR 1
scoreboard players set #MWL MASON_PAIR_NUM 0

## RE-Count Players
execute as @a[team=Player] run scoreboard players add #MWL NUM 1
## Test
execute if entity @p[tag=MWLtest] run scoreboard players set #MWL NUM 15