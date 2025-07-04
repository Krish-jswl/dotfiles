
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
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm", -- Options: "storm", "night", "moon", "day"
      transparent = true, -- Enable transparent background
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "transparent", -- Transparent sidebars
        floats = "transparent", -- Transparent floating windows
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
