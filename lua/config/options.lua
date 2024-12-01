-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true
vim.opt.winbar = "%=%m %f"

-- Disable format on save
vim.g.lazymode_format_on_save = false

-- Disable ruby provider if not required
vim.g.loaded_ruby_provider = 0
