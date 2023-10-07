local status, onedark = pcall(require, "onedark")
if (not status) then return end

onedark.setup({
  style = 'deep',
  transparent = true,
  lualine = {
    transparent = true,
  }
})

onedark.load()
