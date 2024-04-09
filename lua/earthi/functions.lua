function switch_windows()
    local cur_win = vim.api.nvim_get_current_win()
    local cur_pos = vim.api.nvim_win_get_position(cur_win)
    local cur_row, cur_col = cur_pos[1], cur_pos[2]

    local win_list = vim.api.nvim_list_wins()
    local next_win = nil

    for _, win_id in ipairs(win_list) do
        local pos = vim.api.nvim_win_get_position(win_id)
        local row, col = pos[1], pos[2]

        if row > cur_row or (row == cur_row and col > cur_col) then
            next_win = win_id
            break
        end
    end

    if next_win then
        vim.api.nvim_set_current_win(next_win)
    else
        vim.api.nvim_set_current_win(win_list[1])
    end
end

