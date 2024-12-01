return {
    "Mofiqul/vscode.nvim",
    -- Load the plugin during startup
    lazy = false, -- Ensure it loads immediately
    priority = 1000, -- Set a high priority to ensure colorscheme is applied first
    config = function()
        -- Load the colorscheme
        require("vscode").setup({
            -- Options for the theme (see the plugin's documentation)
            style = "dark", -- Choose between 'light' or 'dark'
            transparent = false, -- Disable background transparency
            italic_comments = true, -- Enable italic for comments
            disable_nvimtree_bg = true, -- Avoid setting background for NvimTree
        })

        -- Apply the colorscheme
        require("vscode").load()
    end,
}
