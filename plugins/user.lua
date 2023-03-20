return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  "andweeb/presence.nvim",
  { "phaazon/hop.nvim" }, { "indianboy42/hop-extensions" },
  { "ellisonleao/gruvbox.nvim" },
  {
    "MunifTanjim/prettier.nvim",
    config = function()
      require("prettier").setup {
        bin = "prettier", -- or `prettierd`
        filetypes = {
          "css", "graphql", "html", "javascript",
          "javascriptreact", "json", "less", "markdown",
          "scss", "typescript", "typescriptreact", "yaml"
        },

        -- prettier format options (you can use config files too. ex: `.prettierrc`)
        arrow_parens = "always",
        bracket_spacing = true,
        embedded_language_formatting = "auto",
        end_of_line = "lf",
        html_whitespace_sensitivity = "css",
        jsx_bracket_same_line = false,
        jsx_single_quote = false,
        print_width = 80,
        prose_wrap = "preserve",
        quote_props = "as-needed",
        semi = true,
        single_quote = false,
        tab_width = 2,
        trailing_comma = "es5",
        use_tabs = false,
        vue_indent_script_and_style = false
      }
    end
  },
  {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup {}
    end
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("rust-tools").setup {}
      -- os.exit(1);
    end
  },
  {
    "Pocco81/AutoSave.nvim",
    on_off_commands = true,
    config = function()
      local autosave = require("autosave").setup {
        enabled = true,
        execution_message = function()
          return "AutoSave: saved at " ..
              vim.fn.strftime "%H:%M:%S"
        end,
        -- execution_message = "Saved",
        events = { "InsertLeave", "TextChanged" },
        conditions = {
          exists = true,
          filename_is_not = {},
          filetype_is_not = {},
          modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = false,
        clean_command_line_interval = 0,
        debounce_delay = 135
      }
    end
  }
}
