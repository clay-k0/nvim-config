-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })
vim.keymap.set("n", "<C-\\>", "<Cmd>NvimTmuxNavigateLastActive<CR>", { silent = true })
vim.keymap.set("n", "<C-Space>", "<Cmd>NvimTmuxNavigateNavigateNext<CR>", { silent = true })
-- vim.keymap.set("i", '"', '"', { noremap = true })
-- vim.keymap.set("i", "`", "`", { noremap = true })
-- vim.keymap.set("i", "'", "'", { noremap = true })
vim.keymap.set("n", "<Space>md", ":MarkdownPreview<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Space>mds", ":MarkdownPreviewStop<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", ":bd<CR>", { noremap = true })

vim.keymap.set("n", "<C-q>", function()
  local current_buf = vim.api.nvim_get_current_buf()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if buf ~= current_buf and vim.api.nvim_buf_is_loaded(buf) then
      vim.api.nvim_buf_delete(buf, { force = true })
    end
  end
end, { noremap = true, desc = "Close all buffers except the current one" })
