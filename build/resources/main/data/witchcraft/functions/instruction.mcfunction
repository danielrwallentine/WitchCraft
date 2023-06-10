data modify storage wc:tmp run_line set from storage wc:tmp list[0]

# Summon
execute if data storage wc:tmp {run_line:{a:{entity:"fireball", position:"forward"},c:1}} anchored eyes positioned ^ ^ ^2 run summon minecraft:fireball ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"lightning", position:"forward"},c:1}} anchored eyes positioned ^ ^ ^2 run summon minecraft:lightning_bolt ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"zombie", position:"forward"},c:1}} anchored eyes positioned ^ ^ ^2 run summon minecraft:zombie ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"skeleton", position:"forward"},c:1}} anchored eyes positioned ^ ^ ^2 run summon minecraft:skeleton ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"fangs", position:"forward"},c:1}} anchored eyes positioned ^ ^ ^2 run summon minecraft:evoker_fangs ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"bullet", position:"forward"},c:1}} anchored eyes positioned ^ ^ ^2 run summon minecraft:shulker_bullet ~ ~ ~

execute if data storage wc:tmp {run_line:{a:{entity:"fireball", position:"backward"},c:1}} anchored eyes positioned ^ ^ ^-2 run summon minecraft:fireball ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"lightning", position:"backward"},c:1}} anchored eyes positioned ^ ^ ^-2 run summon minecraft:lightning_bolt ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"zombie", position:"backward"},c:1}} anchored eyes positioned ^ ^ ^-2 run summon minecraft:zombie ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"skeleton", position:"backward"},c:1}} anchored eyes positioned ^ ^ ^-2 run summon minecraft:skeleton ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"fangs", position:"backward"},c:1}} anchored eyes positioned ^ ^ ^-2 run summon minecraft:evoker_fangs ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"bullet", position:"backward"},c:1}} anchored eyes positioned ^ ^ ^-2 run summon minecraft:shulker_bullet ~ ~ ~

execute if data storage wc:tmp {run_line:{a:{entity:"fireball", position:"left"},c:1}} anchored eyes positioned ^2 ^ ^ run summon minecraft:fireball ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"lightning", position:"left"},c:1}} anchored eyes positioned ^2 ^ ^ run summon minecraft:lightning_bolt ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"zombie", position:"left"},c:1}} anchored eyes positioned ^2 ^ ^ run summon minecraft:zombie ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"skeleton", position:"left"},c:1}} anchored eyes positioned ^2 ^ ^ run summon minecraft:skeleton ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"fangs", position:"left"},c:1}} anchored eyes positioned ^2 ^ ^ run summon minecraft:evoker_fangs ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"bullet", position:"left"},c:1}} anchored eyes positioned ^2 ^ ^ run summon minecraft:shulker_bullet ~ ~ ~

execute if data storage wc:tmp {run_line:{a:{entity:"fireball", position:"right"},c:1}} anchored eyes positioned ^-2 ^ ^ run summon minecraft:fireball ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"lightning", position:"right"},c:1}} anchored eyes positioned ^-2 ^ ^ run summon minecraft:lightning_bolt ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"zombie", position:"right"},c:1}} anchored eyes positioned ^-2 ^ ^ run summon minecraft:zombie ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"skeleton", position:"right"},c:1}} anchored eyes positioned ^-2 ^ ^ run summon minecraft:skeleton ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"fangs", position:"right"},c:1}} anchored eyes positioned ^-2 ^ ^ run summon minecraft:evoker_fangs ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"bullet", position:"right"},c:1}} anchored eyes positioned ^-2 ^ ^ run summon minecraft:shulker_bullet ~ ~ ~

execute if data storage wc:tmp {run_line:{a:{entity:"fireball", position:"up"},c:1}} anchored eyes positioned ^ ^3 ^ run summon minecraft:fireball ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"lightning", position:"up"},c:1}} anchored eyes positioned ^ ^3 ^ run summon minecraft:lightning_bolt ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"zombie", position:"up"},c:1}} anchored eyes positioned ^ ^3 ^ run summon minecraft:zombie ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"skeleton", position:"up"},c:1}} anchored eyes positioned ^ ^3 ^ run summon minecraft:skeleton ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"fangs", position:"up"},c:1}} anchored eyes positioned ^ ^3 ^ run summon minecraft:evoker_fangs ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"bullet", position:"up"},c:1}} anchored eyes positioned ^ ^3 ^ run summon minecraft:shulker_bullet ~ ~ ~

execute if data storage wc:tmp {run_line:{a:{entity:"fireball", position:"down"},c:1}} anchored eyes positioned ^ ^-1 ^ run summon minecraft:fireball ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"lightning", position:"down"},c:1}} anchored eyes positioned ^ ^-1 ^ run summon minecraft:lightning_bolt ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"zombie", position:"down"},c:1}} anchored eyes positioned ^ ^-1 ^ run summon minecraft:zombie ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"skeleton", position:"down"},c:1}} anchored eyes positioned ^ ^-1 ^ run summon minecraft:skeleton ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"fangs", position:"down"},c:1}} anchored eyes positioned ^ ^-1 ^ run summon minecraft:evoker_fangs ~ ~ ~
execute if data storage wc:tmp {run_line:{a:{entity:"bullet", position:"down"},c:1}} anchored eyes positioned ^ ^-1 ^ run summon minecraft:shulker_bullet ~ ~ ~

