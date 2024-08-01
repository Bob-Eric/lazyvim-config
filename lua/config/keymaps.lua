-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
if vim.g.vscode then
    local map = LazyVim.safe_keymap_set
    -- Deal with vscode buffers
    -- Go to next buffer
    map("n", "L", "<Cmd>lua require('vscode').call('workbench.action.nextEditorInGroup')<CR>", { desc = "Next Buffer" })
    map("x", "L", "<Cmd>lua require('vscode').call('workbench.action.nextEditorInGroup')<CR>", { desc = "Next Buffer" })
    map("n", "]b", "<Cmd>lua require('vscode').call('workbench.action.nextEditorInGroup')<CR>", { desc = "Next Buffer" })
    map("x", "]b", "<Cmd>lua require('vscode').call('workbench.action.nextEditorInGroup')<CR>", { desc = "Next Buffer" })

    -- Go to previous buffer
    map("n", "H", "<Cmd>lua require('vscode').call('workbench.action.previousEditorInGroup')<CR>",
        { desc = "Previous Buffer" })
    map("x", "H", "<Cmd>lua require('vscode').call('workbench.action.previousEditorInGroup')<CR>",
        { desc = "Previous Buffer" })
    map("n", "[b", "<Cmd>lua require('vscode').call('workbench.action.previousEditorInGroup')<CR>",
        { desc = "Previous Buffer" })
    map("x", "[b", "<Cmd>lua require('vscode').call('workbench.action.previousEditorInGroup')<CR>",
        { desc = "Previous Buffer" })

    -- Delete buffer
    map("n", "<leader>bd", "<Cmd>lua require('vscode').call('workbench.action.closeActiveEditor')<CR>")
    map("x", "<leader>bd", "<Cmd>lua require('vscode').call('workbench.action.closeActiveEditor')<CR>")

    map("n", "<leader>bo", "<Cmd>lua require('vscode').call('workbench.action.closeOtherEditors')<CR>")
    map("x", "<leader>bo", "<Cmd>lua require('vscode').call('workbench.action.closeOtherEditors')<CR>")

    -- Toggle sidebar
    map("n", "<leader>e", "<Cmd>lua require('vscode').call('workbench.action.toggleSidebarVisibility')<CR>")
    map("x", "<leader>e", "<Cmd>lua require('vscode').call('workbench.action.toggleSidebarVisibility')<CR>")

    -- Lazygit
    map("n", "<leader>gg", "<Cmd>lua require('vscode').call('lazygit.openLazygit')<CR>")
    map("x", "<leader>gg", "<Cmd>lua require('vscode').call('lazygit.openLazygit')<CR>")

    -- Clipboard
    -- map("n", "<leader>y", "<Cmd>lua require('vscode').call('multiclip.list')<CR>")
    -- map("x", "<leader>y", "<Cmd>lua require('vscode').call('multiclip.list')<CR>")

    -- Copilot chat
    map("n", "<leader>aa", "<Cmd>lua require('vscode').call('workbench.panel.chat.view.copilot.focus')<CR>")
    map("x", "<leader>aa", "<Cmd>lua require('vscode').call('workbench.panel.chat.view.copilot.focus')<CR>")

    -- Collapse
    map("n", "zc", "<Cmd>lua require('vscode').call('editor.fold')<CR>")
    map("x", "zc", "<Cmd>lua require('vscode').call('editor.fold')<CR>")

    map("n", "zo", "<Cmd>lua require('vscode').call('editor.unfold')<CR>")
    map("x", "zo", "<Cmd>lua require('vscode').call('editor.unfold')<CR>")

    map("n", "zM", "<Cmd>lua require('vscode').call('editor.foldAll')<CR>")
    map("x", "zM", "<Cmd>lua require('vscode').call('editor.foldAll')<CR>")

    map("n", "zR", "<Cmd>lua require('vscode').call('editor.unfoldAll')<CR>")
    map("x", "zR", "<Cmd>lua require('vscode').call('editor.unfoldAll')<CR>")
end
