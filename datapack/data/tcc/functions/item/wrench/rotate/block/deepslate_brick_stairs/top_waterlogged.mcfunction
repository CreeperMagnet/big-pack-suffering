############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate_brick_stairs[facing=north] run setblock ~ ~ ~ deepslate_brick_stairs[facing=east,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate_brick_stairs[facing=east] run setblock ~ ~ ~ deepslate_brick_stairs[facing=south,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate_brick_stairs[facing=south] run setblock ~ ~ ~ deepslate_brick_stairs[facing=west,half=top,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ deepslate_brick_stairs[facing=west] run setblock ~ ~ ~ deepslate_brick_stairs[facing=north,half=top,waterlogged=true]
