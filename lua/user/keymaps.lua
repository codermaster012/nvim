-- shortcuts to writemmappings faster
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local map = vim.keymap.set

-- vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- faster switch to normal mode 
map("i", "jk", "<ESC>", opts)

-- map find word to ctrl+f
map("i", "<C-F>", ":/", opts)

-- map delete previous word to ctrl+backspace 
map("i", "<C-BS>", "<C-w>", opts)

-- Nvim-Tree
map('n', '<leader>e', ":NvimTreeToggle<CR>", opts)

-- resize windows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Right>", ":vertical resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize +2<CR>", opts)

-- better window movement
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- tab management
map("n", "to", ":tabnew<CR>", opts)
map("n", "tl", ":bnext<CR>", opts)
map("n", "th", ":bprev<CR>", opts)
map("n", "td", ":Bdelete<CR>", opts)

-- navigate long lines
map("n", "j", "gj", opts)
map("n", "k", "gk", opts)

-- Alpha
map("n", "<leader>hh", ":Alpha<CR>", opts)
map("n", "<leader>hs", "AlphaRedraw<CR>", opts)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>ft", ":Telescope help_tags<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fo", ":Telescope oldfiles<CR>", opts)

-- Terminal
map("n", "<leader>ot", ':ToggleTerm<CR>', opts)

-- Bufferline
map("n", "<leader>bg", ":BufferlineGoToBuffer", opts)

-- Zen-Mode
map("n", "<leader>z", ":ZenMode <CR>", opts)
