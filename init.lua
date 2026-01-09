if vim.fn.has("win32") == 1 then
  vim.o.shell = "powershell"
end

-- disable spell
vim.o.spell = false

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
