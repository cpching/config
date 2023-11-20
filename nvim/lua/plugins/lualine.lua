return {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = "VeryLazy",
    opts = {
        theme = 'nord' 
    },
    config = function(_, opts)
        require("bufferline").setup{options = { theme  = 'nord'}}
    end
}
