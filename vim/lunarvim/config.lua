vim.wo.wrap = true
vim.opt.clipboard = ''
lvim.keys.insert_mode["ii"] = "<Esc>"
lvim.builtin.telescope.pickers.find_files = {"truncate"}
lvim.builtin.telescope.defaults.path_display = {"truncate"}

lvim.keys.normal_mode["gt"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gT"] = ":BufferLineCyclePrev<CR>"

lvim.builtin.terminal.active = true
lvim.builtin.terminal.insert_mappings = true
if package.config:sub(1,1) == "\\" then
  -- windows
  lvim.builtin.terminal.shell = "pwsh"
end
--lvim.keys.normal_mode["<C-t>"] = "<cmd>ToggleTerm direction=float<CR>"
lvim.builtin.which_key.mappings["t"] = { "<cmd>ToggleTerm direction=float<CR>", "Terminal" }

vim.opt.relativenumber = true

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
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
}
