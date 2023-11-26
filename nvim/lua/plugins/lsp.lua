local language_servers = {
    'lua_ls',
    'pyright'
}

local function lsp_highlight_document(client)
    -- Set autocommands conditional on server_capabilities
    if client.server_capabilities.documentHighlight then
        vim.api.nvim_exec(
        [[
        augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
        ]],
        false
        )
    end
end


local on_attach = function(client, bufnr)
    if client.name == "tsserver" then
        client.server_capabilities.documentFormattingProvider = false
    end
    lsp_keymaps(bufnr)
    lsp_highlight_document(client)
end

local capabilities
local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if status_ok then
    capabilities = cmp_nvim_lsp.default_capabilities()
end

return
{
    {
        "williamboman/mason.nvim",
        enabled = true,
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
                border = "rounded",
            },
        }
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = language_servers,
                automatic_installation = true,
            })
        end,
        dependencies = {'williamboman/mason.nvim'}
    },
    {
        "neovim/nvim-lspconfig",
        enabled = true,
        dependencies = {'williamboman/mason-lspconfig.nvim', 'williamboman/mason.nvim'},
        opts = {
            on_attach = on_attach,
            capabilities = capabilities,
        },
        config = function (_, opts)
            local lspconfig = require('lspconfig')
            -- lspconfig['pyright'].setup({})
            for _, language_server in pairs(language_servers) do
                -- language_server = vim.split(language_server, "@")[1]

                -- local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. language_server)
                -- if require_ok then
                --     opts = vim.tbl_deep_extend("force", conf_opts, opts)
                -- end

                lspconfig[language_server].setup(opts)
            end
        end
    }
}
