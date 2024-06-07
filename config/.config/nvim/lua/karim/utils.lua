local M = {}

local termBuf = nil

-- opens a terminal in a new buffer,
-- or re-attaches the terminal buffer if already created
function M.toggleTerminal()
    -- create a new terminal buffer if not created
    if termBuf == nil then
        vim.cmd.te()
        termBuf = vim.api.nvim_get_current_buf()
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
