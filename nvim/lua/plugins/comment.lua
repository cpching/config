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
        config = function(_, opts)
            require('Comment').setup(opts)
        end
    }
}
