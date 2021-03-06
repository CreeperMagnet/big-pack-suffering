############################################################
# Starts the raycast
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
tag @s remove tcc.tag
scoreboard players set @s tcc.dummy 0
execute if entity @s[advancements={tcc:technical/block/click_teapot={add_ingredient=true}}] run data modify storage tcc:storage root.temp.item.tea_ingredient set value 1b
execute at @s anchored eyes run function tcc:block/teapot/interact/raycast
execute if entity @s[advancements={tcc:technical/block/click_teapot={add_water=true}},gamemode=!creative] run item replace entity @s weapon.mainhand with minecraft:glass_bottle 1
execute if entity @s[advancements={tcc:technical/block/click_teapot={take_water=true}}] run function tcc:block/teapot/interact/set_inventory/take_water
execute unless entity @s[advancements={tcc:technical/block/click_teapot={add_warped_wart=false,add_snail_mucus=false}}] if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand tcc:reduce_count
execute if entity @s[advancements={tcc:technical/block/click_teapot={add_ingredient=true}}] run function tcc:block/teapot/interact/set_inventory/add_ingredient
execute if entity @s[advancements={tcc:technical/block/click_teapot={take_tea=true}}] run function tcc:block/teapot/interact/set_inventory/take_tea

advancement revoke @s only tcc:technical/block/click_teapot
tag @s remove tcc.tag
