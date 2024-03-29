return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      start_in_insert = true,
    },
    config = function()
      require("toggleterm").setup({})
      vim.keymap.set("n", "ö", ":ToggleTerm<CR>")
      function _G.set_terminal_keymaps()
        local opts = { buffer = 0 }
        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
        vim.keymap.set("t", "ö", [[<C-\><C-n>:ToggleTerm<CR>]], opts)
        -- vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
      end

      -- if you only want these mappings for toggle term use term://*toggleterm#* instead
      vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
      vim.cmd("autocmd BufEnter * if &buftype ==# 'terminal' | startinsert! | endif")
    end,
  },
}
