return {
  "akinsho/toggleterm.nvim",
  config = function()
    local toggleterm = require("toggleterm")

    toggleterm.setup({
      size = 20,
      open_mapping = [[<c-\>]], -- Toggle terminal with Ctrl+\
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = "horizontal", -- 'vertical' | 'horizontal' | 'tab' | 'float'
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 3,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })

    -- Custom keybindings with descriptions
    vim.api.nvim_set_keymap(
      "n",
      "<leader>tt",
      "<cmd>ToggleTerm<CR>",
      { noremap = true, silent = true, desc = "Toggle terminal" }
    )
    vim.api.nvim_set_keymap(
      "t",
      "<C-h>",
      [[<C-\><C-n><C-W>h]],
      { noremap = true, silent = true, desc = "Navigate left in terminal" }
    )
    vim.api.nvim_set_keymap(
      "t",
      "<C-j>",
      [[<C-\><C-n><C-W>j]],
      { noremap = true, silent = true, desc = "Navigate down in terminal" }
    )
    vim.api.nvim_set_keymap(
      "t",
      "<C-k>",
      [[<C-\><C-n><C-W>k]],
      { noremap = true, silent = true, desc = "Navigate up in terminal" }
    )
    vim.api.nvim_set_keymap(
      "t",
      "<C-l>",
      [[<C-\><C-n><C-W>l]],
      { noremap = true, silent = true, desc = "Navigate right in terminal" }
    )
  end,
}
