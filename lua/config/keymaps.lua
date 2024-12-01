-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>uf", function()
    vim.g.autoformat = not vim.g.autoformat
    print(vim.g.autoformat and "Autoformat enabled" or "Autoformat disabled")
end, { desc = "Toggle autoformat" })
