return {
  "phaazon/hop.nvim",
  branch = "v2",
  config = function()
    require("hop").setup({
      keys = "etovxqpdygfblzhckisuran",
    })

    vim.api.nvim_set_keymap("n", "<leader><leader>w", "<cmd>HopWordAC<cr>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader><leader>W", "<cmd>HopWordBC<cr>", { noremap = true, silent = true })
  end,
}
