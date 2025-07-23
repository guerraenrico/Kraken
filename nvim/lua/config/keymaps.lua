-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

vim.keymap.set(
  "n",
  "<leader>pr",
  ':lua require("telescope.builtin").lsp_references()<CR>',
  { noremap = true, silent = true }
)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<{>", "<{>zz")
vim.keymap.set("n", "<}>", "<}>zz")
vim.keymap.set("n", "<F7>", ":vimgrep <cword> **/*.ts")
vim.keymap.set("n", "<F6>", ":cn<CR>")
vim.keymap.set("n", "<F5>", ":cp<CR>")

local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)

vim.keymap.set("n", "<C-h>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-1>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-2>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-3>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-4>", function()
  harpoon:list():select(4)
end)

vim.keymap.set("n", "<F10>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<F12>", function()
  harpoon:list():next()
end)
