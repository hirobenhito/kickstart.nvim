-- Source - https://stackoverflow.com/a
-- Posted by Itallo Sá
-- Retrieved 2025-12-08, License - CC BY-SA 4.0

return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        require 'none-ls.diagnostics.eslint_d',
      },
    }

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end,
}
