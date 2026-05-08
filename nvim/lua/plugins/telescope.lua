return {
	'nvim-telescope/telescope.nvim',
	tag = 'v0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },

	vim.keymap.set('n', '<leader>jf', "<cmd>Telescope find_files hidden=true <CR>"),
	vim.keymap.set('n', '<leader>ff', "<cmd>Telescope live_grep <CR>"),
	vim.keymap.set('n', '<leader>jc', "<cmd>Telescope buffers <CR>"),
}
