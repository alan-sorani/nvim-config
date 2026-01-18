return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",        -- <- key change (compat with textobjects)
    build = ":TSUpdate",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-textobjects" }, -- enabled again
    },
    config = function()
      require("plugin_configs.treesitter").setup()
    end,
  },
}
