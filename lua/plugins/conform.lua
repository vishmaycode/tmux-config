return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters = {
                prettier = {
                    command = "prettier",
                    args = { "--tab-width", "4", "--use-tabs", "false" }, -- Ensure 4 spaces for Prettier
                },
                stylua = {
                    command = "stylua",
                    args = { "--indent-type", "Spaces", "--indent-width", "4" },
                },
                black = {
                    command = "black",
                    args = { "--line-length", "88" }, -- Black doesn't control spaces but other preferences can go here
                },
            },
            formatters_by_ft = {
                lua = { "stylua" },
                javascript = { "prettier" },
                typescript = { "prettier" },
                json = { "prettier" },
                html = { "prettier" },
                css = { "prettier" },
                python = { "black" },
            },
            -- format_on_save = {
            --     lsp_fallback = true,
            -- },
        },
    },
}
