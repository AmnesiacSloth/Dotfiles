return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'gruvbox_dark',
      -- supposed to leave a full line at the bottom of nvim?
      globalstatus = true,
    },
    sections = {
      lualine_x = { 'lsp_status', 'filetype', 'fileformat' },
    },
  },
}
