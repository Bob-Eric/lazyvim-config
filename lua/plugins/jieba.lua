return {
  {
    "kkew3/jieba.vim",
    tag = "v1.0.6",
    vscode = true,
    init = function()
      vim.g.jieba_vim_lazy = 1
      vim.g.jieba_vim_keymap = 1
    end,
    build = "./build.ps1",
  },
}
