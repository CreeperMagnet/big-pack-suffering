data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:dirt",Count:1b},maxUses:5,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0}

loot replace entity @s weapon.mainhand loot villagerhats:hats/biome_hats_from_wandering_trader

data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[0]
item replace entity @s weapon.mainhand with air

tag @s add villagerhats.has_wandering_trader_trade