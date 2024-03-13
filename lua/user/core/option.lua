
local opt = vim.opt

opt.smartindent = true -- make indenting smarter again
opt.autoindent = true -- make indenting same as line above
opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
opt.tabstop = 4 -- insert 4 spaces for a tab
opt.numberwidth = 4 -- set number column width to 2 {default 4}
opt.cursorline = true -- highlight the current line
opt.number = true -- set numbered lines
opt.relativenumber = true -- set relative numbered lines
