vim.wo.wrap = true
vim.opt.clipboard = ''
lvim.keys.insert_mode["ii"] = "<Esc>"
lvim.builtin.telescope.pickers.find_files = {"truncate"}
lvim.builtin.telescope.defaults.path_display = {"truncate"}

lvim.builtin.terminal.active = true
lvim.builtin.terminal.insert_mappings = true
--lvim.keys.normal_mode["<C-t>"] = "<cmd>ToggleTerm direction=float<CR>"
lvim.builtin.which_key.mappings["t"] = { "<cmd>ToggleTerm direction=float<CR>", "Terminal" }

-- Additional Plugins
lvim.plugins = {
  {
    "tpope/vim-surround",
    setup = function()
       vim.o.timeoutlen = 500
     end
  },
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = {"fugitive"}
  },
}
