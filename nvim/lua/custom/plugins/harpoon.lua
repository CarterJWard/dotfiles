return {
	'ThePrimeagen/harpoon',
	config = function ()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<leader>ha", mark.add_file, {desc = "Add to harpoon"})
		vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, {desc ="Open Harpoon menu"})

		vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
		vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
		vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
		vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)
		vim.keymap.set("n", "<leader>hn", function() ui.nav_next() end, {desc = "Next Harpoon Item"})
		vim.keymap.set("n", "<leader>hl", function () ui.nav_prev() end, {desc = "Prev Harpoon Item"})
	end
}
