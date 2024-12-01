-- lua/plugins/lualine.lua

return {
    -- Add lualine with custom options
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",
        opts = function()
            return {
                options = {
                    icons_enabled = true,
                    theme = "vscode",
                    component_separators = "|",
                    section_separators = "",
                    disabled_filetypes = { statusline = {}, winbar = {} },
                    globalstatus = false,
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { "filename" },
                    lualine_x = { "encoding", "fileformat", "filetype" },
                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                },
            }
        end,
    },
}
