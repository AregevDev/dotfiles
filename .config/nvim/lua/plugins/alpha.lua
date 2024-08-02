function header_to_table(header)
	local pos, table_header = 0, {}
	for st, sp in function() return string.find(header, '\n', pos, true) end do
    	table.insert(table_header, string.sub(header, pos, st - 1))
    	pos = sp + 1
	end
	
	table.insert(table_header, string.sub(header, pos))
	return table_header
end

return {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    config = function()
        local alpha = require('alpha')
        local dashboard = require('alpha.themes.dashboard')
        local my_header = [[
 .----------------.   .----------------.   .----------------.   .----------------.   .----------------. 
| .--------------. | | .--------------. | | .--------------. | | .--------------. | | .--------------. |
| |  _______     | | | |  _________   | | | |    ______    | | | |  _________   | | | | ____   ____  | |
| | |_   __ \    | | | | |_   ___  |  | | | |  .' ___  |   | | | | |_   ___  |  | | | ||_  _| |_  _| | |
| |   | |__) |   | | | |   | |_  \_|  | | | | / .'   \_|   | | | |   | |_  \_|  | | | |  \ \   / /   | |
| |   |  __ /    | | | |   |  _|  _   | | | | | |    ____  | | | |   |  _|  _   | | | |   \ \ / /    | |
| |  _| |  \ \_  | | | |  _| |___/ |  | | | | \ `.___]  _| | | | |  _| |___/ |  | | | |    \ ' /     | |
| | |____| |___| | | | | |_________|  | | | |  `._____.'   | | | | |_________|  | | | |     \_/      | |
| |              | | | |              | | | |              | | | |              | | | |              | |
| '--------------' | | '--------------' | | '--------------' | | '--------------' | | '--------------' |
 '----------------'   '----------------'   '----------------'   '----------------'   '----------------' 
]]

        dashboard.section.header.val = header_to_table(my_header)
        dashboard.section.buttons.val = {
            dashboard.button('e', '   > New File', '<cmd>ene<CR>'),    
            dashboard.button('f', '   > Find File', '<cmd>Telescope find_files<CR>'),    
            dashboard.button('r', '   > Recents', '<cmd>Telescope oldfiles<CR>'),    
            dashboard.button('l', '   > Find Word', '<cmd>Telescope live_grep<CR>'),    
            dashboard.button('q', '   > Quit', '<cmd>qa<CR>'),    
        }

        alpha.setup(dashboard.opts)
        vim.cmd('autocmd FileType alpha setlocal nofoldenable')
    end
}

