############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_log[axis=y] run setblock ~ ~ ~ birch_log[axis=x]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_log[axis=x] run setblock ~ ~ ~ birch_log[axis=z]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ birch_log[axis=z] run setblock ~ ~ ~ birch_log[axis=y]
