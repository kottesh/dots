-- Map leader to <space>
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

local map = vim.keymap.set
-- type `:h vim.keymap.set` for info

-- Modes
    -- normal_mode = "n"
    -- insert_mode = "i"
    -- visual_mode = "v"
    -- visual_block_mode = "x"
    -- term_mode = "t"
    -- command_mode = "c"

-- <cr> & <Return> are same.

map("n", "<leader>w", "<cmd>w<Return>")
map("n", "<leader>e", ":Lex 40<Return>")

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- <C-c> & <C-v> from system clip
map({ "n", "x" }, "gy", '"+y')
map({ "n", "x" }, "gp", '"+p')

-- don't change paste register with replaced text 
map("v", "p", '"_dP"', opts)

-- Switching buffers
map("n", "<S-l>", "bnext<Return>", opts)
map("n", "<S-h>", "bprev<Return>", opts)

-- Stay in visual mode while doing indent
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- MOVING TEXT 
-- single line 
map("n", "<A-j>", ":m .+1<Return>==", opts)
map("n", "<A-k>", ":m .-2<Return>==", opts)

-- moving block of text in visual mode
map("v", "J", ":m '>+1<Return>gv-gv", opts)
map("v", "K", ":m '<-2<Return>gv-gv", opts)

-- Tabs
map("n", "te", ":tabedit ")
map("n", "<tab>", ":tabnext<Return>", opts)
map("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split windows 
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

-- Window management 
map("n", "sh", "<C-w>h")
map("n", "sj", "<C-w>j")
map("n", "sk", "<C-w>k")
map("n", "sl", "<C-w>l")

-- Resize window
map("n", "<C-up>", "<C-w>2+")
map("n", "<C-down>", "<C-w>2-")
map("n", "<C-left>", "<C-w>2>")
map("n", "<C-right>", "<C-w>2<")
