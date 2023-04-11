vim.wo.wrap = true
vim.opt.clipboard = ''
lvim.keys.insert_mode["ii"] = "<Esc>"
lvim.builtin.telescope.pickers.find_files = {"truncate"}
lvim.builtin.telescope.defaults.path_display = {"truncate"}

-- Additional Plugins
lvim.plugins = {
    {
      "tpope/vim-surround",
      setup = function()
         vim.o.timeoutlen = 500
       end
    },
}

