
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
return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function(_, opts)
      require("solarized-osaka").setup(opts)
      vim.cmd.colorscheme("solarized-osaka")
    end,
  },
}
