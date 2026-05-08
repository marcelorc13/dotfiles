return {
	'goolord/alpha-nvim',
	dependencies = { 'echasnovski/mini.icons' },
	config = function()
		local alpha = require('alpha')
		local theme = require('alpha.themes.dashboard')
		theme.config.layout = {
			{ type = "padding", val = 1 },
			theme.section.header,
			{ type = "padding", val = 1 },
			theme.section.buttons,
		}
		theme.section.header.val = {
"                                                                                                                                                  ",
"                                                                                                                                                  ",
"                                                                                                                                                  ",
"                                                                                                                                                  ",
"                                                                                                                                                  ",
"                                                                                                                                                  ",
"                                                                                                                                                  ",
"                            ████████                                                                                                              ",
"                         ████       ████                                                                                                          ",
"                       ██              ███                                                                                                        ",
"                     ██                  ███                                                                                                      ",
"                    ██     ██              █     ██    ██     ██ ██                              ██     ██                                        ",
"                    █     ████             ██    ███   ███   ██  ██                 █            ██     ██ █████   ██     ██                      ",
"                   ██     ███               ██    ██  ██ █   ██  ███████  ███████ █████  ██████   ██   ██    █     ███   ████                     ",
"                   ██      ███              ██     █  ██ ██ ██   ██   ██       ██   █   ██         █   █     █    ██ █   ██ █                     ",
"                   ██        ███   ██       █      ████   █ ██   ██   ██  ███████   █     █████    ██ ██     █    ██ ██ ███ ██                    ",
"                    ██        █████████    ██      ████   ███    ██   ██  █    ██   █   ██   ██    █████     █   ██   ███    ██                   ",
"                    ██            ████    ██        ██    ███    ██   ██  ███████   ███  █████       █     █████ █     █      █                   ",
"                     ██                  ██                                                                                                       ",
"                    ██                 ███                                                                                                        ",
"                    ███████████   █████                                                                                                           ",
"                   ██         ████                                                                                                                ",
"                                                                                                                                                  ",
"                                                                                                                                                  ",
"                                                                                                                                                  ",
"                                                                                                                                                  ",
"                                                                                                                                                  ",
		}

		theme.section.buttons.val = {
			theme.button("o", "  Open File Explorer (Oil)", "<cmd>Oil<CR>"),
			theme.button("f", "󰈞  Find file", "<cmd>Telescope find_files hidden=true <CR>"),
			theme.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
		}

		alpha.setup(theme.config)
	end
}
