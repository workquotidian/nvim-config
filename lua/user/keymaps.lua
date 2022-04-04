local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Insert --
-- Press jk fast to enter
--keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- trouble
keymap("n", "<leader>xx", "<cmd>Trouble<cr>", opts)
keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", opts)
keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", opts)
keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", opts)
keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", opts)

keymap("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", opts)
keymap("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", opts)

-- lir
keymap("n", "-", ":lua require'lir.float'.toggle()<cr>", opts)

--barbar(buffer line)

-- Move to previous/next
keymap("n", "<s-Tab>", ":BufferPrevious<CR>", opts)
keymap("n", "<tab>", ":BufferNext<CR>", opts)

-- Re-order to previous/next
keymap("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
keymap("n", "<A->>", " :BufferMoveNext<CR>", opts)

-- Goto buffer in position...
keymap("n", "<leader>1", ":BufferGoto 1<CR>", opts)
keymap("n", "<leader>2", ":BufferGoto 2<CR>", opts)
keymap("n", "<leader>3", ":BufferGoto 3<CR>", opts)
keymap("n", "<leader>4", ":BufferGoto 4<CR>", opts)
keymap("n", "<leader>5", ":BufferGoto 5<CR>", opts)
keymap("n", "<leader>6", ":BufferGoto 6<CR>", opts)
keymap("n", "<leader>7", ":BufferGoto 7<CR>", opts)
keymap("n", "<leader>8", ":BufferGoto 8<CR>", opts)
keymap("n", "<leader>9", ":BufferGoto 9<CR>", opts)
keymap("n", "<leader>0", ":BufferLast<CR>", opts)

-- Close buffer
keymap("n", "<leader>c", ":BufferClose<CR>", opts)
-- Wipeout buffer
--:BufferWipeout<CR>
-- Close commands

keymap("n", "<leader>x", ":BufferCloseAllButCurrent<CR>", opts)
keymap("n", "<leader>d", ":BufferCloseBuffersLeft<CR>", opts)
keymap("n", "<leader>r", ":BufferCloseBuffersRight<CR>", opts)

keymap("n", "<C-p>", ":BufferPick<CR>", opts)
-- Sort automatically by...
-- keymap("n", "<Space>bb", ":BufferOrderByBufferNumber<CR>", opts)
-- keymap("n", "<Space>bd", ":BufferOrderByDirectory<CR>", opts)
-- keymap("n", "<Space>bl", ":BufferOrderByLanguage<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
