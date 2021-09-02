############################################################
# Functions to run every single tick
############################################################

## Entity Ticking
execute as @e[tag=tcc.entity] at @s run function tcc:entity/tick

## Player Tick
execute as @a at @s run function tcc:entity/player/tick/main

## Anvil Smashing
execute as @e[type=falling_block,predicate=tcc:block/anvil,tag=!global.ignore] at @s if block ~ ~-0.9 ~ #tcc:anvil_smash run function tcc:block/anvil_smashing/check_motion

## Netherite Rings
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{tcc:{id:"ring",metal:"minecraft:netherite"}}}},tag=!global.ignore] run function tcc:item/netherite_ring/edit_item_entity
