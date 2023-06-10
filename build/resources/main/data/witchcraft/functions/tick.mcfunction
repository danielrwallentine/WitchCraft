# Rituals
execute align xyz as @e[nbt={Item:{tag:{Tags:"wc.wand"}}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}},distance=...5] if block ~-3 ~ ~1 #minecraft:candles[lit=true] if block ~-3 ~ ~-1 #minecraft:candles[lit=true] if block ~-2 ~ ~2 #minecraft:candles[lit=true] if block ~-2 ~ ~-2 #minecraft:candles[lit=true] if block ~-1 ~ ~3 #minecraft:candles[lit=true] if block ~-1 ~ ~-3 #minecraft:candles[lit=true] if block ~ ~ ~3 #minecraft:candles[lit=true] if block ~ ~ ~-3 #minecraft:candles[lit=true] if block ~1 ~ ~3 #minecraft:candles[lit=true] if block ~1 ~ ~-3 #minecraft:candles[lit=true] if block ~2 ~ ~2 #minecraft:candles[lit=true] if block ~2 ~ ~-2 #minecraft:candles[lit=true] if block ~3 ~ ~1 #minecraft:candles[lit=true] if block ~3 ~ ~-1 #minecraft:candles[lit=true] if block ~3 ~ ~ #minecraft:candles[lit=true] run function witchcraft:ritual/imbue
execute as @e[tag=wc.imbuing] unless data entity @s {Item:{tag:{Tags:"wc.wand"}}} unless entity @e[type=item,distance=..3] run kill @s

# Spell Casting
execute as @a[scores={wc.use=1}] at @s run function witchcraft:cast

# Mana System
scoreboard players reset @a wc.use
execute as @a if score @s wc.mana_regen_delay matches 0 if score @s wc.mana < @s wc.mana_max run scoreboard players operation @s wc.mana += @s wc.mana_regen
execute as @a if score @s wc.mana_regen_delay matches 0 if score @s wc.mana < @s wc.mana_max run scoreboard players reset @s wc.mana_full
execute as @a unless score @s wc.mana_regen_delay matches 0 run scoreboard players operation @s wc.mana_regen_delay -= @s wc.mana_regen
execute as @a if score @s wc.mana >= @s wc.mana_max run scoreboard players operation @s wc.mana = @s wc.mana_max
execute as @a if score @s wc.health > @s wc.mana_max run scoreboard players operation @s wc.mana_max = @s wc.health

# Blocks
execute as @e[type=item_frame,nbt={Tags:["wc.place_block1"]}] at @s run function witchcraft:block/block1/place
execute as @e[type=item_display,nbt={Tags:["wc.block1"]}] at @s if block ~ ~ ~ air run function witchcraft:block/block1/break

# Setup
execute as @a unless entity @s[tag=wc.setup] run scoreboard players set @a wc.mana_max 20
execute as @a unless entity @s[tag=wc.setup] run scoreboard players set @a wc.mana_regen 1
execute as @a unless entity @s[tag=wc.setup] run scoreboard players set @a wc.mana 0
execute as @a unless entity @s[tag=wc.setup] run tag @s add wc.setup

# Aura
execute as @a[scores={wc.mana_regen=1}] at @s run particle minecraft:dust .8 .2 .5 1 ~ ~1 ~ .25 .25 .25 1 5 normal @a[distance=.1..]
execute as @a[scores={wc.mana_regen=2}] at @s run particle minecraft:dust .8 .2 .5 1 ~ ~1 ~ .25 .25 .25 1 10 normal @a[distance=.1..]
execute as @a[scores={wc.mana_regen=3}] at @s run particle minecraft:dust .8 .2 .5 1 ~ ~1 ~ .25 .25 .25 1 15 normal @a[distance=.1..]
execute as @a[scores={wc.mana_regen=4}] at @s run particle minecraft:dust .8 .2 .5 1 ~ ~1 ~ .25 .25 .25 1 20 normal @a[distance=.1..]
execute as @a[scores={wc.mana_regen=5}] at @s run particle minecraft:dust .8 .2 .5 1 ~ ~1 ~ .25 .25 .25 1 25 normal @a[distance=.1..]
execute as @a[scores={wc.mana_regen=6}] at @s run particle minecraft:dust .8 .2 .5 1 ~ ~1 ~ .25 .25 .25 1 30 normal @a[distance=.1..]
execute as @a[scores={wc.mana_regen=7}] at @s run particle minecraft:dust .8 .2 .5 1 ~ ~1 ~ .25 .25 .25 1 35 normal @a[distance=.1..]
execute as @a[scores={wc.mana_regen=8}] at @s run particle minecraft:dust .8 .2 .5 1 ~ ~1 ~ .25 .25 .25 1 40 normal @a[distance=.1..]
execute as @a[scores={wc.mana_regen=9}] at @s run particle minecraft:dust .8 .2 .5 1 ~ ~1 ~ .25 .25 .25 1 45 normal @a[distance=.1..]
execute as @a[scores={wc.mana_regen=10}] at @s run particle minecraft:dust .8 .2 .5 1 ~ ~1 ~ .25 .25 .25 1 50 normal @a[distance=.1..]
execute as @a if score @s wc.mana = @s wc.mana_max at @s run particle minecraft:dust .5 .2 .8 1 ~ ~1 ~ .5 .5 .5 1 5 normal @a[distance=.1..]

