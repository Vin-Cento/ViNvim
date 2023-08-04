local ls = require("luasnip")
require("luasnip.loaders.from_lua").load({ paths = "~/.config/snippets/" })
ls.config.set_config({
  history = true,
  -- updateevents = "Text"
})
