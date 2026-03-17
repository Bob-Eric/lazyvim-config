return {
  {
    "keaising/im-select.nvim",
    vscode = true,
    config = function()
      require("im_select").setup({
        set_default_events = { "InsertLeave" },
      })
    end,
  },
}
