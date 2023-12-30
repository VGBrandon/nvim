return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
  },
  config = function()
    local on_attach = function(_, bufnr)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = bufnr })
    end
    require("neodev").setup()
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
      settings = {
        lua = {
          telemetry = { enable = false }
        }
      }
    })

    -- Configuración para tsserver (TypeScript Server)
    require("lspconfig").tsserver.setup({
      on_attach = on_attach,
      settings = {
        -- Configuración específica para TypeScript/JavaScript
        -- Puedes agregar más configuración según tus necesidades
        TypeScript = {
          -- Opciones específicas de TypeScript
        },
        JavaScript = {
          -- Opciones específicas de JavaScript
        },
      },
    })
  end
}
