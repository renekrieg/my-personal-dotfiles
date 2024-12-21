return {
	"akinsho/bufferline.nvim",
	after = "cattpuccin",
	dependencies = {
		"moll/vim-bbye",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				mode = "buffers",
				-- diagnostics = 'coc',
				themable = true,
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true,
						padding = 1,
					},
				},
				highlights = {
					fill = {
						ctermbg = 9,
						ctermfg = 0,
					},
				},
			},
		})
	end,
}
