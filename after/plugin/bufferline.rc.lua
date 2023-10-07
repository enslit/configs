local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<Leader>x', '<Cmd>BufferLinePickClose<CR>', {})
vim.keymap.set(
  'n',
  '<Leader>X',
  function()
    for _, e in ipairs(bufferline.get_elements().elements) do
      vim.schedule(function()
        vim.cmd("bd " .. e.id)
      end)
    end
  end,
  {}
)
