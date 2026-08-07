return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    branch = 'main',
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'dockerfile', 'editorconfig', 'elm', 'html', 'go', 'javascript', 'json', 'lua', 'luadoc', 'make', 'markdown', 'markdown_inline', 'mermaid', 'nginx', 'query', 'sql', 'sshconfig', 'typescript', 'vim', 'vimdoc' },
      auto_install = true,
      highlight = { enable = true },
    },
    config = function(_, opts)
      -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

      require('nvim-treesitter').setup(opts)
    end,
  },
}
