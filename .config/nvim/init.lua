vim.g.mapleader = "<Space>"

-- lazy.nvim
require("config.lazy")

-- line numbering
vim.o.number = true 
vim.o.relativenumber = true 

-- cursor column and line highlighting
vim.o.cursorline = true
vim.o.cursorcolumn = true

-- searching
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.showmatch = true
vim.o.hlsearch = true

-- tabulation
vim.o.sw = 4
vim.o.ts = 4
vim.o.sts = 4
vim.o.expandtab = true

-- miscellaneous
vim.o.showmode = true
vim.o.showcmd = true
vim.g.filetype = true
vim.g.python3_host_prog = "/usr/bin/python3"

-- folding
vim.o.foldmethod = "marker"

-- keymaps
local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }
keymap('n', '<Up>', '<Nop>', opts)
keymap('n', '<Down>', '<Nop>', opts)
keymap('n', '<Left>', '<Nop>', opts)
keymap('n', '<Right>', '<Nop>', opts)
keymap('v', '.', ':norm.<CR>', opts)
keymap('n', 'o', 'o<Esc>', opts)
keymap('n', 'O', 'O<Esc>', opts)
keymap('n', '<Leader>b', ':buffers<CR>:buffer<Space>', opts)
keymap('n', '<Leader>ai', 'mzgg=G`z', opts)
keymap('n', '<Leader>h', ':nohl<CR>', opts)
keymap('t', '<Esc>', '<C-\\><C-n>', opts)
keymap({'n', 'v'}, 'ge', 'G', opts)
keymap({'n', 'v'}, 'gs', '^', opts)
keymap({'n', 'v'}, 'gh', '0', opts)
keymap({'n', 'v'}, 'gl', '$', opts)
keymap({'n', 'v'}, 'gm', '%', opts)

-- statusline
vim.o.laststatus = 2

local function statusline()
    local filename = "%f"
    local modified = "%m"
    local align = "%="
    local filetype = "%y"
    local percentage = "%p%%"
    local linecol = "%l:%c"
    return string.format(
    "%s %s%s%s %s %s",
    filename,
    modified,
    align,
    filetype,
    percentage,
    linecol
    )
end

vim.o.statusline = statusline()

-- theme
vim.cmd.colorscheme "catppuccin"

-- plugin stuff
require('Comment').setup()
