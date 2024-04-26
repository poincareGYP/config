vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- vanilla vim mapping
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- NvimTree mapping 
vim.keymap.set('n', '<C-]>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<C-[>', ':NvimTreeFindFile<CR>')
vim.keymap.set('n', '<C-\\>', ':NvimTreeClose<CR>')

-- git config for fugitive and gitsigns 
vim.keymap.set('n', '<leader>gs', ':Git status<CR>')
vim.keymap.set('n', '<leader>ga', ':Git add<CR>')
vim.keymap.set('n', '<leader>gc', ':Git commit<CR>')
vim.keymap.set('n', '<leader>gb', ':Gitsigns blame_line<CR>')
vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>')
vim.keymap.set('n', '<leader>gk', ':Gitsigns prev_hunk<CR>')
vim.keymap.set('n', '<leader>gj', ':Gitsigns next_hunk<CR>')
