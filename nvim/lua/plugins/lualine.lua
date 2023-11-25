return
{
    {
        'nvim-lualine/lualine.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        event = "VeryLazy",
        opts = {
            theme = 'nord',
        globalstatus = true,
        extensions = {'nvim-tree'}
    },
    config = function(_, opts)
        require("lualine").setup(opts)
    end
}
}

