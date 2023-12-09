local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Directory Navifation
keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", opts)

-- Buffer Navigation
keymap.set("n", "<leader>bn", ":bnext", opts) -- Next buffer
keymap.set("n", "<leader>bp", ":bprevious", opts) -- Prev buffer
keymap.set("n", "<leader>bb", ":e #", opts) -- Switch to Other Buffer
keymap.set("n", "<leader>`", ":e #", opts) -- Switch to Other Buffer

-- Pane and Window Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right
keymap.set("t", "<C-h>", ":wincmd h", opts) -- Navigate Left
keymap.set("t", "<C-j>", ":wincmd j", opts) -- Navigate Down
keymap.set("t", "<C-k>", ":wincmd k", opts) -- Navigate Up
keymap.set("t", "<C-l>", ":wincmd l", opts) -- Navigate Right
keymap.set("n", "<C-h>", ":TmuxNavigateLeft", opts) -- Navigate Left
keymap.set("n", "<C-j>", ":TmuxNavigateDown", opts) -- Navigate Down
keymap.set("n", "<C-k>", ":TmuxNavigateUp", opts) -- Navigate Up
keymap.set("n", "<C-l>", ":TmuxNavigateRight", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit", opts) -- Split Vertically
keymap.set("n","<leader>sh", ":split", opts) -- Split Horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle", opts) -- Toggle Minimise

-- Show Full File-Path
keymap.set("n", "<leader>pa", "echo expand('%:p')", opts) -- Show Full File Path

keymap.set("v", ">", ">gv")
keymap.set("v", "<", "<gv")

vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {noremap = false})
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", {noremap = false})
