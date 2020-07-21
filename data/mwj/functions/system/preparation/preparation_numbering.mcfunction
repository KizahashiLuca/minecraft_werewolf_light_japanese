###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Number the Members

#### The players' number, that is equal to the GM's number,
####  is incremented by 1.
execute as @a[team=Player] if score @s NUM = #MWL CurrentRole run scoreboard players add @s NUM 1

#### The GM's number is incremented by 1.
scoreboard players add #MWL CurrentRole 1

#### One random player's number, that is equal to the GM's number,
####  is decremented by 1.
execute as @r[tag=!numbered,team=Player] if score @s NUM = #MWL CurrentRole run scoreboard players remove @s NUM 1

#### If the players' number is NOT equal to the GM's number,
####  these players are put a tag of 'numbered'.
execute as @a[team=Player] unless score @s NUM = #MWL CurrentRole run tag @s add numbered
