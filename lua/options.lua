require "nvchad.options"

-- 添加汇编文件类型关联
vim.filetype.add({
  extension = {
    asm = "nasm",  -- .asm 文件使用 NASM 语法
    s = "asm",     -- .s 文件使用传统的 asm 语法
    S = "asm",     -- .S 文件使用传统的 asm 语法
  },
})
