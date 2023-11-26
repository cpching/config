-- auto close tree when all files in buffer are closed
vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
            vim.cmd "quit"
        end
    end
})

vim.g.nvim_tree_icons = {
    git = {
        unstaged = "",
        staged = "S",
        unmerged = "",
        renamed = "➜",
        deleted = "",
        ignored = "◌"
    }
}

-- my on_attach
local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', 'u', api.tree.change_root_to_parent,        opts('Up'))
    vim.keymap.set('n', '<C-t>', api.fs.rename_full,        opts('Rename: Full Path'))
    vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end
-- my on_attach

return
{
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        event = "VeryLazy",
        keys = {
            {"<leader>n", "<CMD>NvimTreeToggle<CR>" },
        },
        opts = 
        {
            on_attach = my_on_attach,
            view = {
                width = 25
            },
            actions = {
                open_file = {
                    quit_on_open = false,
                },
            },
        },
    }
}
