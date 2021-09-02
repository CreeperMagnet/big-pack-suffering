############################################################
# Makes the photometer work
############################################################

item modify entity @s[nbt={SelectedItem:{tag:{tcc:{id:"photometer"}}}}] weapon.mainhand tcc:photometer
item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"photometer"}}}]}] weapon.offhand tcc:photometer
