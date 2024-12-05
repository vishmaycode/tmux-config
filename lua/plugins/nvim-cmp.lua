return {
    -- override nvim-cmp and add cmp-emoji
    {
        "hrsh7th/nvim-cmp",
        dependencies = { "hrsh7th/cmp-emoji" },
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local cmp = require("cmp")
            table.insert(opts.sources, { name = "emoji" })
            -- Customize key mappings
            opts.mapping = vim.tbl_extend("force", opts.mapping, {
                -- Disable <CR> (Enter) for selection
                ["<CR>"] = cmp.mapping(function(fallback)
                    fallback() -- Fall back to default behavior
                end, { "i", "c" }),
            })
        end,
    },
}
