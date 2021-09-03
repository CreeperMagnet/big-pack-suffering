####################
# Keeps all players in one place
####################

gamerule doDaylightCycle false
time set 0
gamerule doWeatherCycle false
effect give @a resistance 1000000 255 true
effect give @a saturation 1000000 255 true
gamemode adventure @a[gamemode=!adventure]
worldborder set 38 0
setworldspawn 0 64 0
schedule function bps:restrain_players 2t replace
