local keymap = vim.keymap;
local telescope = require('telescope.builtin')

-- Tabs
keymap.set('n', '<leader>tt', '<cmd>tabnew<CR>', {});
keymap.set('n', '<leader>tq', '<cmd>tabclose<CR>', {});
keymap.set('n', '<A-e>', '<cmd>tabnext<CR>', {});
keymap.set('n', '<A-q>', '<cmd>tabprevious<CR>', {});

-- Telescope
keymap.set('n', '<leader>ff', telescope.find_files, {}) 
