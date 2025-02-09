
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Ex<CR>") 

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz") 
vim.keymap.set("n", "<C-u>", "<C-u>zz") 
vim.keymap.set("n", "<{>", "<{>zz") 
vim.keymap.set("n", "<}>", "<}>zz") 
vim.keymap.set("n", "<F7>", ":vimgrep <cword> **/*.ts") 
vim.keymap.set("n", "<F6>", ":cn<CR>") 
vim.keymap.set("n", "<F5>", ":cp<CR>") 
