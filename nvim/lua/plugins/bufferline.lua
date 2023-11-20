return 
{
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        event = "VeryLazy",
        keys = {
            {"<leader>p", "<CMD>BufferLineTogglePin<CR>", desc = "Toggle pin"},
        },
        opts = {
            options = {
                close_command = "Bdelete! %d",
                always_show_bufferline = true,
                offsets = { { filetype = "NvimTree", text = "", padding = 1 } }
            }
        },
        config = function(_, opts)
            require("bufferline").setup(opts)
        end
    }
}
