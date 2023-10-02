-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See thhe kickstart.nvim README for more information
-- require 'custom.plugins.config'
return {
	"theprimeagen/harpoon",
	require("harpoon").setup({
		menu = {
			width = vim.api.nvim_win_get_width(0) - 30,
		}
	})
}
