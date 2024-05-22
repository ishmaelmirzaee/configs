function ColorMyPencils()
	color = "aura-dark"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normnal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormnalFloat", { bg = "none" })
end

ColorMyPencils()
