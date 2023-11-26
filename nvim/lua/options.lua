local options = 
{
    number = true,
    smartindent = true,
    smartcase = true,
    termguicolors = true,
    background = "dark",
    ruler = true,
    cursorline = true,
    encoding = "UTF-8",
    fileencodings = "utf-8",
    smarttab = true,
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    hidden = false,
    mouse="i",
}

for key, value in pairs(options) do
    vim.opt[key] = value
end


