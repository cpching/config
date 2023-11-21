return {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = "VeryLazy",
    opts = {
        theme = 'nord',
        ignore_focus = {
             "NvimTree"
        },
        globalstatus = true
    },
    config = function(_, opts)
        require("lualine").setup(opts)
    end
}

