return {
        'barrett-ruth/live-server.nvim',
        build = 'yarn global add live-server',
        config = true,
        init = function()
          require('live-server').setup()
        end
}
