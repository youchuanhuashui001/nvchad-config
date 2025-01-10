require "nvchad.mappings"

local map = vim.keymap.set

-- 基础映射
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Ctags 相关 - 用于定义跳转
map("n", "<C-]>", "g<C-]>", { desc = "Ctags: Jump to definition" })
map("n", "<C-t>", "<C-t>", { desc = "Ctags: Jump back" })
map("n", "<leader>ct", ":!ctags -R .<CR>", { desc = "Generate ctags" })

-- Global 相关 - 用于查找引用
map("n", "<leader>gr", function()
  local word = vim.fn.expand("<cword>")
  require("telescope.builtin").live_grep({
    default_text = word,
    initial_mode = "normal",
    results_title = "References of " .. word,
  })
end, { desc = "Global: Find references" })

-- LSP 基础功能
map("n", "K", vim.lsp.buf.hover, { desc = "Show hover" })

-- 终端相关
map("n", "<leader>th", ":ToggleTerm size=15 direction=horizontal<CR>", { desc = "Toggle horizontal term" })
map("t", "<C-x>", "<C-\\><C-n>", { desc = "Escape terminal mode" })
