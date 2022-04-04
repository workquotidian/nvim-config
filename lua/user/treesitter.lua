local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
ft_to_parser.motoko = "typescript"

configs.setup({
	ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		-- use_languagetree = true,
		enable = true, -- false will disable the whole extension
		-- disable = { "css", "html" }, -- list of language that will be disabled
		disable = { "css" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	autotag = {
		enable = true,
		disable = { "xml" },
	},
	rainbow = {
		enable = true,
		colors = {
			"Gold",
			"Orchid",
			"DodgerBlue",
			-- "Cornsilk",
			-- "Salmon",
			-- "LawnGreen",
		},
		disable = { "html" },
	},
	matchup = {
		enable = true, -- mandatory, false will disable the whole extension
		disable = { "c", "ruby" }, -- optional, list of language that will be disabled
		-- [options]
	},
})