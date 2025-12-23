return {
  {
    "i18n-translate", -- The name of the plugin
    cond = function()
      return os.getenv("CS_DEV") == "true"
    end,
    dir = "~/cs/Workspace/i18n-translate.nvim", -- The absolute path to your local directory
    dev = true, -- Marks it as a development plugin
    -- Optional: configure the plugin when it loads
    config = function()
      require("i18n-translate").setup({
        global_paths = {}, -- Paths for global translations
        translation_format = "xliff", -- Format for translation files
        auto_format = true, -- Auto-format after extraction
        keybindings = {
          extract = "<leader>te", -- Key to extract selection
        },
      })
    end,
  },
}
