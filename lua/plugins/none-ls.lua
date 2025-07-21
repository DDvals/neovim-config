return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                --null_ls.builtins.formatting.prettier,
                --null_ls.builtins.code_actions.ts_node_action,
                --null_ls.builtins.code_actions.refactoring,
                --null_ls.builtins.completion.spell,
                --null_ls.builtins.diagnostics.codespell,
                --null_ls.builtins.diagnostics.cppcheck,
                --null_ls.builtins.diagnostics.opentofu_validate,
                --null_ls.builtins.diagnostics.terraform_validate,
                --null_ls.builtins.diagnostics.semgrep,
                --null_ls.builtins.diagnostics.todo_comments,
                --null_ls.builtins.diagnostics.trail_space,
                require("none-ls.diagnostics.eslint_d"),
                require("none-ls.code_actions.eslint_d"),
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "LSP format" })
    end,
}
