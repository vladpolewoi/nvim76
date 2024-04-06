return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local neotree = require("neo-tree")
    neotree.setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignore = true,
        },
      },
      event_handlers = {
        -- Close file tree when file is opened
        {
          event = "file_opened",
          handler = function()
            vim.cmd("Neotree close")
          end,
        },
      },
    })
    vim.keymap.set("n", "<leader>e", ":Neotree toggle right <CR>")
  end,
}
