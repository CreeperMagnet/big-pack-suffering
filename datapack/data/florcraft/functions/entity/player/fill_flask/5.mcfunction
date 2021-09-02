setblock -30000000 0 24576 minecraft:yellow_shulker_box
data modify storage flor:store Items prepend from entity @s Inventory[{Slot:5b}]
data remove storage flor:store Items[0].Slot
data modify block -30000000 0 24576 Items prepend from storage flor:store Items[0]
data remove storage flor:store Items
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} store result score $temp flor.dummy run data get block -30000000 0 24576 Items[0].tag.flor_dat.fill
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} unless score $temp flor.dummy matches 1.. if predicate florcraft:location/arid run data modify block -30000000 0 24576 Items[0].tag.flor_dat.ess set value "arid"
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} unless score $temp flor.dummy matches 1.. if predicate florcraft:location/aqueous run data modify block -30000000 0 24576 Items[0].tag.flor_dat.ess set value "aqueous"
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} unless score $temp flor.dummy matches 1.. if predicate florcraft:location/verdant run data modify block -30000000 0 24576 Items[0].tag.flor_dat.ess set value "verdant"
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 1.. if predicate florcraft:location/arid if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"arid"} run scoreboard players add $temp flor.dummy 1
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 1.. if predicate florcraft:location/aqueous if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"aqueous"} run scoreboard players add $temp flor.dummy 1
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 1.. if predicate florcraft:location/verdant if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"verdant"} run scoreboard players add $temp flor.dummy 1
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} unless score $temp flor.dummy matches 1.. run scoreboard players add $temp flor.dummy 1
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if predicate florcraft:location/arid if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"arid"} run playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 1 1.4
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if predicate florcraft:location/aqueous if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"aqueous"} run playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 1 1.4
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if predicate florcraft:location/verdant if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"verdant"} run playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 1 1.4
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 1 if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"arid"} run data modify block -30000000 0 24576 Items[0].tag.CustomModelData set value 423001
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 3 if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"arid"} run data modify block -30000000 0 24576 Items[0].tag.CustomModelData set value 423002
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 5 if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"arid"} run data modify block -30000000 0 24576 Items[0].tag.CustomModelData set value 423003
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 1 if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"aqueous"} run data modify block -30000000 0 24576 Items[0].tag.CustomModelData set value 423004
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 3 if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"aqueous"} run data modify block -30000000 0 24576 Items[0].tag.CustomModelData set value 423005
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 5 if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"aqueous"} run data modify block -30000000 0 24576 Items[0].tag.CustomModelData set value 423006
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 1 if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"verdant"} run data modify block -30000000 0 24576 Items[0].tag.CustomModelData set value 423007
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 3 if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"verdant"} run data modify block -30000000 0 24576 Items[0].tag.CustomModelData set value 423008
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} if score $temp flor.dummy matches 5 if data block -30000000 0 24576 Items[0].tag.flor_dat{ess:"verdant"} run data modify block -30000000 0 24576 Items[0].tag.CustomModelData set value 423009
execute unless data block -30000000 0 24576 Items[0].tag.flor_dat{fill:5b} store result block -30000000 0 24576 Items[0].tag.flor_dat.fill byte 1 run scoreboard players get $temp flor.dummy
loot replace entity @s hotbar.5 1 mine -30000000 0 24576 air{drop_contents: 1b}
setblock -30000000 0 24576 minecraft:yellow_shulker_box