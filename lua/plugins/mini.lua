return {
  { -- Collection of various small independent plugins/modules
    "echasnovski/mini.nvim",
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require("mini.ai").setup({ n_lines = 500 })

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require("mini.surround").setup()

      require("mini.starter").setup({
        -- Whether to open starter buffer on VimEnter. Not opened if Neovim was
        -- started with intent to show something else.
        autoopen = true,

        -- Whether to evaluate action of single active item
        evaluate_single = false,

        -- Items to be displayed. Should be an array with the following elements:
        -- - Item: table with <action>, <name>, and <section> keys.
        -- - Function: should return one of these three categories.
        -- - Array: elements of these three types (i.e. item, array, function).
        -- If `nil` (default), default items will be used (see |mini.starter|).
        items = nil,

        -- Header to be displayed before items. Converted to single string via
        -- `tostring` (use `\n` to display several lines). If function, it is
        -- evaluated first. If `nil` (default), polite greeting will be used.
        header = function()
          local logo = table.concat({
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
          }, "\n")

          return logo
        end,

        -- Footer to be displayed after items. Converted to single string via
        -- `tostring` (use `\n` to display several lines). If function, it is
        -- evaluated first. If `nil` (default), default usage help will be shown.
        footer = nil,

        -- Array  of functions to be applied consecutively to initial content.
        -- Each function should take and return content for 'Starter' buffer (see
        -- |mini.starter| and |MiniStarter.content| for more details).
        content_hooks = nil,

        -- Characters to update query. Each character will have special buffer
        -- mapping overriding your global ones. Be careful to not add `:` as it
        -- allows you to go into command mode.
        query_updaters = "abcdefghijklmnopqrstuvwxyz0123456789_-.",

        -- Whether to disable showing non-error feedback
        silent = false,
      })

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
}
