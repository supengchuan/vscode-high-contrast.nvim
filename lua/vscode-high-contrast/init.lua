local config = require("vscode-high-contrast.config")
local M = {}

---@param opts? vscode-hihg-contrast.Config
function M.load(opts)
  opts = require("vscode-high-contrast.config").extend(opts)
  local bg = vim.o.background

  return require("vscode-high-contrast.theme").setup(opts)
end

M.setup = config.setup

return M
