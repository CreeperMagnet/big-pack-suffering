############################################################
# Modifies vanilla entities
############################################################

execute if entity @s[type=minecraft:zombie,predicate=tcc:entity/spawning/lichen_zombie/valid] run data merge entity @s {Tags:["tcc.lichen_zombie"],DeathLootTable:"tcc:entities/lichen_zombie",HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330058}},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330058}}],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330059}}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}
execute if entity @s[type=minecraft:witch,predicate=tcc:entity/spawning/geomancer_spawning] run function tcc:entity/geomancer/spawn
execute if entity @s[type=minecraft:pig,predicate=tcc:entity/spawning/snail_spawning,predicate=!tcc:entity/baby] run function tcc:entity/snail/spawn
execute if entity @s[type=minecraft:drowned,predicate=tcc:entity/spawning/coral_drowned/valid] run function tcc:entity/processing/drowned
execute if entity @s[type=minecraft:villager,predicate=tcc:entity/modify_villager] unless data entity @s Offers.Recipes[3] run function tcc:entity/processing/villager
execute if entity @s[type=minecraft:wandering_trader] run function tcc:entity/processing/wandering_trader
execute if entity @s[type=minecraft:wither_skeleton,predicate=tcc:entity/holding/stone_sword] run function tcc:entity/processing/wither_skeleton
execute if entity @s[type=#tcc:hates_villagers] run function tcc:entity/processing/hates_villagers
tag @s[type=!villager] add tcc.modified_vanilla_entity
tag @s[type=villager,predicate=tcc:entity/modify_villager] add tcc.modified_vanilla_entity
