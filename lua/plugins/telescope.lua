return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>f", builtin.find_files, {})
			vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"olacin/telescope-cc.nvim",
		config = function()
			-- require("telescope").load_extension("cc")
			require("telescope").load_extension("conventional_commits")
			vim.keymap.set(
				"n",
				"<leader>c",
				require("telescope").extensions.conventional_commits.conventional_commits,
				{}
			)
		end,
	},
}
