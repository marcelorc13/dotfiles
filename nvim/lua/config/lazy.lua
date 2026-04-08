local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit...\n" },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

require("lazy").setup({
	require("plugins.lsp"),
	require("plugins.colorscheme"),
	require("plugins.cmp"),
	require("plugins.treesitter"),
	require("plugins.alpha"),
	require("plugins.oil"),
	require("plugins.telescope"),
	-- require("plugins.windsurf"),
	require("plugins.octo"),
	{
		"sindrets/diffview.nvim",
		config = function()
			require("diffview").setup({})
		end,
	},
	{
		"sphamba/smear-cursor.nvim",
		opts = {
			smear_between_buffers = true,
			smear_between_neighbor_lines = true,
			scroll_buffer_space = true,
			legacy_computing_symbols_support = false,
			smear_insert_mode = true,
		}
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"refractalize/oil-git-status.nvim",

		dependencies = {
			"stevearc/oil.nvim",
		},

		config = true,
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		priority = 1000,
		config = function()
			require('tiny-inline-diagnostic').setup()
			vim.diagnostic.config({ virtual_text = false })
		end
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = "cd app && npm install", -- Manually trigger npm install
	},
	{
		'javiorfo/nvim-soil',
		dependencies = { 'javiorfo/nvim-nyctophilia' },
		lazy = false,
		ft = "plantuml",
		opts = {
			-- This option closes the image viewer and reopen the image generated
			-- When true this offers some kind of online updating (like plantuml web server)
			actions = {
				redraw = false
			},

			-- If you want to use Plant UML jar version instead of the installed version
			puml_jar = "~/opt/plantuml/plantuml.jar",

			-- If you want to customize the image showed when running this plugin
			image = {
				darkmode = false, -- Enable or disable darkmode
				format = "png", -- Choose between png or svg

				-- This is a default implementation of using nsxiv to open the resultant image
				-- Edit the string to use your preferred app to open the image (as if it were a command line)
				-- Some examples:
				-- return "feh " .. img
				-- return "xdg-open " .. img
				execute_to_open = function(img)
					return "nsxiv -b " .. img
				end
			}
		}
	},
	{
		"R-nvim/R.nvim",
		lazy = false
	},
})
