return {
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup {
        style = "darker", -- or 'dark', 'cool', 'deep', 'warm', 'warmer'
        transparent = true,
      }
      require("onedark").load()
    end
  }
}
