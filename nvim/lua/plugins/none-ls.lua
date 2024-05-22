return {
  "nvimtools/none-ls.nvim",
  config = function ()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.diagnostics.terraform_validate,
        null_ls.builtins.formatting.terraform_fmt,
      }
    })
    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = 'Format [F]ile' })
  end
}