return {
    'windwp/nvim-autopairs',
    lazy = true,
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
    init = function()
      require('nvim-ts-autotag').setup({})
    end
}
