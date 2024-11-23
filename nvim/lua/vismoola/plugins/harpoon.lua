return {
	"ThePrimeagen/harpoon",

-- harpoon keymaps

	config = function() 
		local mark = require "harpoon.mark"
		local ui = require "harpoon.ui"
		local term = require "harpoon.term"
		vim.keymap.set("n", "<leader>m", ui.toggle_quick_menu, {})
		vim.keymap.set("n", "<C-a>", mark.add_file, {})
		vim.keymap.set("n", "<C-j>", ui.nav_next, {})
		vim.keymap.set("n", "<C-k>", ui.nav_prev, {})
	end
}
