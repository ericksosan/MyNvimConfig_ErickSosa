require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { 
   "tsserver",
   "lua_ls",
   "html",
   "cssls",
   "emmet_ls",
   "jsonls",
   "eslint",
  }
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()


lspconfig.tsserver.setup({
   capabilities = capabilities,
})

lspconfig.lua_ls.setup({
   capabilities = capabilities,
})

lspconfig.emmet_ls.setup({
   capabilities = capabilities,
})

lspconfig.html.setup ({
  capabilities = capabilities,
})

lspconfig.cssls.setup({
  capabilities = capabilities,
})

lspconfig.jsonls.setup {
  capabilities = capabilities,
}

lspconfig.eslint.setup({
  capabilities = capabilities,
})

