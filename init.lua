if not vim.g.vscode then
	require("options")
	require("plugins")
	require("lsp")
	require("nvim-dap")
	require("statusline")
	require("theme")
	require("telescope_cfg")
	require("treesitter")
	require("other-plugins")
end
