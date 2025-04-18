local M = {}
M.version = "0.0.0"

---@class vscode-hihg-contrast.Config
M.defaults = {}

---@type vscode-hihg-contrast.Config
M.options = nil

---@param options? vscode-hihg-contrast.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? vscode-hihg-contrast.Config
function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})

return M
