return {
	"nvim-telescope/telescope.nvim",

	config = function()

		require("telescope").load_extension('harpoon')
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

		vim.keymap.set('n', '<leader>G', function()
			local word = vim.fn.input("Grep > ")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set('n', '<leader>grep', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>tt', vim.cmd.Telescope, {})
	end
}
