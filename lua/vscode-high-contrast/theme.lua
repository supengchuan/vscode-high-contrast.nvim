local M = {}

---@param opts? vscode-hihg-contrast.Config
function M.setup(opts)
  opts = require("vscode-high-contrast.config").extend(opts)
end

return M
