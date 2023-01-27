local opt = vim.opt
local g = vim.g

g.vim_version = vim.version().minor

--[[ vim commands --]]
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
vim.cmd("set autochdir")
vim.cmd("syntax on")
vim.cmd("set nobackup")

-- for vimtex specifically
vim.cmd("filetype plugin indent on")

g.vimtex_view_method = 'zathura'
g.vimtex_compiler_method = 'latexmk'

-- use filetype.lua instead of filetype.vim. it's enabled by default in neovim 0.8 (nightly)
if g.vim_version < 8 then
  g.did_load_filetypes = 0
  g.do_filetype_lua = 1
end

opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.title = true
opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Indenting
-- opt.expandtab = true
opt.shiftwidth = 4
-- opt.smartindent = true
-- opt.tabstop = 4
-- opt.softtabstop = 4

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 200 
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- neovide font
opt.guifont = { "Hack", ":h8.5" }

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"
