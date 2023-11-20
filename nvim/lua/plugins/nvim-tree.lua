vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
            vim.cmd "quit"
        end
    end
})

return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        event = "VeryLazy",
        keys = {
            {"<leader>n", "<CMD>NvimTreeToggle<CR>" }
        },
        config = function()
            require("nvim-tree").setup{
                view = {
                    width = 25
                },
                actions = {
                    open_file = {
                        quit_on_open = false,
                    },
                },
            }
        end
    }
}
