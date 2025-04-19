---@class vscode-high-contrast.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias vscode-high-contrast.Highlights table<string,vscode-high-contrast.Highlight|string>

---@alias vscode-high-contrast.HighlightsFn fun(colors: ColorScheme, opts:vscode-high-contrast.Config):vscode-high-contrast.Highlights

---@class vscode-high-contrast.Cache
---@field groups vscode-high-contrast.Highlights
---@field inputs table
