return
{
    {
        'RRethy/vim-illuminate',
        enable = false,
        config = function()
            require('illuminate').configure({
                delay = 0
            })
        end
    }
}

