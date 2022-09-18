local util = require("util")

-- util.debug_pcall()

util.try(require, "config.options")

-- no need to load this immediately, since we have packer_compiled
vim.defer_fn(function()
  util.version()
  util.try(require, "config.mappings")
  util.try(require, "config.plugins")
end, 0)
