cc_progression_trades_lock_w:
    type: world
    debug: false
    events:
        on player fishes entity:
            - define item <context.item>
            - if <[item].enchantment_types.size> > 0 && <player.has_flag[enchanting_enabled]> == false:
                - determine "CAUGHT:<item[salmon]>"

cc_progression_trades_lock_t:
    type: task
    definitions: trade
    script:
        - define item <[trade].result>
        - if <[item].enchantment_types.size> > 0:
            - determine cancelled