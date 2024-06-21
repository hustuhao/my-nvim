-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
local map = vim.api.nvim_set_keymap

-- vim.g.mapleader = "\\"
-- vim.g.maplocalleader = "\\"

map('n', '<leader>t', ':NvimTreeToggle', opts)
map('n', '<leader>tf', '<Esc>:NvimTreeFindFile<CR>', opts)
map('n', '<F5>', '<Esc>:tabnew<CR>', opts)
map('n', '<leader>te', '<Esc>:FloatermToggle<CR>', opts)
map('n', '<leader>g', '<Esc>:CocCommand git.showBlameDoc<CR>', opts)
map('v', '<C-c>', '"+y', opts)
map('n', '<C-v>', '"*p', opts)

--按键设置
vim.api.nvim_set_keymap("n", "<leader>ff", [[<cmd>lua require('telescope.builtin').find_files()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fg", [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fb", [[<cmd>lua require('telescope.builtin').buffers()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fh", [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>ma", [[<cmd>Telescope vim_bookmarks current_file<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>mA", [[<cmd>Telescope vim_bookmarks all<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fo", [[<cmd>Telescope oldfiles theme=dropdown previewer=false<cr>]], {})
