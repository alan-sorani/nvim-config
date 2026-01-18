local M = {}

function M.setup()
  local textobjects_cfg = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
        ["ab"] = "@block.outer",
        ["ib"] = "@block.inner",
      },
    },
  }

  -- Newer treesitter uses `nvim-treesitter.config` (singular)
  local ok_new, ts_config = pcall(require, "nvim-treesitter.config")
  if ok_new and ts_config and ts_config.setup then
    ts_config.setup({
      ensure_installed = { "python", "lua", "c", "vim", "vimdoc", "query", "markdown", "javascript", "rust", "julia" },
      sync_install = false,
      auto_install = true,
      ignore_install = {},

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      textobjects = textobjects_cfg,
    })
    return
  end

  -- Older treesitter uses `nvim-treesitter.configs` (plural)
  local ok_old, configs = pcall(require, "nvim-treesitter.configs")
  if ok_old and configs and configs.setup then
    configs.setup({
      ensure_installed = { "python", "lua", "c", "vim", "vimdoc", "query", "markdown", "javascript", "rust", "julia" },
      sync_install = false,
      auto_install = true,
      ignore_install = {},

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      textobjects = textobjects_cfg,
    })
    return
  end

  vim.schedule(function()
    vim.notify(
      "Treesitter is installed but no config module was found (tried nvim-treesitter.config and nvim-treesitter.configs).",
      vim.log.levels.ERROR
    )
  end)
end

return M
