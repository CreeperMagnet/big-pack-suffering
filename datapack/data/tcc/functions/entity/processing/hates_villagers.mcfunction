############################################################
# Adds tags to villager-hating entities
############################################################

team join global.antivil @s
execute if entity @s[predicate=tcc:entity/spawning/iceologer_biomes,predicate=tcc:chance/one_tenth] if data entity @s RaidId run function tcc:entity/iceologer/spawn_raid
execute if entity @s[type=evoker,predicate=tcc:chance/one_half] if data entity @s RaidId run function tcc:commands/summon/enchanter
execute if entity @s[type=pillager,tag=tcc.iceologer_replace] run function tcc:entity/iceologer/spawn
execute if entity @s[type=pillager,tag=!tcc.iceologer_replace,predicate=tcc:chance/one_fifth] if entity @e[type=minecraft:marker,distance=..30,tag=tcc.structure.tundra_keep] run function tcc:entity/iceologer/spawn
