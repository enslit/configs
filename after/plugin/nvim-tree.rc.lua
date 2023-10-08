local status, tree = pcall(require, "nvim-tree")
if (not status) then return end

vim.keymap.set('n', "<leader>e", "<cmd> NvimTreeFocus <CR>", { desc = "Toggle nvimtree" })
vim.keymap.set('n', "<leader>E", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle nvimtree" })

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = false, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', 'sl', '<C-w>l', opts(''))
end

tree.setup({
  on_attach = my_on_attach,
  sort_by = "case_sensitive",
  view = {
    width = 30,
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
