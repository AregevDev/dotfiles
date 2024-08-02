return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = {
        { 'nvim-telescope/telescope-fzf-native.nvim', build = make }, 
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')

        telescope.setup({
            defaults = {
                path_display = 'smart',
                mappings = {
                    i = {
                        ['<C-j>'] = actions.move_selection_next,
                        ['<C-k>'] = actions.move_selection_previous
                    }
                }
            }
        })
    end
}