# Damage
execute if data storage wc:tmp {run_line:{a:{target:"target"},c:2}} anchored eyes positioned ^ ^ ^5 run damage @e[limit=1,distance=..9.9] 1 minecraft:magic by @s
execute if data storage wc:tmp {run_line:{a:{target:"nearest"},c:2}} run damage @p[limit=1,distance=..10] 1 minecraft:magic by @s
execute if data storage wc:tmp {run_line:{a:{target:"nearest_entity"},c:2}} run damage @e[limit=1,distance=..10] 1 minecraft:magic by @s


# Effect
execute if data storage wc:tmp {run_line:{a:{target:"target"},c:2}} anchored eyes positioned ^ ^ ^5 run effect give @e[limit=1,distance=..10] minecraft:poison 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"nearest"},c:2}} run effect give @p[limit=1,distance=..10] minecraft:poison 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all"},c:2}} run effect give @a[limit=1,distance=..10] minecraft:poison 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all_entities"},c:2}} run effect give @e[limit=1,distance=..10] minecraft:poison 30 1 false

execute if data storage wc:tmp {run_line:{a:{target:"target"},c:2}} anchored eyes positioned ^ ^ ^5 run effect give @e[limit=1,distance=..10] minecraft:speed 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"nearest"},c:2}} run effect give @p[limit=1,distance=..10] minecraft:speed 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all"},c:2}} run effect give @a[limit=1,distance=..10] minecraft:speed 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all_entities"},c:2}} run effect give @e[limit=1,distance=..10] minecraft:speed 30 1 false

execute if data storage wc:tmp {run_line:{a:{target:"target"},c:2}} anchored eyes positioned ^ ^ ^5 run effect give @e[limit=1,distance=..10] minecraft:slowness 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"nearest"},c:2}} run effect give @p[limit=1,distance=..10] minecraft:slowness 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all"},c:2}} run effect give @a[limit=1,distance=..10] minecraft:slowness 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all_entities"},c:2}} run effect give @e[limit=1,distance=..10] minecraft:slowness 30 1 false

execute if data storage wc:tmp {run_line:{a:{target:"target"},c:2}} anchored eyes positioned ^ ^ ^5 run effect give @e[limit=1,distance=..10] minecraft:nausea 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"nearest"},c:2}} run effect give @p[limit=1,distance=..10] minecraft:nausea 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all"},c:2}} run effect give @a[limit=1,distance=..10] minecraft:nausea 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all_entities"},c:2}} run effect give @e[limit=1,distance=..10] minecraft:nausea 30 1 false

execute if data storage wc:tmp {run_line:{a:{target:"target"},c:2}} anchored eyes positioned ^ ^ ^5 run effect give @e[limit=1,distance=..10] minecraft:invisibility 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"nearest"},c:2}} run effect give @p[limit=1,distance=..10] minecraft:invisibility 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all"},c:2}} run effect give @a[limit=1,distance=..10] minecraft:invisibility 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all_entities"},c:2}} run effect give @e[limit=1,distance=..10] minecraft:invisibility 30 1 false

execute if data storage wc:tmp {run_line:{a:{target:"target"},c:2}} anchored eyes positioned ^ ^ ^5 run effect give @e[limit=1,distance=..10] minecraft:blindness 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"nearest"},c:2}} run effect give @p[limit=1,distance=..10] minecraft:blindness 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all"},c:2}} run effect give @a[limit=1,distance=..10] minecraft:blindness 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all_entities"},c:2}} run effect give @e[limit=1,distance=..10] minecraft:blindness 30 1 false

execute if data storage wc:tmp {run_line:{a:{target:"target"},c:2}} anchored eyes positioned ^ ^ ^5 run effect give @e[limit=1,distance=..10] minecraft:night_vision 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"nearest"},c:2}} run effect give @p[limit=1,distance=..10] minecraft:night_vision 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all"},c:2}} run effect give @a[limit=1,distance=..10] minecraft:night_vision 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all_entities"},c:2}} run effect give @e[limit=1,distance=..10] minecraft:night_vision 30 1 false

execute if data storage wc:tmp {run_line:{a:{target:"target"},c:2}} anchored eyes positioned ^ ^ ^5 run effect give @e[limit=1,distance=..10] minecraft:wither 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"nearest"},c:2}} run effect give @p[limit=1,distance=..10] minecraft:wither 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all"},c:2}} run effect give @a[limit=1,distance=..10] minecraft:wither 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all_entities"},c:2}} run effect give @e[limit=1,distance=..10] minecraft:wither 30 1 false

execute if data storage wc:tmp {run_line:{a:{target:"target"},c:2}} anchored eyes positioned ^ ^ ^5 run effect give @e[limit=1,distance=..10] minecraft:glowing 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"nearest"},c:2}} run effect give @p[limit=1,distance=..10] minecraft:glowing 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all"},c:2}} run effect give @a[limit=1,distance=..10] minecraft:glowing 30 1 false
execute if data storage wc:tmp {run_line:{a:{target:"all_entities"},c:2}} run effect give @e[limit=1,distance=..10] minecraft:glowing 30 1 false

# End and Loop
data remove storage wc:tmp list[0]
execute unless data storage wc:tmp {list:[]} as @s at @s run function witchcraft:instruction