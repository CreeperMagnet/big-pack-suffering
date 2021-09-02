scoreboard objectives add vh.config dummy
function villagerhats:technical/config
tellraw @a[gamemode=!survival] {"translate":"villagerhats.load"}
schedule function villagerhats:technical/5t 5t replace