-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- colorscheme
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1001,
    config = function()
      vim.g.sonokai_transparent_background = 1
      vim.g.sonokai_style = 'espresso'

      vim.cmd.colorscheme 'sonokai'

      vim.cmd.hi 'Comment gui=none'
      -- vim.cmd.hi 'CursorLine guibg=#262729 guifg=NONE'
      -- vim.cmd.hi 'CursorLineNr guibg=#262729 guifg=NONE'
      -- vim.cmd.hi('TelescopeMatching guifg=' .. palette.diff_green[1] .. ' guibg=NONE gui=bold')
      vim.api.nvim_set_hl(0, 'TelescopeSelection', { link = 'Visual' })
      -- vim.api.nvim_set_hl(0, 'TelescopeMatching', { link = 'String' })
    end,
  },
  -- Treesitter context
  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      max_lines = 15,
    },
  },

  -- Treesitter textobjects
  { 'nvim-treesitter/nvim-treesitter-textobjects' },

  -- Elixir standard plugins
  { 'elixir-editors/vim-elixir' },
}
