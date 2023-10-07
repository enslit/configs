local status, colors = pcall(require, "lsp-colors")
if (not status) then return end

colors.setup {
  Error = "#db2b2b",
  Warning = "#dba320",
  Information = "#0db9d7",
  Hint = "#10B981"
}
