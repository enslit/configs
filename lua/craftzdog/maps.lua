local keymap = vim.keymap

-- vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = " "

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
keymap.set('n', 'sc', '<C-w>q')
-- Move window
keymap.set('n', '<leader>w', '<C-w>w')
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Move in insert mode
keymap.set('i', '<C-h>', '<C-w>h')
keymap.set('i', '<C-j>', '<C-w>j')
keymap.set('i', '<C-k>', '<C-w>k')
keymap.set('i', '<C-l>', '<C-w>l')

-- Lazydocker
keymap.set("n", "<A-d>", "<cmd>LazyDocker<CR>", { desc = "Toggle LazyDocker", noremap = true, silent = true })

-- Lazygit
keymap.set("n", "<A-g>", "<cmd>LazyGit<CR>", { desc = "Toggle LazyGit", noremap = true, silent = true })

-- keymap.set('n', '<C-s>', "<cmd>:w<CR>", { desc = "Save file", noremap = true, silent = true })

-- Movement selected lines
keymap.set('n', '<A-j>', ':m .+1<CR>==')
keymap.set('n', '<A-k>', ':m .-2<CR>==')
keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi')
keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")
keymap.set('v', "p", "_dP")

keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

keymap.set('n', "<leader>n", "<cmd> set nu! <CR>", { desc = "Toggle line number" })
keymap.set('n', "<leader>rn", "<cmd> set rnu! <CR>", { desc = "Toggle relative number" })

-- Search and Replace
keymap.set('n', '<Leader>s', ":%s/\\<<C-r><C-w>\\>/")

-- LSP Formatting
keymap.set(
  'n',
  "<leader>fm",
  function()
    vim.lsp.buf.format { async = true }
  end,
  {
    desc = "LSP formatting"
  }
)
