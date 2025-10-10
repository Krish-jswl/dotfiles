
--ONE_DARK
-- return {
--   {
--     "navarasu/onedark.nvim",
--     priority = 1000,
--     config = function()
--       require("onedark").setup {
--         style = "darker", -- or 'dark', 'cool', 'deep', 'warm', 'warmer'
--         transparent = true,
--       }
--       require("onedark").load()
--     end
--   }
-- }

--SOLARIZED_OSAKA
-- return {
--   {
--     "craftzdog/solarized-osaka.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       transparent = true,
--     },
--     config = function(_, opts)
--       require("solarized-osaka").setup(opts)
--       vim.cmd.colorscheme("solarized-osaka")
--     end,
--   },
-- }

-- TokyoNight
-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       style = "storm", -- Options: "storm", "night", "moon", "day"
--       transparent = true, -- Enable transparent background
--       terminal_colors = true,
--       styles = {
--         comments = { italic = true },
--         keywords = { italic = true },
--         functions = {},
--         variables = {},
--         sidebars = "transparent", -- Transparent sidebars
--         floats = "transparent", -- Transparent floating windows
--       },
--     },
--     config = function(_, opts)
--       require("tokyonight").setup(opts)
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }

-- Gruvbox Material
-- return {
--   {
--     "f4z3r/gruvbox-material.nvim",
--     name = "gruvbox-material",
--     lazy = false, -- Load during startup
--     priority = 1000, -- High priority to ensure it loads before other plugins
--     config = function()
--       require("gruvbox-material").setup({
--         background = {
--           transparent = true, -- Enable transparent background
--         },
--         contrast = "medium", -- Options: "hard", "medium", "soft"
--         -- Optional: Other configurations
--         italics = true, -- Enable italics for certain elements
--         comments = { italics = true }, -- Italic comments
--         float = {
--           force_background = false, -- Ensure floating windows are transparent
--           background_color = nil, -- Use default colors for floats
--         },
--         signs = {
--           force_background = false, -- Ensure signs are transparent
--           background_color = nil, -- Use default colors for signs
--         },
--       })
--       -- Apply the colorscheme
--       vim.cmd([[colorscheme gruvbox-material]])
--     end,
--   },
-- }

-- Rose pine
-- return {
--   {
--     "rose-pine/neovim",
--     config = function()
--       -- Set Rose Pine colorscheme
--       vim.cmd('colorscheme rose-pine')
--
--       -- Set transparent background by disabling it in Rose Pine
--       vim.g.rose_pine_disable_background = true
--
--       -- Force transparent background for other highlight groups
--       vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
--       vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
--       vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
--       vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'none' })
--       vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'none' })
--     end
--   }
-- }

-- Everforest
-- return {
--   "sainnhe/everforest",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Everforest options
--     vim.g.everforest_background = "hard" -- "soft", "medium", or "hard"
--     vim.g.everforest_transparent_background = 1
--     vim.g.everforest_enable_italic = 1
--     vim.g.everforest_diagnostic_text_highlight = 1
--     vim.g.everforest_diagnostic_line_highlight = 1
--     vim.g.everforest_diagnostic_virtual_text = "colored"
--
--     -- Apply the colorscheme
--     vim.cmd("colorscheme everforest")
--   end,
-- }


-- Dracula
return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local dracula = require("dracula")
      dracula.setup({
        show_end_of_buffer = true, -- show '~' after end of buffers
        transparent_bg = true,     -- 👈 enables transparency
        italic_comment = true,
        overrides = {},
      })
      vim.cmd.colorscheme("dracula")
    end,
  },
}

