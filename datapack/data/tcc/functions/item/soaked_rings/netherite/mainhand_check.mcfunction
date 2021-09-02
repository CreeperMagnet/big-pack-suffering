############################################################
# Functions to tell what potion ring you're using
############################################################

execute if entity @s[nbt={SelectedItem:{tag:{tcc:{metal:"minecraft:netherite"}}}}] run function tcc:item/soaked_rings/netherite/effects/mainhand
