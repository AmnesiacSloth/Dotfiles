-- Vesper theme
return {
  'luisiacc/gruvbox-baby',
  priority = 1000,
  config = function()
    -- Enable telescope theme
    -- vim.g.gruvbox_baby_telescope_theme = 1

    vim.cmd.colorscheme 'gruvbox-baby'
  end,
}
