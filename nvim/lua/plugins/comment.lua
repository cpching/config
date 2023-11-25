return 
{
    {
        'numToStr/Comment.nvim',
        event = "VeryLazy",
        opts = {
            toggler = {
                line = '<C-_>'
            },
        },

        keys = {
        },
        config = function(_, opts)
            require('Comment').setup(opts)
        end
    }
}
