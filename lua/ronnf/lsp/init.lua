local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "ronnf.lsp.mason"
require("ronnf.lsp.handlers").setup()
require "ronnf.lsp.null-ls"