# Trigger
scoreboard players enable @a wc.trigger
execute as @e[scores={wc.trigger=-1}] at @s run damage @e[nbt={Tags:["wc.imbuing"]},distance=..4,limit=1] 1 minecraft:out_of_world
execute as @e[scores={wc.trigger=-2}] at @s run data remove entity @e[nbt={Tags:["wc.imbuing"]},distance=..4,limit=1] Item.tag.instructions[-1]
execute as @e[scores={wc.trigger=-100}] at @s run data modify storage wc:tmp new_line set value {c:1, a:{entity:"fireball", position:"forward"}}
execute as @e[scores={wc.trigger=-101}] at @s run data modify storage wc:tmp new_line set value {c:2, a:{target:"target"}}
execute as @e[scores={wc.trigger=-102}] at @s run data modify storage wc:tmp new_line set value {c:3, a:{target:"target", effect:"poison"}}

execute as @e[scores={wc.trigger=-200}] at @s if data storage wc:tmp {run_line:{c:1,a:{entity:"bullet"}}} run data modify storage wc:tmp new_line.a.entity set value "fireball"
execute as @e[scores={wc.trigger=-200}] run scoreboard players set @s wc.trigger 0
execute as @e[scores={wc.trigger=-200}] at @s if data storage wc:tmp {run_line:{c:1,a:{entity:"fangs"}}} run data modify storage wc:tmp new_line.a.entity set value "bullet"
execute as @e[scores={wc.trigger=-200}] at @s if data storage wc:tmp {run_line:{c:1,a:{entity:"skeleton"}}} run data modify storage wc:tmp new_line.a.entity set value "fangs"
execute as @e[scores={wc.trigger=-200}] at @s if data storage wc:tmp {run_line:{c:1,a:{entity:"zombie"}}} run data modify storage wc:tmp new_line.a.entity set value "skeleton"
execute as @e[scores={wc.trigger=-200}] at @s if data storage wc:tmp {run_line:{c:1,a:{entity:"lightning"}}} run data modify storage wc:tmp new_line.a.entity set value "zombie"
execute as @e[scores={wc.trigger=-200}] at @s if data storage wc:tmp {run_line:{c:1,a:{entity:"fireball"}}} run data modify storage wc:tmp new_line.a.entity set value "lightning"

execute as @e[scores={wc.trigger=-200}] at @s if data storage wc:tmp {run_line:{c:2,a:{target:"nearest_entity"}}} run data modify storage wc:tmp new_line.a.target set value "target"
execute as @e[scores={wc.trigger=-200}] run scoreboard players set @s wc.trigger 0
execute as @e[scores={wc.trigger=-200}] at @s if data storage wc:tmp {run_line:{c:2,a:{target:"nearest"}}} run data modify storage wc:tmp new_line.a.target set value "nearest_entity"
execute as @e[scores={wc.trigger=-200}] at @s if data storage wc:tmp {run_line:{c:2,a:{target:"target"}}} run data modify storage wc:tmp new_line.a.target set value "nearest"

execute as @e[scores={wc.trigger=-201}] at @s if data storage wc:tmp {run_line:{c:1,a:{position:"down"}}} run data modify storage wc:tmp new_line.a.position set value "forward"
execute as @e[scores={wc.trigger=-201}] run scoreboard players set @s wc.trigger 0
execute as @e[scores={wc.trigger=-201}] at @s if data storage wc:tmp {run_line:{c:1,a:{position:"up"}}} run data modify storage wc:tmp new_line.a.position set value "down"
execute as @e[scores={wc.trigger=-201}] at @s if data storage wc:tmp {run_line:{c:1,a:{position:"right"}}} run data modify storage wc:tmp new_line.a.position set value "up"
execute as @e[scores={wc.trigger=-201}] at @s if data storage wc:tmp {run_line:{c:1,a:{position:"left"}}} run data modify storage wc:tmp new_line.a.position set value "right"
execute as @e[scores={wc.trigger=-201}] at @s if data storage wc:tmp {run_line:{c:1,a:{position:"backward"}}} run data modify storage wc:tmp new_line.a.position set value "left"
execute as @e[scores={wc.trigger=-201}] at @s if data storage wc:tmp {run_line:{c:1,a:{position:"forward"}}} run data modify storage wc:tmp new_line.a.position set value "backward"

execute as @e[scores={wc.trigger=..-1}] at @s run data modify entity @e[type=minecraft:item_frame,distance=..3,limit=1] Item.tag.instructions append from storage wc:tmp new_line
execute as @e[scores={wc.trigger=..-2}] at @s run function witchcraft:ritual/imbue_menu
execute as @e[scores={wc.trigger=..-1}] run scoreboard players set @s wc.trigger 0