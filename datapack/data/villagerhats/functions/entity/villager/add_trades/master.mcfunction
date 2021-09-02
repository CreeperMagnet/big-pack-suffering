data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:dirt",Count:1b},maxUses:5,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0}

execute if entity @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/visor
execute if entity @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/ribbon
execute if entity @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/monocle
execute if entity @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/straw_hat
execute if entity @s[tag=!dnd.paleontologist,nbt={VillagerData:{profession:"minecraft:fisherman"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/fishing_hat
execute if entity @s[tag=dnd.paleontologist,nbt={VillagerData:{profession:"minecraft:fisherman"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/paleontologist_hat
execute if entity @s[nbt={VillagerData:{profession:"minecraft:fletcher"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/fletcher_cap
execute if entity @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/leather_hats
execute if entity @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/book_hat
execute if entity @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/shepherd_cap
execute if entity @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run loot replace entity @s weapon.mainhand loot villagerhats:hats/eye_patch

data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[0]
item replace entity @s weapon.mainhand with air

tag @s add villagerhats.has_master_trade