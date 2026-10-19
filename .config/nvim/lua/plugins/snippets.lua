require("luasnip").setup({
  history = true,
  update_events = "TextChanged,TextChangedI",
  region_check_events = "CursorMoved,InsertEnter",
  delete_check_events = "TextChanged",
})

require("luasnip.loaders.from_vscode").lazy_load()
