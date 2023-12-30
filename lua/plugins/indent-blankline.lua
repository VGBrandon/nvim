return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {

    },
    init = function()
      require("ibl").setup({
        scope = {
          highlight = { "IblScope" },
        },
        indent = {
          char = "▏"
        }
      })
      --Cambiamos el color de resaldo cuando esta en scope
      vim.cmd("highlight IblScope guifg=#5CE2B6 ctermfg=118")
    end
}
