############################################################
# Breaks the block in front of a block breaker
############################################################

execute store result score tcc.temp_1 tcc.dummy run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:efficiency"}].lvl
execute unless score @s tcc.dummy2 matches -1.. run scoreboard players set @s tcc.dummy2 -1
execute if score @s tcc.dummy2 matches -1 unless block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-1 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches -1 if block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot spawn ^ ^ ^-2 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches 0 unless block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-2 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches 0 if block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot spawn ^ ^ ^-3 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches 1 unless block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-3 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches 1 if block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot spawn ^ ^ ^-4 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches 2 unless block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-4 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches 2 if block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot spawn ^ ^ ^-5 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches 3 unless block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-5 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches 3 if block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot spawn ^ ^ ^-6 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches 4 unless block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-6 mine ~ ~ ~ mainhand
execute if score @s tcc.dummy2 matches 4 if block ^ ^ ^-1 dropper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]} run loot insert ^ ^ ^-7 mine ~ ~ ~ mainhand
execute store result score tcc.tiledrops_default tcc.dummy run gamerule doTileDrops
gamerule doTileDrops false
setblock ~ ~ ~ air destroy
execute if score tcc.tiledrops_default tcc.dummy matches 1.. run gamerule doTileDrops true
scoreboard players add @s tcc.dummy2 1
execute unless score @s tcc.dummy2 = tcc.temp_1 tcc.dummy positioned ^ ^ ^1 run function tcc:block/block_breakers/check_block
