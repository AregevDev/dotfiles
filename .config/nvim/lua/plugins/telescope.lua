return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = {
        { 'nvim-telescope/telescope-fzf-native.nvim', build = make }, 
        'nvim-tree/nvim-web-davicons'
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')

        telescope.setup({
            defaults = {
                path_display = 'smart'
            },
        })
    end
}

