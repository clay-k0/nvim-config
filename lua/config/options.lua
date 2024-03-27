-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.gruvbox_material_background = "soft"
vim.g.gruvbox_transparent_background = 2

vim.api.nvim_command([[autocmd FileType markdown syntax region match start=/\\$\\$/ end=/\\$\\$/]])
vim.api.nvim_command([[autocmd FileType markdown syntax match math '\\$[^$].\{-}\$']])
