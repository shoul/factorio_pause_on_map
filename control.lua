script.on_event(defines.events.on_gui_opened, function(event)
    local player = game.get_player(event.player_index)
    if player and event.gui_type == defines.gui_type.map and not game.is_multiplayer() then
        game.tick_paused = true
    end
end)

script.on_event(defines.events.on_gui_closed, function(event)
    local player = game.get_player(event.player_index)
    if player and event.gui_type == defines.gui_type.map and not game.is_multiplayer() then
        game.tick_paused = false
    end
end)
