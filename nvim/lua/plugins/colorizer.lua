return
{
    {
        'norcalli/nvim-colorizer.lua',
        opts = {
            '*'; -- Highlight all files, but customize some others.
            css = { rgb_fn = true; }; -- Enable parsing rgb(...) functions in css.
            html = { names = false; } -- Disable parsing "names" like Blue or Gray
        },
        config = function(_, opts)
            require("colorizer").setup(opts)
        end
    }
}
