require("mason").setup()
require("mason-lspconfig").setup{
    ensure_installed = {"clangd", "pyright", "pylint", "verible", "lua_ls"},
    automatic_installation = true,
}

require("lspconfig").lua_ls.setup {}
require("lspconfig").verible.setup {}
require("lspconfig").pyright.setup {}
