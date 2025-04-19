local M = {}
M.version = "0.0.0"

---@class vscode-high-contrast.Config
M.defaults = {
  style = "dark",
  transparent = false, -- Enable this to disable setting the background color
  plugins = {},
  cache = true, -- When set to true, the theme will be cached for better performance
  dim_inactive = false, -- dims inactive windows
  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  on_highlights = function(highlights, colors) end,
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
}

---@type vscode-high-contrast.Config
M.options = nil

---@param options? vscode-high-contrast.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? vscode-high-contrast.Config
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
