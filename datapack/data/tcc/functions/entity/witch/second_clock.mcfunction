############################################################
# Checks if there is or isn't a player close to the witch/with trader that is wearing a witch hat
############################################################

execute if entity @a[predicate=tcc:entity/wearing/witch_hat,distance=..10,nbt=!{ActiveEffects:[{Id:19b}]}] unless data entity @s RaidId unless entity @a[predicate=!tcc:entity/wearing/witch_hat,distance=..10] unless entity @a[nbt={ActiveEffects:[{Id:19b}]},distance=..10,predicate=tcc:entity/wearing/witch_hat] run function tcc:entity/witch/switch_to_trader