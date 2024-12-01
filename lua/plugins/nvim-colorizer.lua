return {
    "norcalli/nvim-colorizer.lua",
    event = "BufReadPost", -- Load the plugin after reading a buffer
    config = function()
        require("colorizer").setup({
            "*", -- Highlight all files, but customize some specific file types below
            css = { rgb_fn = true }, -- Enable parsing `rgb(...)` functions in CSS files
            html = { names = false }, -- Disable color names like "blue" in HTML
        }, {
            mode = "background", -- Set background mode to show colors
        })

        -- Enable Colorizer for specific file types automatically
        vim.cmd("ColorizerAttachToBuffer")
    end,
}
