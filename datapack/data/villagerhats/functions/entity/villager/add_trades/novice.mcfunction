data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:dirt",Count:1b},maxUses:5,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0}

execute if entity @s[predicate=villagerhats:entity/villager/from_desert] run loot replace entity @s weapon.mainhand loot villagerhats:hats/desert_cap
execute if entity @s[predicate=villagerhats:entity/villager/from_savanna] run loot replace entity @s weapon.mainhand loot villagerhats:hats/wreath
execute if entity @s[predicate=villagerhats:entity/villager/from_snow] run loot replace entity @s weapon.mainhand loot villagerhats:hats/winter_hat
execute if entity @s[predicate=villagerhats:entity/villager/from_swamp] run loot replace entity @s weapon.mainhand loot villagerhats:hats/leaf_hat

data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[0]
item replace entity @s weapon.mainhand with air

tag @s add villagerhats.has_novice_trade
