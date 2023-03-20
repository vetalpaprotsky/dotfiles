local keymap = vim.api.nvim_set_keymap -- Accepts string as remap.
local keymap_f = vim.keymap.set -- Accepts function as remap.
local opts = { noremap = true, silent = true }

-- Remap space as leader key.
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes:
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"

-- Better window navigation.
-- vim-tmux-navigator plugin adds these remaps, that's why they're commented.
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows.
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers.
keymap("n", "¬", ":bnext<CR>", opts)     -- ALT + l on Mac.
keymap("n", "˙", ":bprevious<CR>", opts) -- ALT + h on Mac.

-- Move line up and down.
keymap("n", "∆", ":m+1<CR>", opts) -- ALT + j on Mac.
keymap("n", "˚", ":m-2<CR>", opts) -- ALT + k on Mac.

-- Press jk fast to exit insert mode.
keymap("i", "jk", "<ESC>", opts)

-- Stay in indent mode.
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Dark magic which makes copy-paste experience better.
keymap("v", "p", '"_dP', opts)

-- Go to normal mode from terminal mode.
keymap("t", "<C-n>", "<C-\\><C-n>", opts)

-- Open terminal in terminal mode right away.
keymap("n", "<leader>tt", ":term<CR> :startinsert<CR>", opts)

-- Delete current buffer.
keymap("n", "<leader>bb", ":bd<CR>", opts)
-- Delete current buffer even if it's not safed.
keymap("n", "<leader>bd", ":bd!<CR>", opts)
-- Delete all buffers.
keymap("n", "<leader>bad", ":%bd<CR>", opts)

-- Vim Test
keymap("n", "<leader>tn", ":TestNearest<CR>", opts)
keymap("n", "<leader>tf", ":TestFile<CR>", opts)
keymap("n", "<leader>tl", ":TestLast<CR>", opts)

-- Git Signs
keymap("n", "<leader>gv", ":Gitsigns preview_hunk<CR>", opts)
keymap("n", "<leader>gn", ":Gitsigns next_hunk<CR>", opts)
keymap("n", "<leader>gb", ":Gitsigns blame_line<CR>", opts)
keymap("n", "<leader>gp", ":Gitsigns prev_hunk<CR>", opts)
keymap("n", "<leader>gd", ":Gitsigns diffthis<CR>", opts)
keymap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", opts)

-- Telescope
local tel_builtin = require("telescope.builtin")
local tel_themes = require("telescope.themes")
local tel_find_files = function ()
  tel_builtin.find_files(tel_themes.get_dropdown({ previewer = false }))
end
local tel_live_grep = function ()
  tel_builtin.live_grep(tel_themes.get_dropdown())
end
local tel_buffers = function ()
  tel_builtin.buffers(tel_themes.get_dropdown())
end
local tel_lsp_references = function ()
  tel_builtin.lsp_references(tel_themes.get_dropdown())
end
local tel_grep_string = function ()
  tel_builtin.grep_string(tel_themes.get_dropdown())
end
keymap_f("n", "<leader>ff", tel_find_files, opts)
keymap_f("n", "<leader>fg", tel_live_grep, opts)
keymap_f("n", "<leader>fb", tel_buffers, opts)
keymap_f("n", "<leader>fr", tel_lsp_references, opts)
keymap_f("n", "<leader>fs", tel_grep_string, opts)

-- Diagnostics
keymap_f("n", "<leader>do", vim.diagnostic.open_float, opts)
keymap_f("n", "<leader>dp", vim.diagnostic.goto_prev, opts)
keymap_f("n", "<leader>dn", vim.diagnostic.goto_next, opts)
keymap_f("n", "<leader>dl", vim.diagnostic.setloclist, opts)

-- Nvim Tree
keymap("n", "<leader>ee", ":NvimTreeFindFileToggle<CR>", opts)
keymap("n", "<leader>ec", ":NvimTreeCollapse<CR>", opts)

-- FTerm
keymap("n", "…", ":lua require('FTerm').toggle()<CR>", opts) -- ALT + ; on Mac.
keymap("t", "…", "<C-\\><C-n>:lua require('FTerm').toggle()<CR>", opts) -- ALT + ; on Mac.
