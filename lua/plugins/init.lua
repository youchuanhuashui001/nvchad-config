return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- 基础
        "vim", "lua", "vimdoc",
        -- 开发语言
        "c", "python",
        -- 汇编支持 (只保留 nasm)
        "nasm",
        -- 常用格式
        "json", "yaml", "markdown",
      },
      highlight = {
        enable = true,
      },
    },
  },

  -- LSP 配置
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

}
