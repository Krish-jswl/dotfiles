
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
return {
  {
    "f4z3r/gruvbox-material.nvim",
    name = "gruvbox-material",
    lazy = false, -- Load during startup
    priority = 1000, -- High priority to ensure it loads before other plugins
    config = function()
      require("gruvbox-material").setup({
        background = {
          transparent = true, -- Enable transparent background
        },
        contrast = "medium", -- Options: "hard", "medium", "soft"
        -- Optional: Other configurations
        italics = true, -- Enable italics for certain elements
        comments = { italics = true }, -- Italic comments
        float = {
          force_background = false, -- Ensure floating windows are transparent
          background_color = nil, -- Use default colors for floats
        },
        signs = {
          force_background = false, -- Ensure signs are transparent
          background_color = nil, -- Use default colors for signs
        },
      })
      -- Apply the colorscheme
      vim.cmd([[colorscheme gruvbox-material]])
    end,
  },
}
