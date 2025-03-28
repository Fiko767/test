local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.autoindent = true

_G.map = function(mode, lhs, rhs, opts) vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", { silent = true }, opts or {})) end

-- Keybinds
map("n", "<leader>w", ":w<CR>") 
map("n", "<leader>q", ":q<CR>") 
map("n", "<leader>x", ":wq<CR>") 

require("lazy").setup("plugins")

return {}
