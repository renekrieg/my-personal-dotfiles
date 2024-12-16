return {
  'catppuccin/nvim',
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    transparent_background = true,
    -- Load the colorscheme
    vim.cmd.colorscheme "catppuccin-mocha"

    -- Toggle background transparency
    local bg_transparent = true

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      transparent_background  = bg_transparent
      vim.cmd.colorscheme "catppuccin-mocha" 
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}
