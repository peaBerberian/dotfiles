return {
	{
		-- vim-eunuch: various UNIX tools
		"tpope/vim-eunuch",
	},
	{
		-- vim-mark: Mark and unmark words
		"inkarkat/vim-ingo-library",
		"peaBerberian/Mark--Karkat",
	},
	{
		"stevearc/oil.nvim",
		opts = {
			-- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
			-- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
			default_file_explorer = true,
			columns = {
				"icon",
				"size",
				"mtime",
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = function()
			local opts = {
				formatters_by_ft = {
					lua = { "stylua" },
					fish = { "fish_indent" },
					sh = { "shfmt" },
					typescript = { "prettier" },
					markdown = { "prettier" },
					rust = { "rustfmt" },
				},
				formatters = {
					-- # Example of using shfmt with extra args
					shfmt = {
						prepend_args = { "-i", "2" },
					},
				},
			}
			return opts
		end,
	},
	{
		"rcarriga/nvim-notify",
		opts = {
			-- Set longer timeout for notifications
			timeout = 8000,
		},
	},
}
