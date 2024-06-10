local M = {}

local termBuf = -1

-- helper function to create a new terminal and save it in a buffer
local function createTerminal()
    vim.cmd.te()
    termBuf = vim.api.nvim_get_current_buf()
end

-- opens a terminal in a new buffer,
-- or re-attaches the terminal buffer if already created.
function M.toggleTerminal()
    -- create terminal buffer if not there
    if not vim.api.nvim_buf_is_valid(termBuf) then
        createTerminal()
        return
    end

    -- toggle logic
    local current = vim.api.nvim_get_current_buf()
    if current == termBuf then
        vim.cmd("b#")
    else
        vim.api.nvim_set_current_buf(termBuf)
    end
end

return M
