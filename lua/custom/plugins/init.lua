-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- add dracula
  { 'Mofiqul/dracula.nvim' },
  { 'ellisonleao/gruvbox.nvim', priority = 1000, config = true, opts = ... },
  {
    'akinsho/toggleterm.nvim',
    tag = '*',
    config = function()
      require('toggleterm').setup {
        size = 20, -- Default size for horizontal/vertical split
        open_mapping = '<leader>tt', -- Keybinding to toggle terminal
        direction = 'float', -- Default direction: horizontal, vertical, or float
        shade_filetypes = {},
        shade_terminals = true,
        start_in_insert = true,
        persist_size = true,
        insert_mappings = true,
        terminal_mappings = true,
        -- Other options as needed
      }
    end,
    keys = {
      { '<leader>th', '<cmd>ToggleTerm size=30 direction=horizontal<cr>', desc = 'Open horizontal terminal' },
      { '<leader>tv', '<cmd>ToggleTerm size=80 direction=vertical<cr>', desc = 'Open vertical terminal' },
      { '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', desc = 'Open floating terminal' },
    },
  },

  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    keys = {
      {
        '<leader>s',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').jump()
        end,
        desc = 'Flash',
      },
      {
        '<leader>S',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').treesitter()
        end,
        desc = 'Flash Treesitter',
      },
      {
        '<leader>r',
        mode = 'o',
        function()
          require('flash').remote()
        end,
        desc = 'Remote Flash',
      },
      {
        '<leader>R',
        mode = { 'o', 'x' },
        function()
          require('flash').treesitter_search()
        end,
        desc = 'Treesitter Search',
      },
      {
        '<leader><c-s>',
        mode = { 'c' },
        function()
          require('flash').toggle()
        end,
        desc = 'Toggle Flash Search',
      },
    },
  },
}

-- Configure LazyVim to load dracula
