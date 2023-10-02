return {
	vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);

	-- Enables us to move and indent/outdent code in visual mode
	vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");
	vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");

	-- When appending bottom line, we do not jump to the end, but cursor stays still
	vim.keymap.set("n", "J", "mzJ`z");

	--When scrolling by half page, the half page jump lands in the middle of the page, not bottom or top.
	vim.keymap.set("n", "<C-d>", "<C-d>zz");
	vim.keymap.set("n", "<C-u>", "<C-u>zz");

	--When searching a file for search terms, the searched for term stays in the middle
	vim.keymap.set("n", "n", "nzzzv");
	vim.keymap.set("n", "N", "Nzzzv");

	--Find and replace
	vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]);

	--Copy to system clipboard
	vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]);
	vim.keymap.set("n", "<leader>Y", [["+Y]]);
}
